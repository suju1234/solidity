// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;



contract MyToken {

    // public variables here
    string public tokenname="SUJAL";
    string public tokenabbrv="SJL";
    uint public totalsupply=5000;
    // mapping variable here
    mapping(address => uint)public balance;
    // mint function
    function mint(address mintaddr, uint  mintval)public {
      totalsupply += mintval;
      balance[mintaddr] += mintval;
   }
    // burn function
   function burn(address burnaddr, uint burnval)public {
      if(balance[burnaddr]>= burnval){
        totalsupply -= burnval;
        balance[burnaddr] -= burnval;
      }
     }
  }