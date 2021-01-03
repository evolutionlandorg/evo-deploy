all     :; dapp --use solc:0.4.24 build
clean   :; dapp clean
test    :; dapp test
deploy  :; 
	dapp create GOLD
link-tkn:;
	rm -rf 'src/token-contracts'
	mkdir -p 'src/token-contracts'
	ln -s $(PWD)/lib/token-contracts/flat/GOLD.f.sol $(PWD)/src/token-contracts/GOLD.f.sol
	ln -s $(PWD)/lib/token-contracts/flat/WOOD.f.sol $(PWD)/src/token-contracts/WOOD.f.sol
	ln -s $(PWD)/lib/token-contracts/flat/HHO.f.sol $(PWD)/src/token-contracts/HHO.f.sol
	ln -s $(PWD)/lib/token-contracts/flat/FIRE.f.sol $(PWD)/src/token-contracts/FIRE.f.sol
	ln -s $(PWD)/lib/token-contracts/flat/SIOO.f.sol $(PWD)/src/token-contracts/SIOO.f.sol
	ln -s $(PWD)/lib/token-contracts/flat/RING.f.sol $(PWD)/src/token-contracts/RING.f.sol
	ln -s $(PWD)/lib/token-contracts/flat/KTON.f.sol $(PWD)/src/token-contracts/KTON.f.sol
	ln -s $(PWD)/lib/token-contracts/flat/RINGAuthority.f.sol $(PWD)/src/token-contracts/RINGAuthority.f.sol
	ln -s $(PWD)/lib/token-contracts/flat/KTONAuthorityV2.f.sol $(PWD)/src/token-contracts/KTONAuthorityV2.f.sol

link-cmn:;
	rm -rf 'src/common-contracts'
	mkdir -p 'src/common-contracts'
	ln -s $(PWD)/lib/common-contracts/flat/LocationCoder.sol $(PWD)/src/common-contracts/LocationCoder.f.sol
	ln -s $(PWD)/lib/common-contracts/flat/TokenLocation.sol $(PWD)/src/common-contracts/TokenLocation.f.sol
	ln -s $(PWD)/lib/common-contracts/flat/InterstellarEncoderV3.sol $(PWD)/src/common-contracts/InterstellarEncoderV3.f.sol
	ln -s $(PWD)/lib/common-contracts/flat/SettingsRegistry.sol $(PWD)/src/common-contracts/SettingsRegistry.f.sol
	ln -s $(PWD)/lib/common-contracts/flat/ObjectOwnershipV2.sol $(PWD)/src/common-contracts/ObjectOwnershipV2.f.sol

link-lnd:;
	rm -rf 'src/land'
	mkdir -p 'src/land'
	ln -s $(PWD)/lib/land/flat/LandBase.sol $(PWD)/src/land/LandBase.f.sol
	ln -s $(PWD)/lib/land/flat/LandResourceV5.sol $(PWD)/src/land/LandResourceV5.f.sol

link-apo:;
	rm -rf 'src/apostle'
	mkdir -p 'src/apostle'
	ln -s $(PWD)/lib/apostle/flat/ApostleBaseV3.sol $(PWD)/src/apostle/ApostleBaseV3.f.sol
	ln -s $(PWD)/lib/apostle/flat/ApostleClockAuction.sol $(PWD)/src/apostle/ApostleClockAuction.f.sol
	ln -s $(PWD)/lib/apostle/flat/Gen0ApostleV2.sol $(PWD)/src/apostle/Gen0ApostleV2.f.sol
	ln -s $(PWD)/lib/apostle/flat/SiringClockAuctionV2.sol $(PWD)/src/apostle/SiringClockAuctionV2.f.sol

.PHONY: all clean test deploy link-tkn link-cmn
