// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "./Dropper.sol";
import "./DropperHelper.sol";

interface ChallengeLike {
    function submit(address dropper) external payable returns (uint256);
    function bestScore() external view returns (uint256);
    function latestScore() external view returns (uint256);
}

contract DropperSolver {

    function randomAddress(uint256 seed) private pure returns (uint256, address payable) {
        bytes32 v = keccak256(abi.encodePacked((seed >> 128) | (seed << 128)));
        return (uint256(keccak256(abi.encodePacked(seed))), payable(address(bytes20(v))));
    }

    function randomUint(uint256 seed, uint256 min, uint256 max) private pure returns (uint256, uint256) {
        bytes32 v = keccak256(abi.encodePacked((seed >> 128) | (seed << 128)));
        return (uint256(keccak256(abi.encodePacked(seed))), uint256(v) % (max - min) + min);
    }

    address public token;
    address public nft;
    function presolve(address challenge) external {
        DropperHelper helper = new DropperHelper(challenge);
        ChallengeLike(challenge).submit(address(helper));
        token = helper.token();
        nft = helper.nft();
    }

    Dropper public dropper;

    function solve(address challenge) external {

        uint256 seed = uint256(blockhash(block.number - 1));

        address payable[] memory ethRecipients = new address payable[](16);
        uint256[] memory ethAmounts = new uint[](16);
        for (uint256 i = 0; i < 16; i++) {
            (seed, ethRecipients[i]) = randomAddress(seed);
            (seed, ethAmounts[i]) = randomUint(seed, 1 ether, 5 ether);
        }
        
        uint256 totalTokens = 0;
        address[] memory tokenRecipients = new address[](16);
        uint256[] memory tokenAmounts = new uint[](16);
        for (uint256 i = 0; i < 16; i++) {
            (seed, tokenRecipients[i]) = randomAddress(seed);
            (seed, tokenAmounts[i]) = randomUint(seed, 1 ether, 5 ether);
            totalTokens += tokenAmounts[i];
        }

        address[] memory nftRecipients = new address[](16);
        uint256[] memory nftAmounts = new uint[](16);
        uint256 startId;
        (seed, startId) = randomUint(seed, 0, type(uint256).max);
        for (uint256 i = 0; i < 16; i++) {
            (seed, nftRecipients[i]) = randomAddress(seed);
            nftAmounts[i] = startId++;
        }

        dropper = new Dropper(challenge, token, nft, totalTokens, ethRecipients, ethAmounts, tokenRecipients, tokenAmounts, nftRecipients, nftAmounts);

        ChallengeLike(challenge).submit(address(dropper));
    }

}
