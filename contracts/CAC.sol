// SPDX-License-Identifier: MIT
pragma solidity ^0.7.4;
contract CAC{
    struct SpendingRequest{
        string description;
        uint256 value;
        address vendorAccount;
        bool complete;
        uint approvalCount;
        mapping(address=>bool) approvedUsers;
    }
    uint requestCount;
    mapping(uint=>SpendingRequest) public requests;
    //SpendingRequest[] public requests;
    modifier restricted(){
        require(msg.sender==manager);
        _;
    }
    address public manager;
    uint256 public minimumFund;
    uint public approversCount;
    mapping(address => bool) public approvers;
    constructor(uint256 fund) {
        manager = msg.sender;
        minimumFund= fund;
    }
    function join() public payable{
        require(msg.value > minimumFund);
        approvers[msg.sender] = true;
        approversCount++;
    }
    function createRequest(
        string memory des,
        uint256 value,
        address vendor
    ) public restricted {
        SpendingRequest storage req = requests[requestCount++];
        req.description = des;
        req.value =value;
        req.vendorAccount= vendor;
        req.complete =false;
        req.approvalCount = 0;
    }
    function approvalRequest(uint256 index) public {
        SpendingRequest storage request= requests[index];
        require(approvers[msg.sender]);
        require(!request.approvedUsers[msg.sender]);
        request.approvalCount++;
        request.approvedUsers[msg.sender]=true;
    }

}