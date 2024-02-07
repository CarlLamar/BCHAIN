// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract LocalVariables {
    uint public i;
    bool public b;
    address public myAddress;

    function foo() external{
        uint x = 123;
        bool f = false;
        x += 456;
        f = true;
        i = 123;
        b = true;
        myAddress = address(1);
    }
}

//"foo" is a function that quickly grabs and updates some small pieces of information 
//(x and f) before storing specific values in the main memory (i, b, and myAddress). 
//It's like a quick task showing how data is handled in the program.