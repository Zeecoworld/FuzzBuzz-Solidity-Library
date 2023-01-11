// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;


library FuzzBuzz {

  function fuzzbuzz(uint value1) internal pure returns(string memory) {

    if(value1 % 3 == 0){
         return "Divisible by 3!";

    }
    else if(value1 % 5 == 0){

      return "Divisible by 5!";

    }
    else{
      return "Sorry, please try again...";
    }
    
  }
  
}


// TESTING CASE FOR FUZZBUZZ LIBRARY

contract TestFuzzBuzz{
  function testfuzzbuzz(uint x) public pure returns(string memory) {
    
     return FuzzBuzz.fuzzbuzz(x);
    
  }
}