// SPDX-License-Identifier: MIT

// Version
pragma solidity ^0.8.4;

contract Math {
    function add(uint a, uint b) public pure returns (uint res) {
        res = a + b;
    }

    function subtraction(int a, int b) public pure returns (int res) {
        res = a - b;
    }

    function multipli(uint a, uint b) public pure returns (uint res) {
        res = a * b;
    }

    function division(uint a, uint b) public pure returns (uint res) {
        res = a / b;
    }

    function exponent(uint a, uint b) public pure returns (uint res) {
        res = a ** b;
    }

    function module(uint a, uint b) public pure returns (uint res) {
        res = a % b;
    }

    // Funcion reservada addmod (x+y)%k
    function _addmod(uint x, uint y, uint k) public pure returns (uint, uint) {
        return (addmod(x, y, k), (x + y) % k);
    }

    // Funcion reservada mulmod (x*y)%k
    function _mulmod(uint x, uint y, uint k) public pure returns (uint, uint) {
        return (mulmod(x, y, k), (x + y) % k);
    }
}
