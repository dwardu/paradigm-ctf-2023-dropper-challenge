// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "./NaiveDropper.sol";

interface ChallengeLike {
    function submit(address dropper) external payable returns (uint256);
    function bestScore() external view returns (uint256);
    function latestScore() external view returns (uint256);
}

contract DropperSolver {

    NaiveDropper public dropper;

    function solve(address challenge) external {
        dropper = new NaiveDropper(challenge);

        ChallengeLike(challenge).submit(address(dropper));
    }

}
