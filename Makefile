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
	ln -s $(PWD)/lib/common-contracts/flat/TokenUse.sol $(PWD)/src/common-contracts/TokenUse.f.sol
	ln -s $(PWD)/lib/common-contracts/flat/TokenUseAuthority.sol $(PWD)/src/common-contracts/TokenUseAuthority.f.sol
	ln -s $(PWD)/lib/common-contracts/flat/TokenLocation.sol $(PWD)/src/common-contracts/TokenLocation.f.sol
	ln -s $(PWD)/lib/common-contracts/flat/TokenLocationAuthority.sol $(PWD)/src/common-contracts/TokenLocationAuthority.f.sol
	ln -s $(PWD)/lib/common-contracts/flat/InterstellarEncoderV3.sol $(PWD)/src/common-contracts/InterstellarEncoderV3.f.sol
	ln -s $(PWD)/lib/common-contracts/flat/SettingsRegistry.sol $(PWD)/src/common-contracts/SettingsRegistry.f.sol
	ln -s $(PWD)/lib/common-contracts/flat/ObjectOwnershipV2.sol $(PWD)/src/common-contracts/ObjectOwnershipV2.f.sol
	ln -s $(PWD)/lib/common-contracts/flat/ERC721Bridge.sol $(PWD)/src/common-contracts/ERC721Bridge.f.sol
	ln -s $(PWD)/lib/common-contracts/flat/ERC721Adaptor.sol $(PWD)/src/common-contracts/ERC721Adaptor.f.sol
	ln -s $(PWD)/lib/common-contracts/flat/MintAndBurnAuthority.sol $(PWD)/src/common-contracts/MintAndBurnAuthority.f.sol
	ln -s $(PWD)/lib/common-contracts/flat/UserPoints.sol $(PWD)/src/common-contracts/UserPoints.f.sol
	ln -s $(PWD)/lib/common-contracts/flat/UserPointsAuthority.sol $(PWD)/src/common-contracts/UserPointsAuthority.f.sol

link-lnd:;
	rm -rf 'src/land'
	mkdir -p 'src/land'
	ln -s $(PWD)/lib/land/flat/LandBase.sol $(PWD)/src/land/LandBase.f.sol
	ln -s $(PWD)/lib/land/flat/LandResourceV4.sol $(PWD)/src/land/LandResourceV4.f.sol
	ln -s $(PWD)/lib/land/flat/LandBaseAuthority.sol $(PWD)/src/land/LandBaseAuthority.f.sol
	ln -s $(PWD)/lib/land/flat/MysteriousTreasure.sol $(PWD)/src/land/MysteriousTreasure.f.sol
	ln -s $(PWD)/lib/land/flat/MysteriousTreasureAuthority.sol $(PWD)/src/land/MysteriousTreasureAuthority.f.sol

link-apo:;
	rm -rf 'src/apostle'
	mkdir -p 'src/apostle'
	ln -s $(PWD)/lib/apostle/flat/ApostleBaseV3.sol $(PWD)/src/apostle/ApostleBaseV3.f.sol
	ln -s $(PWD)/lib/apostle/flat/ApostleBaseAuthorityV2.sol $(PWD)/src/apostle/ApostleBaseAuthorityV2.f.sol
	ln -s $(PWD)/lib/apostle/flat/ApostleClockAuction.sol $(PWD)/src/apostle/ApostleClockAuction.f.sol
	ln -s $(PWD)/lib/apostle/flat/ClockAuctionAuthority.sol $(PWD)/src/apostle/ClockAuctionAuthority.f.sol
	ln -s $(PWD)/lib/apostle/flat/Gen0ApostleV2.sol $(PWD)/src/apostle/Gen0ApostleV2.f.sol
	ln -s $(PWD)/lib/apostle/flat/SiringClockAuctionV2.sol $(PWD)/src/apostle/SiringClockAuctionV2.f.sol
	ln -s $(PWD)/lib/apostle/flat/PetBase.sol $(PWD)/src/apostle/PetBase.f.sol
	ln -s $(PWD)/lib/apostle/flat/PetBaseAuthority.sol $(PWD)/src/apostle/PetBaseAuthority.f.sol
	ln -s $(PWD)/lib/apostle/flat/ERC721BridgeAuthority.sol $(PWD)/src/apostle/ERC721BridgeAuthority.f.sol

link-mkt:;
	rm -rf 'src/market-contracts'
	mkdir -p 'src/market-contracts'
	ln -s $(PWD)/lib/market-contracts/flat/ClockAuctionV2.sol $(PWD)/src/market-contracts/ClockAuctionV2.f.sol
	ln -s $(PWD)/lib/market-contracts/flat/ClockAuctionAuthority.sol $(PWD)/src/market-contracts/ClockAuctionAuthority.f.sol
	ln -s $(PWD)/lib/market-contracts/flat/GenesisHolder.sol $(PWD)/src/market-contracts/GenesisHolder.f.sol
	ln -s $(PWD)/lib/market-contracts/flat/PointsRewardPool.sol $(PWD)/src/market-contracts/PointsRewardPool.f.sol
	ln -s $(PWD)/lib/market-contracts/flat/RevenuePoolV2.sol $(PWD)/src/market-contracts/RevenuePoolV2.f.sol
	ln -s $(PWD)/lib/market-contracts/flat/LuckyBox.sol $(PWD)/src/market-contracts/LuckyBox.f.sol

link-id :;
	rm -rf 'src/id'
	mkdir -p 'src/id'
	ln -s $(PWD)/lib/id/flat/DividendPool.sol $(PWD)/src/id/DividendPool.f.sol
	ln -s $(PWD)/lib/id/flat/FrozenDividend.sol $(PWD)/src/id/FrozenDividend.f.sol
	ln -s $(PWD)/lib/id/flat/RolesUpdater.sol $(PWD)/src/id/RolesUpdater.f.sol
	ln -s $(PWD)/lib/id/flat/UserRoles.sol $(PWD)/src/id/UserRoles.f.sol
	ln -s $(PWD)/lib/id/flat/UserRolesAuthority.sol $(PWD)/src/id/UserRolesAuthority.f.sol
	ln -s $(PWD)/lib/id/flat/RedBag.sol $(PWD)/src/id/RedBag.f.sol
	ln -s $(PWD)/lib/id/flat/TakeBack.sol $(PWD)/src/id/TakeBack.f.sol
	ln -s $(PWD)/lib/id/flat/TakeBackNFT.sol $(PWD)/src/id/TakeBackNFT.f.sol

link-bnk:;
	rm -rf 'src/bank'
	mkdir -p 'src/bank'
	ln -s $(PWD)/lib/bank/flat/GringottsBankV2.sol $(PWD)/src/bank/GringottsBankV2.f.sol

.PHONY: all clean test deploy link-tkn link-cmn link-id link-mkt link-bnc link-bnk
