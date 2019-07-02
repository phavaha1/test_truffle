pragma solidity ^0.5.8;


contract SimpleStorage {
  uint myVariable;
  event Odd();
  event Even();
  function set(uint x) public {
    myVariable = 2*x;
    if(x % 2 == 0){
      emit Odd();
    }else{
      emit Even();
    }
  }

  function get() public view returns (uint) {
    return myVariable;
  }
}
