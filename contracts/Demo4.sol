// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.7.4;
contract Demo4 {
    enum StarbuckSize { SHORT, TALL, GRANDE, VENTI, TRENTA}
    StarbuckSize size;
    StarbuckSize constant defaultSize = StarbuckSize.TALL;
    function setVenti() public {
        size=StarbuckSize.VENTI;
    }
    function getSize() public view returns(StarbuckSize){
        return size;
    }
    // function setConstVenti() public {
    //     defaultSize = StarbuckSize.VENTI;
    // }
}