pragma solidity ^0.5.16;

contract GMR {
    address public manager;
    address payable[] public players;

    constructor() public {
        manager = msg.sender;
    }
    function getContractBalance() public view returns(uint){
        return address(this).balance;
    }
    function enterGame() public payable {
        //players.push(msg.sender);
        require(msg.value> 0.0001 ether);
        players.push(msg.sender);
        //players.push(tx.origin);
    }
    function chooseByTime() private view returns(uint){
        uint result = block.timestamp%players.length;
        return result;
    }
    modifier restricted(){
        require(msg.sender==manager);
        _;
    }
    function payEtherToPlayer() public restricted {
        //require(msg.sender == manager);
        uint256 winnerIndex = chooseByTime();
        players[winnerIndex].transfer(address(this).balance);
        players=new address payable[](0);
       
    }
    function getCurrentPlayer() public view returns(address payable[] memory) {
        return players;
    }
    
    
}
