// SPDX-License-Identifier: MIT

// Version
pragma solidity ^0.8.4;

contract Loops_Conditionals {
    // Add 10 first number from a number entered
    function addtenNumber(uint _number) public pure returns (uint result) {
        uint _numberlimit = _number + 10;
        for (uint i = _number; i < _numberlimit; i++) {
            result += i;
        }
        return result;
    }
}
