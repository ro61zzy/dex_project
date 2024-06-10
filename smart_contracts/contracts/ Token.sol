// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

//basic ERC-20 Token to form the trading pool foundation, mint a million tokens to the deployer’s address

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
contract Token is ERC20 {
    // Initialize contract with 1 million tokens minted to the creator of the contract
    constructor() ERC20("Token", "TKN") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }
}