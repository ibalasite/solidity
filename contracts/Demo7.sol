// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.7.4;

contract Demo7 {
    function getMultiple() public pure returns(uint256 product,uint256 sum){
        uint256 a=3;
        uint256 b=4;
        product = a*b;
        sum = a+b;
    }

    function getMultiple2() public pure returns(uint256 product,uint256 sum){
        uint256 a=3;
        uint256 b=4; 
        return (a*b, a+b);
    }
    function returnMultiple2() public pure returns(uint , uint ){
        uint a=5;
        uint b=6;
        uint c = a*b;
        uint d = a+b;

        return (c, d);
    }
    function returnMultiple3() public pure returns(uint product, uint sum){
        uint a=200;
        uint b=300;
        return (a,b);
    }
    function returnMultiple4() public pure returns(uint product, uint sum){
        uint a=200;
        uint b=300;

    }
}