// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {MyToken} from "../src/MyToken.sol";

contract MyHandler is Test {
    MyToken public token;
    address to = makeAddr("to");
    constructor(MyToken _token){
        token = _token;
    }

    function mintTokens(uint256 amount) public {
       token.mintMyTokens(amount);
    }

    function transferTokens(uint256 amount) public {
        token.transfer(to,amount);
    }
}
