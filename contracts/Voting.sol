// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleVoting {

    uint public votesA;
    uint public votesB;

    function voteA() public {
        votesA = votesA + 1;
    }

    function voteB() public {
        votesB = votesB + 1;
    }
}
