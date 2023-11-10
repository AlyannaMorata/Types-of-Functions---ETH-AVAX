# CustomToken - YEKQT

CustomToken is an ERC-20 token with additional functionalities, created using the OpenZeppelin library. The token contract includes features such as minting, transferring, and burning tokens.

## Overview

- **Token Name:** ALY
- **Symbol:** ALYYY
- **Decimals:** 18

## Deployment

The token is deployed with an initial supply to the deployer's address. The deployer has the sole ownership of the contract.

## Features

### Minting

The owner (deployer) can mint additional tokens. Minting is restricted to the contract owner.

### Transfer

Users can transfer tokens to other addresses using the `transferTokens` function.

### Burning

Users can burn their own tokens using the `burnTokens` function.

## Usage

1. **Minting Tokens:**
   - Call the `mint` function with the recipient's address and the desired amount. Only the contract owner can mint tokens.

2. **Transferring Tokens:**
   - Use the `transferTokens` function to transfer tokens to another address.

3. **Burning Tokens:**
   - Burn tokens by calling the `burnTokens` function with the desired amount.

## Examples

### Minting Example:

```solidity
// Mint 100 YEK tokens to a specific address
mint(addressTo, 100);
