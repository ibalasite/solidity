// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.7.4;
contract Demo10_edu {
    int256[] public myArray;
    constructor(){
        myArray.push(100);
    }
    function addSomething() public {
        myArray.push(200);
        myArray.push(300);
    }
    function addOtherStorage() public {
        int256[] storage myArray2 = myArray;
        myArray2[0]=888;
        myArray2.push(777);
    }
    function addOtherMemory() public view returns (int256[] memory) {
        int256[] memory myArray2 = myArray;
        myArray2[0]=666;
        return myArray2;
        //myArray2.push(555);
    }
    function returnArray1() public view returns(int256[] memory myArray2){
        myArray2 = myArray;
        myArray2[0]=555;
    }
    // function returnArray2() public view returns(int256[] storage myArray2){
    //     myArray2 = myArray2;
    //     return myArray2;
    // }
}