// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.7.4;
pragma experimental ABIEncoderV2;
contract Demo9 {

    string[] public myArray;
    constructor(){
        myArray.push("hi");
        myArray.push("hello");
        myArray.push("welcome");
    }
    function getArray() public view returns(string[] memory){
        return myArray;
    }
}