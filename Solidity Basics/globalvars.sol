//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract GlobalVariables { 
    function globalVar() external view returns (address, uint, uint) {
        address sender = msg.sender;
        uint timestamp = block.timestamp;
        uint blockNum = block.number;
        return (sender, timestamp, blockNum); 
    }
}
//This Solidity contract, GlobalVariables, has a function globalVar() that quickly provides the sender's address,
// current timestamp, and block number. It gives essential blockchain details in an instant.