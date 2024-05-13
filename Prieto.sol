// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;


contract MyContract {

    mapping(address => uint) public balances;

    function deposit(address _address, uint _value) public {
        require(_value > 100, "Deposit value must be greater than 100");

        balances[_address] += _value;

        assert(balances[_address] >= _value);
        if (balances[_address] < _value) {
            revert("Deposit failed");
        }
    }

    function withdraw(address _address, uint _value) public {
        require(balances[_address] >= _value, "Insufficient balance");

        balances[_address] -= _value;

        assert(balances[_address] >= 0);
        if (balances[_address] < 0) {
            revert("Withdrawal failed");
        }
    }
}