// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.7.4;
pragma experimental ABIEncoderV2;
contract Demo11_edu {
    int256[] public myArray;
    constructor(){
        myArray.push(100);
    }
    function something() public {
        myArray.push(200);
        myArray.push(300);
        modifyArray(myArray);
    }
    function modifyArray(int256[] memory array) pure private {
        array[0]=666;
    }
    function something2() public {
        myArray.push(222);
        myArray.push(333);
        modifyArray2(myArray);
    }
    function modifyArray2(int256[] storage array)  private {
        array[0]=666;
    }
    function getArray() public view returns(int256[] memory) {
        return myArray;
    }
}