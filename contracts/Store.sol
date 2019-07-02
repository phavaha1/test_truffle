pragma solidity ^0.5.8;

contract SimpleStorage {
  uint myVariable;

  function set(uint x) public {
    myVariable = x;
  }

  function get() public view returns (uint) {
    return myVariable;
  }
}