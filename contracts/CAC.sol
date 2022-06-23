// SPDX-License-Identifier: MIT
pragma solidity ^0.7.4;
contract CAC{
    struct SpendingRequest{
        string description;
        uint256 value;
        address payable vendorAccount;
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
    constructor(uint256 fund,address mgr) {
        manager = mgr; //msg.sender;
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
        address payable vendor
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
    function executeRequest(uint index) public restricted{
        SpendingRequest storage request = requests[index];

        require(!request.complete);
        require(request.approvalCount >= (approversCount/2));
        request.vendorAccount.transfer(request.value);
        request.complete = true;
    }

}

contract CommitteeCreator{
    CAC[] public deployedCommittee;
    function createCommittee(uint256 minimum) public {
        CAC newCommittee = new CAC(minimum,msg.sender);
        deployedCommittee.push(newCommittee);
    }
    function getDeployedCommittee() public view returns(CAC[] memory ){
        return deployedCommittee;
    }
}