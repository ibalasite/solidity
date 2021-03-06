// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.7.4;

contract Demo3Storage {
    uint[5] public bid;
    uint[] public members = new uint[](5);
    function arrayInit() public {
        bid[0]=1;
        bid[1]=2;
        bid[2]=3;
        bid[3]=4;
        bid[4]=5;
        //bid[5]=6; //access outside the boundary  
    }
    function arrayInit2() public {
        members[0]=2;
        members[1]=4;
        members[2]=6;
        members[3]=8;
        members[4]=10;
        members.push(12);
        members.push(14);
        members.push(16);
    }
    function displayArray1() public view returns(uint[5] memory) {
        return bid;
    }
    function displayArray2() public view returns(uint[] memory) {
        return members;
    }
}