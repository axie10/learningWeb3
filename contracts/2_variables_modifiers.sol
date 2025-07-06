// SPDX-License-Identifier: MIT

// Version
pragma solidity ^0.8.4;

contract VariablesModifiers {

    // Valores enteros sin signo
    uint num1;
    uint8 num2 = 9;
    uint16 public num3;

    // Valores enteros con signo (int)
    int256 c;
    int8 public d = -32;
    int e = 65;

    // Valores string, cadena de texto
    string name;
    string public surname = "Luna";
    string private surname2 = "Zeppelin";

    // Valores booleanos
    bool public isActive;
    bool a =  true;
    bool private b  = false; 

    // Variables bytes
    bytes4 first_bytes;
    bytes32 second_bytes;
    bytes1 byte_1;

    // Algoritmo de hash
    // la funcion "keccak256" es la funcion de hash utilizado en ETH
    bytes32 public hasing = keccak256(abi.encode("hola mundo"));

    // Variables de tipo address
    address my_address;
    // Direccion se extrae mediante una clave publica mediante la aplicacion de algoritomos de hash
    address public my_address_2 = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    address public address_3 = msg.sender;

    // Variables Enums
    enum options {ON, OFF}
    options state;
    options constant defaultChoice = options.OFF;

    function turnOn () public {
        state = options.ON;
    }

    function turnOff() public {
        state = defaultChoice;
    }

    function displayState () public view returns (string memory){
        if(state == options.ON){
            return "ON";
        } else {
            return "OFF";
        }
    }

}