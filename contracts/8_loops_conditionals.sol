// SPDX-License-Identifier: MIT

// Version
pragma solidity ^0.8.4;

contract Loops_Conditionals {
    // Add 10 first number from a number entered
    function addtenNumber(
        uint256 _number
    ) public pure returns (uint256 result) {
        uint256 _numberlimit = _number + 10;
        for (uint256 i = _number; i < _numberlimit; i++) {
            result += i;
        }
        return result;
    }

    // Add 10 first number odd
    function addtenNumberOdd() public pure returns (uint256) {
        uint256 aux_sum = 0;
        uint256 counter = 0;
        uint256 counter_odd = 0;

        while (counter_odd < 10) {
            if (counter % 2 != 0) {
                aux_sum = aux_sum + counter;
                counter_odd++;
            }
            counter++;
        }

        return aux_sum;
    }
}
