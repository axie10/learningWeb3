// SPDX-License-Identifier: MIT

// Version
pragma solidity ^0.8.4;

contract Food {
    // Struct
    struct dinnerPlate {
        string name;
        string ingredients;
    }

    dinnerPlate[] menu;

    // Creation a internal function to call in heritage contracts
    function newMenu(string memory _name, string memory _ingredients) internal {
        menu.push(dinnerPlate(_name, _ingredients));
    }
}

contract Hamburguer is Food {
    address public owner;

    // modifier
    modifier ownerOnly() {
        require(
            owner == msg.sender,
            "you have not permission to run this function"
        );
        _;
    }

    // In the constructor
    constructor() {
        owner = msg.sender;
    }

    // function call to functions that heritage of father contract
    function doHamburger(
        string memory ingredients_,
        uint limithamburguer_
    ) external ownerOnly {
        require(limithamburguer_ < 5, "max 5 hambuguers");
        newMenu("Hamburguer", ingredients_);
    }
}
