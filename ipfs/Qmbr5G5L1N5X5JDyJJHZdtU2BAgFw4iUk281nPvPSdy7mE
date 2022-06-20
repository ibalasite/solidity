// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.4;
contract Demo1{
    string private message;
    constructor(string memory initialMessage){
        message = initialMessage;
    } 
    function setMessage(string memory newMessage) public{

        message = newMessage;
    }
    function getMessage() public view returns (string memory) {
        return message;
    }
    function setMessageAndReturn(string memory newValue) public returns(string memory) {
        message = newValue;
        return message;
    }
}