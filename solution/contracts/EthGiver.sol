// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

contract EthGiver {

    address payable immutable private _RECIPIENT;

    constructor(address payable recipient) payable {
        _RECIPIENT = recipient;
    }

    function give() external payable {
        selfdestruct(_RECIPIENT);
    }

}
