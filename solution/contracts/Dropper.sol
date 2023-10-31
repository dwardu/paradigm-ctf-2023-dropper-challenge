// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

import "./EthGiver.sol";

contract Dropper {

    address immutable private _CHALLENGE;
    IERC20 immutable private _TOKEN;
    IERC721 immutable private _NFT;
    uint256 _TOTAL_TOKENS;

    EthGiver immutable private _ethGiver0;
    EthGiver immutable private _ethGiver1;
    EthGiver immutable private _ethGiver2;
    EthGiver immutable private _ethGiver3;
    EthGiver immutable private _ethGiver4;
    EthGiver immutable private _ethGiver5;
    EthGiver immutable private _ethGiver6;
    EthGiver immutable private _ethGiver7;
    EthGiver immutable private _ethGiver8;
    EthGiver immutable private _ethGiver9;
    EthGiver immutable private _ethGiverA;
    EthGiver immutable private _ethGiverB;
    EthGiver immutable private _ethGiverC;
    EthGiver immutable private _ethGiverD;
    EthGiver immutable private _ethGiverE;
    EthGiver immutable private _ethGiverF;

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
        EthGiver[] memory ethGivers,
        address[] memory tokenRecipients,
        uint256[] memory tokenAmounts,
        address[] memory nftRecipients,
        uint256[] memory nftIds
    ) {
        _CHALLENGE = challenge;
        _TOKEN = IERC20(token);
        _NFT = IERC721(nft);
        _TOTAL_TOKENS = totalTokens;

        _ethGiver0 = ethGivers[0];
        _ethGiver1 = ethGivers[1];
        _ethGiver2 = ethGivers[2];
        _ethGiver3 = ethGivers[3];
        _ethGiver4 = ethGivers[4];
        _ethGiver5 = ethGivers[5];
        _ethGiver6 = ethGivers[6];
        _ethGiver7 = ethGivers[7];
        _ethGiver8 = ethGivers[8];
        _ethGiver9 = ethGivers[9];
        _ethGiverA = ethGivers[10];
        _ethGiverB = ethGivers[11];
        _ethGiverC = ethGivers[12];
        _ethGiverD = ethGivers[13];
        _ethGiverE = ethGivers[14];
        _ethGiverF = ethGivers[15];

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
            _ethGiver0.give();
            _ethGiver1.give();
            _ethGiver2.give();
            _ethGiver3.give();
            _ethGiver4.give();
            _ethGiver5.give();
            _ethGiver6.give();
            _ethGiver7.give();
            _ethGiver8.give();
            _ethGiver9.give();
            _ethGiverA.give();
            _ethGiverB.give();
            _ethGiverC.give();
            _ethGiverD.give();
            _ethGiverE.give();
            _ethGiverF.give();
        } else if (msg.sig == 0x1d5659fb) {
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
        } else /*if (msg.sig == 0x82947abe)*/ {
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
        }
    }

}
