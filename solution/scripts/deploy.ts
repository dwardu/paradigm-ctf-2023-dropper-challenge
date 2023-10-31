import assert from 'assert';
import { ethers } from 'hardhat';
import { ChallengeLike__factory, DropperSolver__factory } from '../typechain-types';

async function main() {
  const CHALLENGE_ADDRESS = process.env.CHALLENGE;
  assert(CHALLENGE_ADDRESS);

  const [signer0] = await ethers.getSigners();

  const challenge = ChallengeLike__factory.connect(CHALLENGE_ADDRESS, signer0);

  const solver = await ethers.deployContract('DropperSolver');
  await solver.waitForDeployment();
  const solverAddress = await solver.getAddress();
  console.log(`Dropper-solver deployed to ${solverAddress}`);

  console.log('Running with helper solution to extract token and nft addresses...');
  await (await solver.presolve(CHALLENGE_ADDRESS)).wait();
  console.log(`token = ${await solver.token()}`);
  console.log(`nft   = ${await solver.nft()}`);

  console.log('Funding solver contract with ETH...');
  await (await signer0.sendTransaction({ to: solverAddress, value: 16n * ethers.parseEther('5') })).wait();

  console.log('Preparing access-list...');
  const data = DropperSolver__factory.createInterface().encodeFunctionData('solve', [CHALLENGE_ADDRESS]);

  // NOTE: without that 'pending' it will base it on the wrong block,
  // and the blockhash-dependent accessed locations will be totally different
  const { accessList } = await ethers.provider.send('eth_createAccessList', [{ to: solverAddress, data }, 'pending']);

  console.log('Solving...');
  await (await solver.connect(signer0).solve(CHALLENGE_ADDRESS, { accessList })).wait();

  console.log(`Dropper was deployed @ ${await solver.dropper()}`);
  console.log(`Best score:   ${await challenge.bestScore()}`);
  console.log(`Latest score: ${await challenge.latestScore()}`);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
