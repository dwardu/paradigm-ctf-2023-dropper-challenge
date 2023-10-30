// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

contract NaiveDropper {

    address immutable private _CHALLENGE;

    constructor(address challenge) {
        _CHALLENGE = challenge;
    }

    function airdropETH(address payable[] calldata recipients, uint256[] calldata amounts) public payable virtual {
        for (uint256 i = 0; i < recipients.length; i++) {
            recipients[i].send(amounts[i]);
        }
    }

    function airdropERC20(IERC20 token, address[] calldata recipients, uint256[] calldata amounts, uint256) public virtual {
        for (uint256 i = 0; i < recipients.length; i++) {
            token.transferFrom(_CHALLENGE, recipients[i], amounts[i]);
        }
    }

    function airdropERC721(IERC721 token, address[] calldata recipients, uint256[] calldata tokenIds) public virtual {
        for (uint256 i = 0; i < recipients.length; i++) {
            token.transferFrom(_CHALLENGE, recipients[i], tokenIds[i]);
        }
    }

}
