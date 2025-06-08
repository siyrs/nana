// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

/// @title Professional Education AI Token (FEAI)
/// @notice 总量 88 000 000 枚，部署者全量持有，可自由转账，无交易税，合约立即去中心化
contract FEAI is ERC20, ERC20Burnable {
    // 总发行量：88 000 000 × 10^18
    uint256 public constant INITIAL_SUPPLY = 88_000_000 * (10 ** 18);

    constructor() ERC20("Professional Education AI", "FEAI") {
        // 一次性铸造全部代币到部署钱包
        _mint(msg.sender, INITIAL_SUPPLY);
        // 不继承 Ownable，不保留任何控制权，确保部署后无法修改
    }
}
