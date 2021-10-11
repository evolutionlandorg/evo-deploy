.PHONY: all clean test deploy proxy flat
.PHONY: pre-4 solc-4 pre-5 solc-5 pre-6 solc-6 pre-7 solc-7
.PHONY:	build-apostle build-common build-land build-market build-token 
.PHONY: build-staker build-multicall build-zapper
.PHONY: build-furnace build-raffle build-pve build-landrs
.PHONY: build-governance

SUBDIRS = apostle common-contracts furnace governance land market-contracts token-contracts
DAPP_LIB = lib/

all: pre-4 solc-4 pre-5 solc-5 pre-6 solc-6 pre-7 solc-7

pre-4:
	@nix-env -f https://github.com/dapphub/dapptools/archive/master.tar.gz -iA solc-static-versions.solc_0_4_24

pre-5:
	@nix-env -f https://github.com/dapphub/dapptools/archive/master.tar.gz -iA solc-static-versions.solc_0_5_16

pre-6:
	@nix-env -f https://github.com/dapphub/dapptools/archive/master.tar.gz -iA solc-static-versions.solc_0_6_7

pre-7:
	@nix-env -f https://github.com/dapphub/dapptools/archive/master.tar.gz -iA solc-static-versions.solc_0_7_6

solc-4: build-apostle build-common build-land build-market build-token

solc-5: build-staker build-multicall build-zapper

solc-6: build-furnace build-raffle build-pve build-landrs proxy

solc-7: build-governance

proxy:
	@source .env && dapp build

build-apostle:
	@cd lib/apostle && (MAKE)

build-common:
	@cd lib/common-contracts && (MAKE)

build-land:
	@cd lib/land && (MAKE)

build-market:
	@cd lib/market-contracts && (MAKE)

build-token:
	@cd lib/token-contracts && (MAKE)

build-furnace:
	@cd lib/furnace && (MAKE)

build-governance:
	@cd lib/governance && (MAKE)

build-raffle:
	@cd lib/raffle && (MAKE)

build-staker:
	@cd lib/staker && (MAKE)

build-multicall:
	@cd lib/multicall && (MAKE)

build-zapper:
	@cd lib/zapper && (MAKE)

build-pve:
	@cd lib/pve && (MAKE)

build-landrs:
	@cd lib/landrs && (MAKE)

clean   :
	source .env && dapp clean
	for dir in $(SUBDIRS); do \
		$(MAKE) -C $$DAPP_LIB$$dir clean ; \
	done

test    : dapp test
flat	:
	@source .env && dapp flat
deploy  :
	make all && bash bin/deploy/deploy-all
