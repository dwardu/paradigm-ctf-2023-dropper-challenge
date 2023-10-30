// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "./NaiveDropper.sol";

contract DropperHelper is NaiveDropper {

    address public token;
    address public nft;
    uint256 public constructionBlockNumber;
    uint256 public airdropBlockNumber;

    constructor(address challenge) NaiveDropper(challenge) {
        constructionBlockNumber = block.number;
    }

    function airdropETH(address payable[] calldata recipients, uint256[] calldata amounts) public payable override {
        super.airdropETH(recipients, amounts);
        airdropBlockNumber = block.number;
    }

    function airdropERC20(IERC20 token_, address[] calldata recipients, uint256[] calldata amounts, uint256 totalTokens) public override {
        super.airdropERC20(token_, recipients, amounts, totalTokens);
        token = address(token_);
    }

    function airdropERC721(IERC721 nft_, address[] calldata recipients, uint256[] calldata tokenIds) public override {
        super.airdropERC721(nft_, recipients, tokenIds);
        nft = address(nft_);
    }

}
