pragma solidity ^0.5.8;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Store.sol";

contract TestSimpleStorage {

  function testInitialBalanceUsingDeployedContract() public {
    SimpleStorage store = SimpleStorage(DeployedAddresses.SimpleStorage());

    uint expected = 1000;

    Assert.equal(store.get(), expected, "store should have 1000 coin initially");
  }

  function testInitialBalanceWithNewMetaCoin() public {
    SimpleStorage store = new SimpleStorage();
    store.set(2000);
    uint expected = 2000;
    Assert.equal(store.get(), expected, "store should have 2000 coin initially");
  }

}