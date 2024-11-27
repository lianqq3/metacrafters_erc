// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ValorantPoints is ERC20, Ownable {
    mapping(address => mapping(address => uint256)) private _delegatedTransfers;

    // Constructor
    constructor() ERC20("ValorantPoints", "VLP") Ownable(msg.sender) {}

    // Mint (claim)
    function claimValorantPoints(address to, uint256 amount) public onlyOwner {
        require(amount > 0, "The amount must be greater than 0 for you to claim your Valorant Points!");
        _mint(to, amount);
    }

    // Burn (trash)
    function trashValorantPoints(uint256 amount) public {
        require(amount > 0, "Oh no! Your Valorant Points must be greater than 0 for this to be delete.");
        require(balanceOf(msg.sender) >= amount, "Oh oh, not enough points to delete.");
        _burn(msg.sender, amount);
    }

    // Transfer (gift)
    function giftValorantPoints(address receiver, uint256 amount) external {
        require(amount > 0, "Your Valorant Points must be greater than 0!");
        require(balanceOf(msg.sender) >= amount, "You don't have enough Valorant Points to gift someone. =(");
        _transfer(msg.sender, receiver, amount);
    }

}


// Account 1: 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
// Account 2: 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2

// Functionality
// Only contract owner should be able to mint tokens
// Any user can transfer tokens
// Any user can burn tokens