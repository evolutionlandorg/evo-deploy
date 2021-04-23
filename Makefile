.PHONY: all clean test deploy 
.PHONY: pre-4 solc-4 pre-6 solc-6 pre-7 solc-7
.PHONY:	build-apostle build-common build-land build-market build-token proxy
.PHONY: build-furnace build-governance

SUBDIRS = apostle common-contracts furnace governance land market-contracts token-contracts
DAPP_LIB = lib/

all: pre-4 solc-4 pre-6 solc-6 pre-7 solc-7

pre-4:
	@nix-env -f https://github.com/dapphub/dapptools/archive/master.tar.gz -iA solc-static-versions.solc_0_4_24

pre-6: 
	@nix-env -f https://github.com/dapphub/dapptools/archive/master.tar.gz -iA solc-static-versions.solc_0_6_7

pre-7: 
	@nix-env -f https://github.com/dapphub/dapptools/archive/master.tar.gz -iA solc-static-versions.solc_0_7_6

solc-4: build-apostle build-common build-land build-market build-token proxy

solc-6: build-furnace

solc-7: build-governance

proxy: 
	@dapp --use solc:0.4.24 build

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

clean   : 
	@dapp clean
	for dir in $(SUBDIRS); do \
		$(MAKE) -C $$DAPP_LIB$$dir clean ; \
	done

test    : dapp test
deploy  : 
	@bash bin/deploy/deploy-all
