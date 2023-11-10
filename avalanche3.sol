// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts@4.9.0/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.9.0/access/Ownable.sol";

contract CustomToken is ERC20, Ownable {
    constructor(uint256 Supply) ERC20("ALYANNA", "ALY") {
        require(Supply > 0, "Supply must be greater than 0");
        mint(msg.sender, 10 * Supply);
    }

    function mint(address to, uint256 amount) public onlyOwner {
        require(to != address(0), "Invalid recipient address");
        require(amount > 0, "Amount must be greater than 0");
        _mint(to, amount);
    }

    function transferTokens(address to, uint256 amount) public {
        require(to != address(0), "Invalid recipient address");
        require(amount > 0, "Amount must be greater than 0");
        _transfer(msg.sender, to, amount);
    }

    function burnTokens(uint256 amount) public {
        require(amount > 0, "Amount must be greater than 0");
        _burn(msg.sender, amount);
    }
}
