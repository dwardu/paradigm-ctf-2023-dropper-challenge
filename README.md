# Solidity solution to Paradigm CTF 2023 Dropper challenge

The [Challenge](./challenge/project/src/Challenge.sol) contract invokes the solution contract to airdrop random amounts of ETH, ERC-20 tokens and ERC-721 NFTs to random addresses. The objective is to develop a solution contract that can perform the airdrop using minimal gas.

My submitted score: 1319998

Best score post-CTF, using [this trick](https://twitter.com/orenyomtov/status/1718856711887339863): 1296955

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
  *1319998 |    11 | if-condition order makes a tiny difference
  1296955 | 23043 | [Trick from curta team](https://twitter.com/orenyomtov/status/1718856711887339863) to use `selfdestruct` to send ETH cheaply

*My submitted score.

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

Further gas reductions could be made by writing the solution in a lower-level language like [Huff](https://huff.sh/) or in EVM bytecode directly.

Enjoy :)
