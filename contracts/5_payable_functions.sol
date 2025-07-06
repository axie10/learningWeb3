// SPDX-License-Identifier: MIT

// Version
pragma solidity ^0.8.4;

contract ethSend {
    // Define constructo type payable, because the function of this contract is send eth
    constructor() payable {}
    // esta funcion se encarga de recibir cuando se relaiza un pago a un smart contract
    receive() external payable {}

    // Events
    event sendStatus(bool);
    event callStatus(bool, bytes);

    // Tres formas de hacer envios:
    // Transfer
    function sendTransfer(address payable _to) public payable {
        // esta funcion envia ether a una address con la funcion transfer
        // el parametro que s ele mete es ether o gas que no se indican igual
        // _to.transfer(1);
        _to.transfer(10 ether);
    }

    // Send
    function sendSend(address payable _to) public payable {
        bool isSend = _to.send(10 ether);
        emit sendStatus(isSend);
        require(isSend == true, unicode"No se ha completado la transacción");
    }

    // Call
    function sendCall(address payable _to) public payable {
        (bool success, bytes memory data) = _to.call{value: 10 ether}("");
        emit callStatus(success, data);
    }
}

contract ethReceiver {
    event log(uint amount, uint gas);
    receive() external payable {
        emit log(address(this).balance, gasleft());
    }
}
