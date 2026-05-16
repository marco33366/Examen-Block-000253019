// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Mensajes {
    address private propietario;
    uint256 private contadorMensajes;

    struct Mensaje {
        address emisor;
        address receptor;
        string contenido;
        uint256 marcaDeTiempo;
    }

    mapping(uint256 => Mensaje) public mensajes;

    event MensajeEnviado(
        uint256 idMensaje,
        address emisor,
        address receptor,
        string contenido,
        uint256 marcaDeTiempo
    );

    constructor() {
        propietario = msg.sender;
        contadorMensajes = 0;
    }

    function enviarMensaje(address _receptor, string memory _contenido) public {
        require(msg.sender == propietario, "Solo el propietario puede enviar mensajes");

        uint256 idMensaje = contadorMensajes;
        mensajes[idMensaje] = Mensaje({
            emisor: msg.sender,
            receptor: _receptor,
            contenido: _contenido,
            marcaDeTiempo: block.timestamp
        });

        contadorMensajes++;
        emit MensajeEnviado(idMensaje, msg.sender, _receptor, _contenido, block.timestamp);
    }
}