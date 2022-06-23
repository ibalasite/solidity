// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.7.4;
pragma experimental ABIEncoderV2;
contract Demo11 {
    int256[] public myArray;
    constructor(){
        myArray.push(100);
    }
    function addSomething() public {
        myArray.push(200);
        myArray.push(300);
        //modifyMemoryArray(myArray);
    }
    function modifyMemory() public view {
        modifyMemoryArray(myArray);
        
    }
     function modifyStorage() public  {
        modifyStorageArray(myArray);
        
    }
    function modifyMemoryArray(int256[] memory array) pure private{
         array[0]=5;
    }
    function modifyStorageArray(int256[] storage array)  private{
         array[0]=6;
    }
    function getArray() public view returns(int256[] memory) {
        return myArray;
    }
   }