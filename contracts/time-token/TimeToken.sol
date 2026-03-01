// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title TimeToken (TIM)
 * @notice Community time credit token for the EasiTime platform
 * @dev Non-transferable utility token representing hours of community service
 *
 * Key properties:
 * - 1 TIM = 1 hour of service
 * - Minted when service exchange is confirmed by both parties
 * - Non-transferable between members (earned only through service)
 * - Burned when services are received
 * - Community admins can issue starter credits
 * - Optional demurrage (decay on idle balances)
 * - Cross-community portability via bridge contract
 *
 * TODO:
 * - [ ] Implement ERC-20 compatible interface (with transfer restrictions)
 * - [ ] Add role-based access (community admin, platform admin)
 * - [ ] Implement exchange confirmation (dual-signature)
 * - [ ] Add anti-hoarding mechanism (max balance cap)
 * - [ ] Add demurrage option
 * - [ ] Add cross-community bridge
 * - [ ] Add dispute resolution hooks
 * - [ ] Security audit
 */

// import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
// import "@openzeppelin/contracts/access/AccessControl.sol";

contract TimeToken {
    string public constant name = "TimeToken";
    string public constant symbol = "TIM";
    uint8 public constant decimals = 2; // 0.01 TIM = ~36 seconds

    // Balances
    mapping(address => uint256) public balanceOf;

    // Community membership
    mapping(address => uint256) public communityOf;

    // Exchange confirmations (exchangeId => confirmations)
    mapping(bytes32 => bool) public providerConfirmed;
    mapping(bytes32 => bool) public receiverConfirmed;

    // Anti-hoarding
    uint256 public maxBalance = 10000; // 100.00 TIM (100 hours)

    // Events
    event ServiceExchangeCreated(bytes32 indexed exchangeId, address provider, address receiver, uint256 amount);
    event ServiceExchangeConfirmed(bytes32 indexed exchangeId, address confirmer);
    event CreditsMinted(address indexed to, uint256 amount);
    event CreditsBurned(address indexed from, uint256 amount);
    event StarterCreditsIssued(address indexed to, uint256 amount, address indexed admin);

    // TODO: Implement all functions
    // function createExchange(address receiver, uint256 hours, string calldata serviceDescription) external returns (bytes32)
    // function confirmExchange(bytes32 exchangeId) external
    // function issueStarterCredits(address member, uint256 amount) external onlyAdmin
    // function setMaxBalance(uint256 newMax) external onlyAdmin
    // function setCommunity(address member, uint256 communityId) external onlyAdmin
}
