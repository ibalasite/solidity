// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.7.4;

contract Demo6 {
    mapping(address=>uint256) public balances;
    constructor(){
        balances[address(this)]=10000;
    }
    function add100(address acc) public{
         balances[acc]+=100;
         balances[address(this)]-= 100;
    }
    function getWelcome() public {
        balances[msg.sender]+= 50;
    }
    function updateBalance(uint256 newBalance) public{
        balances[msg.sender]=newBalance;
    }
    function getExternalOwnedAccountBalance() public view returns(uint256) {
        return balances[msg.sender];
    }
    function getSelfBalance() public view returns(uint256){

        return balances[address(this)];
    }
    function getBalance(address acc) public view returns(uint256){
        return balances[acc];
    }
}