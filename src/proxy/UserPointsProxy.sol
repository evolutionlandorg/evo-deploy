pragma solidity 0.7.6;

import "zeppelin-solidity/proxy/TransparentUpgradeableProxy.sol";

contract UserPointsProxy is TransparentUpgradeableProxy {
	constructor(
		address _logic,
		address _admin,
		bytes memory _data
	) payable TransparentUpgradeableProxy(_logic, _admin, _data) {}
}
