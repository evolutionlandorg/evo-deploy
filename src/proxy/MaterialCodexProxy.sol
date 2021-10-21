pragma solidity ^0.6.7;

import "zeppelin-solidity/proxy/TransparentUpgradeableProxy.sol";

contract MaterialCodexProxy is TransparentUpgradeableProxy {
	constructor(
		address _logic,
		address _admin,
		bytes memory _data
	) public payable TransparentUpgradeableProxy(_logic, _admin, _data) {}
}
