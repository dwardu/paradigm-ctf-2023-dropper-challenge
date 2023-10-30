# Solidity solution to Paradigm CTF 2023 Dropper challenge

The [Challenge](./challenge/project/src/Challenge.sol) contract invokes the solution contract to airdrop random amounts of ETH, ERC-20 tokens and ERC-721 NFTs to random addresses. The objective is to develop a solution contract that can perform the airdrop using minimal gas.

Best score: 1319998

Summary of optimizations:

Gas | Improvement | Description
---------:| ----------:| -----------
  1382995 |       | Naive implementation
  1380939 |  2056 | Configure compiler optimization for high runs
  1346939 | 34000 | Use access-list
  1337186 |  9753 | Avoid extra ERC20.transfer
  1334819 |  2367 | Avoid for-loops
  1322084 | 12735 | Precompute all random values and bake into Solver
  1322036 |    48 | payable functions slightly cheaper
  1320009 |  2027 | Use fallback function instead of individual functions
  1319998 |    11 | if-condition order makes a tiny difference

Gas improvements have been committed [one by one](https://github.com/dwardu/paradigm-ctf-2023-dropper-challenge/commits) to make it easy to follow the optimization process.

To run challenge environment:

```sh
cd challenge/project/
pkill -9 anvil
anvil --fork-url https://mainnet.infura.io/v3/******************************** --auto-impersonate
forge script --rpc-url http://127.0.0.1:8545 script/Deploy.s.sol:Deploy --broadcast --unlocked --sender $(cast az)
```

To test solution:

```sh
cd ../../solution/
npm install
npm run solve-local
```

There are probably some minor optimizations left to make, but to make any further _significant_ gas reductions,
the solution needs to be written in a lower-level language like [Huff](https://huff.sh/) or in EVM bytecode directly.

Enjoy :)
