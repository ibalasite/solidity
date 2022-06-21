// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.7.4;
contract Demo8Balance {
    constructor() payable {
        
    }
    function getContractBalance() public view returns(uint){
        return address(this).balance;
    }
    function getEOABalance() public view returns(uint){
        return msg.sender.balance;
    }
}
