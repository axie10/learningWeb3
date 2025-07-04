// SPDX-License-Identifier: MIT

// Version
pragma solidity ^0.8.4;

// Importar otro smart contract desde OpneZeppelin
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract FirstSteps is ERC721 {

    // Variables
    // Direccion de la persona que despliega el contrado
    address public owner;
    string public name1;
    string public symbol1;

    // Constructor
    /* Almacenamos en la variable owner la direccion de la persona que despliega el contrato*/
    constructor(string memory _name, string memory _symbol) ERC721(_name, _symbol) {
        // Con esto obtenemos la direccion de quien despliega el contrado
        owner = msg.sender;
        // Para estos datos ya hay unas funciones que se heredan de la importacion de openzeppelin
        name1 = _name;
        symbol1 = _symbol;
    }

}