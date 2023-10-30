import assert from 'assert';
import { ethers } from 'hardhat';
import { ChallengeLike__factory } from '../typechain-types';

async function main() {
  const CHALLENGE_ADDRESS = process.env.CHALLENGE;
  assert(CHALLENGE_ADDRESS);

  const [signer0] = await ethers.getSigners();

  const challenge = ChallengeLike__factory.connect(CHALLENGE_ADDRESS, signer0);

  const solver = await ethers.deployContract('DropperSolver');
  await solver.waitForDeployment();
  const solverAddress = await solver.getAddress();
  console.log(`Dropper-solver deployed to ${solverAddress}`);

  console.log('Solving...');
  await (await solver.connect(signer0).solve(CHALLENGE_ADDRESS)).wait();

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
