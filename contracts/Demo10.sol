// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.7.4;
contract Demo10 {
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
    function addOtherMemory() public view {
        int256[] memory myArray2 = myArray;
        myArray2[0]=666;
        //myArray2.push(555);
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
}