# evo-deploy

### Addresses

#### Mainnet

- [ETH](./doc/mainnet/ETH.md)
- [Tron](./doc/mainnet/Tron.md)
- [Crab](./doc/mainnet/Crab.md)
- [Heco](./doc/mainnet/Heco.md)
- [Polygon](./doc/mainnet/Polygon.md)

#### Testnet

- [Ropsten](./doc/testnet/Ropsten.md)
- [Shasta](./doc/testnet/Shasta.md)
- [Crab Test](./doc/testnet/CrabTest.md)
- [Pangolin](./doc/testnet/Pangolin.md)
- [Heco Testnet](./doc/testnet/HecoTest.md)
- [Polygon Mumbai](./doc/testnet/Mumbai.md)
- [BSC Testnet](./doc/testnet/BSCTest.md)

## Deploy
### Prerequisites
- [dapp.tools](https://github.com/dapphub/dapptools)

### Install
```
git clone --recurse-submodules https://github.com/evolutionlandorg/evo-deploy.git
```

### Configuration
Example for `~/.sethrc`:
```sh
export ETH_FROM=0x...
export SETH_CHAIN=crab
export ETH_PASSWORD="/home/user/evo/pass.txt"
export ETH_KEYSTORE="/home/user/.ethereum/keystore"
export ETH_RPC_URL="https://crab-rpc.darwinia.network"
```

Example for `./.env`:
```sh
export DAPP_REMAPPINGS="zeppelin-solidity/=lib/zeppelin-solidity/contracts/"
export DAPP_SRC=src
```

### Build and deploy all
```
make && make deploy
```
