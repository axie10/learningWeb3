// SPDX-License-Identifier: MIT

// Version
pragma solidity ^0.8.4;

contract Food {

    // Struct
    struct dinnerPlate {
        string name;
        string ingredients;
    }

    dinnerPlate [] public menu;

    // Creation a internal function to call in heritage contracts
    function newMenu(string memory _name, string memory _ingredients) internal {
        menu.push(dinnerPlate(_name, _ingredients));
    }

    function showMenu() public view returns(dinnerPlate [] memory menu_) {
        menu_ = menu;
    }
}

contract Hamburguer is  Food{

    address public owner;

    // modifier
    modifier ownerOnly(){
        require(owner == msg.sender, "you have not permission to run this function");
        _;
    }

    // Constructor to initialize owner variable
    constructor() {
        owner = msg.sender;
    }

    // function call to functions that heritage of father contract
    function doHamburger(string memory ingredients_, uint limithamburguer_) external ownerOnly {
        require(limithamburguer_ < 5, "max 5 hambuguers");
        newMenu("Hamburguer", ingredients_);
    }
}