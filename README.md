# BasicToken Smart Contract

## Overview
The `BasicToken` contract is a simple ERC-20-like token on the Ethereum blockchain. It includes basic functionalities to create a token, transfer it, and ensure transactions are safe and valid.

## Features
- **Token Information**: Includes token name, symbol, and decimals.
- **Total Supply**: Defines the total number of tokens in existence.
- **Balance Tracking**: Keeps track of token balances for each address.
- **Transfer Event**: Emits an event for every token transfer.

## Functions
- **Constructor**: Sets up the token with initial values and assigns the total supply to the creator's address.
- **transfer**: Allows token holders to transfer tokens to another address, with checks for valid transactions.
- **assertTest**: A test function that demonstrates the use of `assert` which will always fail.
- **revertTest**: A test function that demonstrates the use of `revert` with a custom error message.
- **requireTest**: A test function that demonstrates the use of `require` to validate input.

## Deployment
To deploy this contract, compile it using a Solidity compiler and deploy it to the Ethereum network using a wallet or a deployment tool like Truffle or Hardhat.

## Author
Regie R. Prieto
