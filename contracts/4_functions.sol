// SPDX-License-Identifier: MIT

// Version
pragma solidity ^0.8.4;

contract Functions {

    // Funtions pure
    function getName() public pure returns (string memory){
        return "Pepe";
    }

    // Funtions view
    string x = "pepe";
    function getNumber() public view returns (string memory) {
        return x;
    }
    
}