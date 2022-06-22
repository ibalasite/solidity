pragma solidity ^0.5.16;

contract GMR {
    address public manager;
    address[] public players;
    constructor() public {
        manager = msg.sender;
    }
    function enterGame() public payable {
        //players.push(msg.sender);
        players.push(tx.origin);
    }
}
