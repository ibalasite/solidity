pragma solidity ^0.5.16;
contract CAC{
    struct SpendingRequest{
        string description;
        uint256 value;
        address vendorAccount;
        bool complete;
    }
    SpendingRequest[] public requests;
    modifier restricted(){
        require(msg.sender==manager);
        _;
    }
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
    function createRequest(
        string memory des,
        uint256 value,
        address vendor
    ) public restricted {
        SpendingRequest memory req = SpendingRequest({
            description: des,
            value: value,
            vendorAccount: vendor,
            complete: false
        });
        requests.push(req);
    }

}