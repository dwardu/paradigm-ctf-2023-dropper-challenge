# Solidity solution to Paradigm CTF 2023 Dropper challenge

Best score: 1382995

Gas improvements have been committed one by one to make it easy to follow the optimization process.

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

Enjoy :)
