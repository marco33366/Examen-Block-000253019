// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Require{

    uint256 public numero = 249447; //cambiará a valor 48
    address private propietario;

    constructor(){
        propietario = msg.sender;
    }

    function cambiarNumero(uint256 _numero) public{
        require( msg.sender == propietario, "No eres el propietario");
        numero = _numero;
        
    }

    function obtenerNumero() public view returns(uint256){
        return numero;
    }  
}