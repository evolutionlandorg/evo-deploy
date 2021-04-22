.PHONY: all clean test deploy 
.PHONY:	build-apostle build-common build-land build-market build-token

all     : build-apostle build-common build-land build-market build-token
	dapp --use solc:0.4.24 build
clean   :; dapp clean
test    :; dapp test
deploy  :; 
	bash bin/deploy/deploy-all

build-apostle :;
	cd lib/apostle && (MAKE)

build-common :;
	cd lib/common-contracts && (MAKE)

build-land :;
	cd lib/land && (MAKE)

build-market :;
	cd lib/market-contracts && (MAKE)

build-token :;
	cd lib/token-contracts && (MAKE)
