# PersonAge Contract

## Description
The PersonAge contract is a simple Solidity smart contract for age verification. It ensures that the user is at least 18 years old to access certain functions.

## Features
- **Age Verification**: Validates that the age provided is 18 or older.
- **Pure Function**: The `verifyAge` function is a pure function, meaning it does not modify or read the contract's state.

## Usage
To use the `verifyAge` function, simply call it with an age parameter. If the age is less than 18, the transaction will revert with an error message.

## Requirements
- Solidity ^0.8.0

## Author
Regie R. Prieto

## License
This project is licensed under the MIT License - see the LICENSE file for details.
