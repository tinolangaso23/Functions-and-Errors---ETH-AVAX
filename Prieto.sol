// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PersonAge {
    
    function verifyAge(uint age) public pure returns (bool) {
        
        require(age >= 18, "You must be 18 or older to access this function.");
        
        assert(age >= 18);
        
        return true;
    }
}
