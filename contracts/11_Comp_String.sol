// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Complejo1 {
    string private saludo = "Hola";

    function cambiarSaludo(string memory texto)public{
        saludo = texto;

    }

    function saludar()public view returns(string memory){
        return saludo;
    }

    function agregarSaludo(string memory texto) public view returns(string memory){
        //return string.concat(saludo, texto);

        return string(abi.encodePacked(saludo,texto));
    }
}