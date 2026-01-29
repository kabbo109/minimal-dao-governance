// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Governor} from "@openzeppelin/contracts/governance/Governor.sol";
import {GovernorCountingSimple} from "@openzeppelin/contracts/governance/extensions/GovernorCountingSimple.sol";
import {GovernorVotes} from "@openzeppelin/contracts/governance/extensions/GovernorVotes.sol";
import {IVotes} from "@openzeppelin/contracts/governance/utils/IVotes.sol";

contract MinimalGovernor is Governor, GovernorCountingSimple, GovernorVotes {
    constructor(IVotes _token) 
        Governor("MinimalGovernor") 
        GovernorVotes(_token) 
    {}

    function votingDelay() public pure override returns (uint256) {
        return 1; // 1 block
    }

    function votingPeriod() public pure override returns (uint256) {
        return 50400; // Approx 1 week (assuming 12s blocks)
    }

    function proposalThreshold() public pure override returns (uint256) {
        return 0; 
    }

    function quorum(uint256 blockNumber) public pure override returns (uint256) {
        return 40000 * 10**18; // 4% quorum of 1M supply
    }
}
