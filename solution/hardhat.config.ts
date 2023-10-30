import '@nomicfoundation/hardhat-toolbox';
import { type HardhatUserConfig } from 'hardhat/config';

const config: HardhatUserConfig = {
  solidity: {
    compilers: [
      {
        version: '0.8.22',
        settings: {
          optimizer: {
            enabled: true,
            runs: 100000
          },
          viaIR: false
        }
      }
    ]
  },
  networks: {
    anvil: {
      url: 'http://127.0.0.1:8545',
      accounts: [
        '0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80'
      ]
    },
    live: {
      url: 'http://dropper.challenges.paradigm.xyz:8545/97b95d56-b31d-457f-af0a-74d44ae38669/main',
      accounts: [
        '0x29ef3357a7439acbed2fc3ca144a4d5c43cd5bec5721e89470489081c03b5ec7'
      ]
    }
  }
};

export default config;
