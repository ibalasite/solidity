pragma solidity 0.7.4;
contract Demo3 {
    function test1GetLength() public pure returns(uint256){
        uint[10] memory bid;
        return bid.length;
    }
    function test2GetLength() public pure returns(uint256){
        uint[] memory bid = new uint[](20);
        return bid.length;
    }
    function test3GetFirstElement() public pure returns(uint256){
        uint[10] memory bid;
        bid[0]=50;
        bid[1]=100;
        return bid[0];
    }
    function test4GetWrongElement() public pure returns(uint256) {
        uint[] memory bid = new uint[](10);
        return bid[10];
    }
    
    function test5GetWrongElement() public pure returns(uint256) {
        uint[10] memory bid;
        // will be warned in compile time
        //return bid[10];
        return bid[9];
    }

}