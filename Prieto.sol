// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BasicToken {
    string public name;
    string public symbol;
    uint8 public decimals;
    uint256 public totalSupply;
    mapping(address => uint256) public balances;

    event Transfer(address indexed from, address indexed to, uint256 value);

    constructor(
        string memory _name,
        string memory _symbol,
        uint8 _decimals,
        uint256 _initialSupply
    ) {
        name = _name;
        symbol = _symbol;
        decimals = _decimals;
        totalSupply = _initialSupply * 10**uint256(_decimals);
        balances[msg.sender] = totalSupply;
    }

    function transfer(address _to, uint256 _value) public returns (bool) {
    require(_to != address(0), "Invalid recipient address");
    require(_value > 0, "Value must be greater than zero");
    require(_value <= balances[msg.sender], "Insufficient balance");
    require(_value <= 100, "Transfer amount exceeds the limit"); 

    balances[msg.sender] -= _value;
    balances[_to] += _value;
    emit Transfer(msg.sender, _to, _value);
    return true;
}



    function assertTest() public pure {
        assert(1 == 2);
    }

    function revertTest() public pure {
        revert("This is a revert test");
    }

    function requireTest(uint256 _value) public pure {
        require(_value > 0, "Value must be greater than zero");
    }
}
