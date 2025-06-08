// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

/// @title NANA Meme Token
/// @notice NANA is a vibrant anime-themed ERC-20 meme token on the Ethereum blockchain, inspired by the character Shana from “Shakugan no Shana”. The total supply is 88 billion tokens, with 8 billion reserved by the team for operations. NANA is designed as a community-driven project – the contract is standard and fee-free (0% transfer tax), and ownership will be renounced after launch for transparency. Early holders can enjoy the fantasy-inspired branding and participate in future community events. All tokenomics and metadata will be published openly, and the project welcomes anime & crypto fans to join the adventure.
contract NANA is ERC20, ERC20Burnable {
    // 总发行量：880,000,000,000 × 10^18
    uint256 public constant INITIAL_SUPPLY = 880_000_000_000 * (10 ** 18);

    constructor() ERC20("NANA", "NANA") {
        _mint(msg.sender, INITIAL_SUPPLY);
        // 不继承 Ownable，不保留任何控制权
    }
}
