// SPDX-License-Identifier: UNLICENSED
pragma solidity =0.8.34;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20{
   constructor()ERC20("demo","dm"){
      
   }

   // function mintTokens() public {
   //    _mint(address(this),1000);
   // }
  
}