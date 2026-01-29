# Minimal DAO Governance

This repository implements the core components of a Decentralized Autonomous Organization (DAO). It utilizes a snapshot-based voting mechanism to prevent "flash loan attacks" where users borrow tokens just to influence a vote.

## Governance Workflow


1. **Propose:** A token holder with enough voting power submits a proposal.
2. **Vote:** Holders cast "For", "Against", or "Abstain" votes during the voting period.
3. **Queue & Execute:** If the proposal passes quorum and has more "For" votes, it is queued and then executed.

## Key Components
- **ERC20Votes:** A token that tracks historical balances (checkpoints).
- **Governor:** The logic engine that handles voting power, durations, and success thresholds.
