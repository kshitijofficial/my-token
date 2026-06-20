// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {MyToken} from "../src/MyToken.sol";
import {MyHandler} from "./MyTokenHandler.sol";
import {StdInvariant} from "forge-std/StdInvariant.sol";

contract MyTokenInvariantTest is StdInvariant,Test {
    MyToken public token;
    MyHandler handler;

    function setUp() public {
        token = new MyToken();
    }

    function invariant_totalSupplyShouldBeZeroWhenNoMiniting() public view{
       assertEq(token.totalSupply(),0);
    }
}
