// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract WorldX is ERC20, Ownable {
    uint256 private constant INITIAL_SUPPLY = 10_000_000_000 * 10**18; // 10B Tokens with 18 decimals

    constructor(address owner) ERC20("WorldX", "WLDX") Ownable(owner) {
        _mint(owner, INITIAL_SUPPLY);
    }
}
