// SPDX-License-Identifier: MIT

// Version
pragma solidity ^0.8.4;

contract Father {
    // Storage information Factory
    mapping(address => address) public personal_contract;

    // Factory function
    function Factory() public {
        // With this function we generate new samrt contract Son
        // This is Factory concept, create a smart contract Son
        address addr_personal_contract = address(
            new Son(msg.sender, address(this))
        );
        // link personal address with smart conract address with mapping
        personal_contract[msg.sender] = addr_personal_contract;
    }
}

contract Son {
    // Struc
    struct Owner {
        address account;
        address addr_SC;
    }

    // Variable
    Owner public owner;

    // Construct
    constructor(address _account, address addr_smart_contract) {
        owner.account = _account;
        owner.addr_SC = addr_smart_contract;
    }
}
