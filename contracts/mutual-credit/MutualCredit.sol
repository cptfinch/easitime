// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title MutualCredit
 * @notice LETS-style mutual credit system for goods and materials exchange
 * @dev Members can have negative balances (within limits), unlike TimeToken
 *
 * Key properties:
 * - Community-configurable currency name (e.g., "Lanes" for Easington Lane)
 * - Members can go negative (within credit limit)
 * - Sum of all balances always equals zero (conservation)
 * - Variable pricing (unlike 1hr=1hr time credits)
 * - Used for goods/materials exchange that doesn't fit the time model
 *
 * TODO:
 * - [ ] Implement mutual credit ledger
 * - [ ] Add credit limit management
 * - [ ] Add transfer function between members
 * - [ ] Add community configuration (name, limits)
 * - [ ] Add transaction history
 * - [ ] Add dispute resolution
 * - [ ] Conservation invariant checks
 * - [ ] Security audit
 */

contract MutualCredit {
    string public communityName;
    string public currencyName;
    string public currencySymbol;

    // Balances (can be negative)
    mapping(address => int256) public balanceOf;

    // Credit limits
    mapping(address => uint256) public creditLimit; // max negative balance
    uint256 public defaultCreditLimit = 5000; // e.g., 50.00 units

    // Events
    event Transfer(address indexed from, address indexed to, uint256 amount, string description);
    event CreditLimitChanged(address indexed member, uint256 newLimit);

    // TODO: Implement
    // function transfer(address to, uint256 amount, string calldata description) external
    // function setCreditLimit(address member, uint256 limit) external onlyAdmin
    // function totalSupply() external view returns (uint256) — should always be 0 (conservation)
}
