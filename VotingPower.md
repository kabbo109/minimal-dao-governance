IMPORTANT: Holding tokens is not enough to vote. 
Users MUST call the `delegate(address delegatee)` function on the GovernanceToken 
to activate their voting power (self-delegation is allowed). 

This requirement exists to facilitate efficient checkpointing of voting weight 
without gas-heavy loops.
