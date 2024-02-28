//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract MappingExample {
    //Define a mapping to store values associated with addresses
    mapping(address => uint256) public valueMapping;

    //Function to set a value for the sender address
    function setValue(uint256 _value) public {
        valueMapping[msg.sender] = _value;
    }

    // Function to retrieve the value associated with the sender address
    function getValue() public view returns (uint256) {
        return valueMapping[msg.sender];
    }
}