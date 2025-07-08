// SPDX-License-Identifier: MIT

// Version
pragma solidity ^0.8.4;

contract FallbackReceive {

    // Events
    event log(string _name, address _sender, uint256 amount, bytes _data);

    // Funtions
    fallback() external payable {
        emit log("fallback", msg.sender, msg.value, msg.data);
    }

    receive() external payable {
        emit log("fallback", msg.sender, msg.value, "");
    }
    
}