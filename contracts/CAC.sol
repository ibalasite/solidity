pragma solidity ^0.5.16;
contract CAC{
    address public manager;
    uint256 public minimumFund;
    address[] public approvers;
    constructor(uint256 fund) public{
        manager = msg.sender;
        minimumFund= fund;
    }
    function join() public payable{
        require(msg.value > minimumFund);
        approvers.push(msg.sender);

    }
}