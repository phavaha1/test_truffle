pragma solidity ^0.5.8;


contract SimpleStorage {
  uint myVariable = 1000;
  event Odd();
  event Even();
  function set(uint x) public {
    myVariable = 2*x;
    if(x % 2 == 0){
      emit Even();
    }else{
      emit Odd();
    }
  }

  function get() public view returns (uint) {
    return myVariable;
  }
}
