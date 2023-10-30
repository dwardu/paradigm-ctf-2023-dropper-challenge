// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

contract Dropper {

    address immutable private _CHALLENGE;
    IERC20 immutable private _TOKEN;
    IERC721 immutable private _NFT;
    uint256 _TOTAL_TOKENS;

    address payable immutable private _ethRecipient0;
    address payable immutable private _ethRecipient1;
    address payable immutable private _ethRecipient2;
    address payable immutable private _ethRecipient3;
    address payable immutable private _ethRecipient4;
    address payable immutable private _ethRecipient5;
    address payable immutable private _ethRecipient6;
    address payable immutable private _ethRecipient7;
    address payable immutable private _ethRecipient8;
    address payable immutable private _ethRecipient9;
    address payable immutable private _ethRecipientA;
    address payable immutable private _ethRecipientB;
    address payable immutable private _ethRecipientC;
    address payable immutable private _ethRecipientD;
    address payable immutable private _ethRecipientE;
    address payable immutable private _ethRecipientF;
    uint256 immutable private _ethAmount0;
    uint256 immutable private _ethAmount1;
    uint256 immutable private _ethAmount2;
    uint256 immutable private _ethAmount3;
    uint256 immutable private _ethAmount4;
    uint256 immutable private _ethAmount5;
    uint256 immutable private _ethAmount6;
    uint256 immutable private _ethAmount7;
    uint256 immutable private _ethAmount8;
    uint256 immutable private _ethAmount9;
    uint256 immutable private _ethAmountA;
    uint256 immutable private _ethAmountB;
    uint256 immutable private _ethAmountC;
    uint256 immutable private _ethAmountD;
    uint256 immutable private _ethAmountE;
    uint256 immutable private _ethAmountF;

    address immutable private _tokenRecipient0;
    address immutable private _tokenRecipient1;
    address immutable private _tokenRecipient2;
    address immutable private _tokenRecipient3;
    address immutable private _tokenRecipient4;
    address immutable private _tokenRecipient5;
    address immutable private _tokenRecipient6;
    address immutable private _tokenRecipient7;
    address immutable private _tokenRecipient8;
    address immutable private _tokenRecipient9;
    address immutable private _tokenRecipientA;
    address immutable private _tokenRecipientB;
    address immutable private _tokenRecipientC;
    address immutable private _tokenRecipientD;
    address immutable private _tokenRecipientE;
    address immutable private _tokenRecipientF;
    uint256 immutable private _tokenAmount0;
    uint256 immutable private _tokenAmount1;
    uint256 immutable private _tokenAmount2;
    uint256 immutable private _tokenAmount3;
    uint256 immutable private _tokenAmount4;
    uint256 immutable private _tokenAmount5;
    uint256 immutable private _tokenAmount6;
    uint256 immutable private _tokenAmount7;
    uint256 immutable private _tokenAmount8;
    uint256 immutable private _tokenAmount9;
    uint256 immutable private _tokenAmountA;
    uint256 immutable private _tokenAmountB;
    uint256 immutable private _tokenAmountC;
    uint256 immutable private _tokenAmountD;
    uint256 immutable private _tokenAmountE;
    uint256 immutable private _tokenAmountF;

    address immutable private _nftRecipient0;
    address immutable private _nftRecipient1;
    address immutable private _nftRecipient2;
    address immutable private _nftRecipient3;
    address immutable private _nftRecipient4;
    address immutable private _nftRecipient5;
    address immutable private _nftRecipient6;
    address immutable private _nftRecipient7;
    address immutable private _nftRecipient8;
    address immutable private _nftRecipient9;
    address immutable private _nftRecipientA;
    address immutable private _nftRecipientB;
    address immutable private _nftRecipientC;
    address immutable private _nftRecipientD;
    address immutable private _nftRecipientE;
    address immutable private _nftRecipientF;
    uint256 immutable private _nftId0;
    uint256 immutable private _nftId1;
    uint256 immutable private _nftId2;
    uint256 immutable private _nftId3;
    uint256 immutable private _nftId4;
    uint256 immutable private _nftId5;
    uint256 immutable private _nftId6;
    uint256 immutable private _nftId7;
    uint256 immutable private _nftId8;
    uint256 immutable private _nftId9;
    uint256 immutable private _nftIdA;
    uint256 immutable private _nftIdB;
    uint256 immutable private _nftIdC;
    uint256 immutable private _nftIdD;
    uint256 immutable private _nftIdE;
    uint256 immutable private _nftIdF;

    constructor(
        address challenge,
        address token,
        address nft,
        uint256 totalTokens,
        address payable[] memory ethRecipients,
        uint256[] memory ethAmounts,
        address[] memory tokenRecipients,
        uint256[] memory tokenAmounts,
        address[] memory nftRecipients,
        uint256[] memory nftIds
    ) {
        _CHALLENGE = challenge;
        _TOKEN = IERC20(token);
        _NFT = IERC721(nft);
        _TOTAL_TOKENS = totalTokens;

        _ethRecipient0 = ethRecipients[0];
        _ethRecipient1 = ethRecipients[1];
        _ethRecipient2 = ethRecipients[2];
        _ethRecipient3 = ethRecipients[3];
        _ethRecipient4 = ethRecipients[4];
        _ethRecipient5 = ethRecipients[5];
        _ethRecipient6 = ethRecipients[6];
        _ethRecipient7 = ethRecipients[7];
        _ethRecipient8 = ethRecipients[8];
        _ethRecipient9 = ethRecipients[9];
        _ethRecipientA = ethRecipients[10];
        _ethRecipientB = ethRecipients[11];
        _ethRecipientC = ethRecipients[12];
        _ethRecipientD = ethRecipients[13];
        _ethRecipientE = ethRecipients[14];
        _ethRecipientF = ethRecipients[15];
        _ethAmount0 = ethAmounts[0];
        _ethAmount1 = ethAmounts[1];
        _ethAmount2 = ethAmounts[2];
        _ethAmount3 = ethAmounts[3];
        _ethAmount4 = ethAmounts[4];
        _ethAmount5 = ethAmounts[5];
        _ethAmount6 = ethAmounts[6];
        _ethAmount7 = ethAmounts[7];
        _ethAmount8 = ethAmounts[8];
        _ethAmount9 = ethAmounts[9];
        _ethAmountA = ethAmounts[10];
        _ethAmountB = ethAmounts[11];
        _ethAmountC = ethAmounts[12];
        _ethAmountD = ethAmounts[13];
        _ethAmountE = ethAmounts[14];
        _ethAmountF = ethAmounts[15];        

        _tokenRecipient0 = tokenRecipients[0];
        _tokenRecipient1 = tokenRecipients[1];
        _tokenRecipient2 = tokenRecipients[2];
        _tokenRecipient3 = tokenRecipients[3];
        _tokenRecipient4 = tokenRecipients[4];
        _tokenRecipient5 = tokenRecipients[5];
        _tokenRecipient6 = tokenRecipients[6];
        _tokenRecipient7 = tokenRecipients[7];
        _tokenRecipient8 = tokenRecipients[8];
        _tokenRecipient9 = tokenRecipients[9];
        _tokenRecipientA = tokenRecipients[10];
        _tokenRecipientB = tokenRecipients[11];
        _tokenRecipientC = tokenRecipients[12];
        _tokenRecipientD = tokenRecipients[13];
        _tokenRecipientE = tokenRecipients[14];
        _tokenRecipientF = tokenRecipients[15];
        _tokenAmount0 = tokenAmounts[0];
        _tokenAmount1 = tokenAmounts[1];
        _tokenAmount2 = tokenAmounts[2];
        _tokenAmount3 = tokenAmounts[3];
        _tokenAmount4 = tokenAmounts[4];
        _tokenAmount5 = tokenAmounts[5];
        _tokenAmount6 = tokenAmounts[6];
        _tokenAmount7 = tokenAmounts[7];
        _tokenAmount8 = tokenAmounts[8];
        _tokenAmount9 = tokenAmounts[9];
        _tokenAmountA = tokenAmounts[10];
        _tokenAmountB = tokenAmounts[11];
        _tokenAmountC = tokenAmounts[12];
        _tokenAmountD = tokenAmounts[13];
        _tokenAmountE = tokenAmounts[14];
        _tokenAmountF = tokenAmounts[15];        

        _nftRecipient0 = nftRecipients[0];
        _nftRecipient1 = nftRecipients[1];
        _nftRecipient2 = nftRecipients[2];
        _nftRecipient3 = nftRecipients[3];
        _nftRecipient4 = nftRecipients[4];
        _nftRecipient5 = nftRecipients[5];
        _nftRecipient6 = nftRecipients[6];
        _nftRecipient7 = nftRecipients[7];
        _nftRecipient8 = nftRecipients[8];
        _nftRecipient9 = nftRecipients[9];
        _nftRecipientA = nftRecipients[10];
        _nftRecipientB = nftRecipients[11];
        _nftRecipientC = nftRecipients[12];
        _nftRecipientD = nftRecipients[13];
        _nftRecipientE = nftRecipients[14];
        _nftRecipientF = nftRecipients[15];
        _nftId0 = nftIds[0];
        _nftId1 = nftIds[1];
        _nftId2 = nftIds[2];
        _nftId3 = nftIds[3];
        _nftId4 = nftIds[4];
        _nftId5 = nftIds[5];
        _nftId6 = nftIds[6];
        _nftId7 = nftIds[7];
        _nftId8 = nftIds[8];
        _nftId9 = nftIds[9];
        _nftIdA = nftIds[10];
        _nftIdB = nftIds[11];
        _nftIdC = nftIds[12];
        _nftIdD = nftIds[13];
        _nftIdE = nftIds[14];
        _nftIdF = nftIds[15];        
    }

    // "airdropERC20(address,address[],uint256[],uint256)": "82947abe",
    // "airdropERC721(address,address[],uint256[])": "1d5659fb",
    // "airdropETH(address[],uint256[])": "c1a38006"
    fallback() external payable {
        if (msg.sig == 0xc1a38006) {
            _ethRecipient0.send(_ethAmount0);
            _ethRecipient1.send(_ethAmount1);
            _ethRecipient2.send(_ethAmount2);
            _ethRecipient3.send(_ethAmount3);
            _ethRecipient4.send(_ethAmount4);
            _ethRecipient5.send(_ethAmount5);
            _ethRecipient6.send(_ethAmount6);
            _ethRecipient7.send(_ethAmount7);
            _ethRecipient8.send(_ethAmount8);
            _ethRecipient9.send(_ethAmount9);
            _ethRecipientA.send(_ethAmountA);
            _ethRecipientB.send(_ethAmountB);
            _ethRecipientC.send(_ethAmountC);
            _ethRecipientD.send(_ethAmountD);
            _ethRecipientE.send(_ethAmountE);
            _ethRecipientF.send(_ethAmountF);
        } else if (msg.sig == 0x82947abe) {
            _TOKEN.transferFrom(_CHALLENGE, _tokenRecipient0, _tokenAmount0);
            _TOKEN.transferFrom(_CHALLENGE, _tokenRecipient1, _tokenAmount1);
            _TOKEN.transferFrom(_CHALLENGE, _tokenRecipient2, _tokenAmount2);
            _TOKEN.transferFrom(_CHALLENGE, _tokenRecipient3, _tokenAmount3);
            _TOKEN.transferFrom(_CHALLENGE, _tokenRecipient4, _tokenAmount4);
            _TOKEN.transferFrom(_CHALLENGE, _tokenRecipient5, _tokenAmount5);
            _TOKEN.transferFrom(_CHALLENGE, _tokenRecipient6, _tokenAmount6);
            _TOKEN.transferFrom(_CHALLENGE, _tokenRecipient7, _tokenAmount7);
            _TOKEN.transferFrom(_CHALLENGE, _tokenRecipient8, _tokenAmount8);
            _TOKEN.transferFrom(_CHALLENGE, _tokenRecipient9, _tokenAmount9);
            _TOKEN.transferFrom(_CHALLENGE, _tokenRecipientA, _tokenAmountA);
            _TOKEN.transferFrom(_CHALLENGE, _tokenRecipientB, _tokenAmountB);
            _TOKEN.transferFrom(_CHALLENGE, _tokenRecipientC, _tokenAmountC);
            _TOKEN.transferFrom(_CHALLENGE, _tokenRecipientD, _tokenAmountD);
            _TOKEN.transferFrom(_CHALLENGE, _tokenRecipientE, _tokenAmountE);
            _TOKEN.transferFrom(_CHALLENGE, _tokenRecipientF, _tokenAmountF);
        } else /*if (msg.sig == 0x1d5659fb)*/ {
            _NFT.transferFrom(_CHALLENGE, _nftRecipient0, _nftId0);
            _NFT.transferFrom(_CHALLENGE, _nftRecipient1, _nftId1);
            _NFT.transferFrom(_CHALLENGE, _nftRecipient2, _nftId2);
            _NFT.transferFrom(_CHALLENGE, _nftRecipient3, _nftId3);
            _NFT.transferFrom(_CHALLENGE, _nftRecipient4, _nftId4);
            _NFT.transferFrom(_CHALLENGE, _nftRecipient5, _nftId5);
            _NFT.transferFrom(_CHALLENGE, _nftRecipient6, _nftId6);
            _NFT.transferFrom(_CHALLENGE, _nftRecipient7, _nftId7);
            _NFT.transferFrom(_CHALLENGE, _nftRecipient8, _nftId8);
            _NFT.transferFrom(_CHALLENGE, _nftRecipient9, _nftId9);
            _NFT.transferFrom(_CHALLENGE, _nftRecipientA, _nftIdA);
            _NFT.transferFrom(_CHALLENGE, _nftRecipientB, _nftIdB);
            _NFT.transferFrom(_CHALLENGE, _nftRecipientC, _nftIdC);
            _NFT.transferFrom(_CHALLENGE, _nftRecipientD, _nftIdD);
            _NFT.transferFrom(_CHALLENGE, _nftRecipientE, _nftIdE);
            _NFT.transferFrom(_CHALLENGE, _nftRecipientF, _nftIdF);
        }
    }

}
