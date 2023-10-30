// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

contract Dropper {

    address immutable private _CHALLENGE;

    constructor(
        address challenge
    ) {
        _CHALLENGE = challenge;
    }

    function airdropETH(address payable[] calldata ethRecipients, uint256[] calldata ethAmounts) external payable {
        ethRecipients[0].send(ethAmounts[0]);
        ethRecipients[1].send(ethAmounts[1]);
        ethRecipients[2].send(ethAmounts[2]);
        ethRecipients[3].send(ethAmounts[3]);
        ethRecipients[4].send(ethAmounts[4]);
        ethRecipients[5].send(ethAmounts[5]);
        ethRecipients[6].send(ethAmounts[6]);
        ethRecipients[7].send(ethAmounts[7]);
        ethRecipients[8].send(ethAmounts[8]);
        ethRecipients[9].send(ethAmounts[9]);
        ethRecipients[10].send(ethAmounts[10]);
        ethRecipients[11].send(ethAmounts[11]);
        ethRecipients[12].send(ethAmounts[12]);
        ethRecipients[13].send(ethAmounts[13]);
        ethRecipients[14].send(ethAmounts[14]);
        ethRecipients[15].send(ethAmounts[15]);
    }

    function airdropERC20(IERC20 _TOKEN, address[] calldata tokenRecipients, uint256[] calldata tokenAmounts, uint256 /*totalTokenAmount*/) external {
        _TOKEN.transferFrom(_CHALLENGE, tokenRecipients[0], tokenAmounts[0]);
        _TOKEN.transferFrom(_CHALLENGE, tokenRecipients[1], tokenAmounts[1]);
        _TOKEN.transferFrom(_CHALLENGE, tokenRecipients[2], tokenAmounts[2]);
        _TOKEN.transferFrom(_CHALLENGE, tokenRecipients[3], tokenAmounts[3]);
        _TOKEN.transferFrom(_CHALLENGE, tokenRecipients[4], tokenAmounts[4]);
        _TOKEN.transferFrom(_CHALLENGE, tokenRecipients[5], tokenAmounts[5]);
        _TOKEN.transferFrom(_CHALLENGE, tokenRecipients[6], tokenAmounts[6]);
        _TOKEN.transferFrom(_CHALLENGE, tokenRecipients[7], tokenAmounts[7]);
        _TOKEN.transferFrom(_CHALLENGE, tokenRecipients[8], tokenAmounts[8]);
        _TOKEN.transferFrom(_CHALLENGE, tokenRecipients[9], tokenAmounts[9]);
        _TOKEN.transferFrom(_CHALLENGE, tokenRecipients[10], tokenAmounts[10]);
        _TOKEN.transferFrom(_CHALLENGE, tokenRecipients[11], tokenAmounts[11]);
        _TOKEN.transferFrom(_CHALLENGE, tokenRecipients[12], tokenAmounts[12]);
        _TOKEN.transferFrom(_CHALLENGE, tokenRecipients[13], tokenAmounts[13]);
        _TOKEN.transferFrom(_CHALLENGE, tokenRecipients[14], tokenAmounts[14]);
        _TOKEN.transferFrom(_CHALLENGE, tokenRecipients[15], tokenAmounts[15]);
    }

    function airdropERC721(IERC721 _NFT, address[] calldata nftRecipients, uint256[] calldata nftIds) external {
        _NFT.transferFrom(_CHALLENGE, nftRecipients[0], nftIds[0]);
        _NFT.transferFrom(_CHALLENGE, nftRecipients[1], nftIds[1]);
        _NFT.transferFrom(_CHALLENGE, nftRecipients[2], nftIds[2]);
        _NFT.transferFrom(_CHALLENGE, nftRecipients[3], nftIds[3]);
        _NFT.transferFrom(_CHALLENGE, nftRecipients[4], nftIds[4]);
        _NFT.transferFrom(_CHALLENGE, nftRecipients[5], nftIds[5]);
        _NFT.transferFrom(_CHALLENGE, nftRecipients[6], nftIds[6]);
        _NFT.transferFrom(_CHALLENGE, nftRecipients[7], nftIds[7]);
        _NFT.transferFrom(_CHALLENGE, nftRecipients[8], nftIds[8]);
        _NFT.transferFrom(_CHALLENGE, nftRecipients[9], nftIds[9]);
        _NFT.transferFrom(_CHALLENGE, nftRecipients[10], nftIds[10]);
        _NFT.transferFrom(_CHALLENGE, nftRecipients[11], nftIds[11]);
        _NFT.transferFrom(_CHALLENGE, nftRecipients[12], nftIds[12]);
        _NFT.transferFrom(_CHALLENGE, nftRecipients[13], nftIds[13]);
        _NFT.transferFrom(_CHALLENGE, nftRecipients[14], nftIds[14]);
        _NFT.transferFrom(_CHALLENGE, nftRecipients[15], nftIds[15]);
    }

}
