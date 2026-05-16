// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "@openzeppelin/contracts@4.9.3/utils/Counters.sol";

contract intro{
    uint256 private cantidad;
    string public nombre ="Upao";

    address public cuentaInicial;
    address public cuentaUpdate;

    constructor (uint256 _valorCantidad) {
        cantidad = _valorCantidad;
        cuentaInicial = msg.sender;
    }

    function cambiarCantidad(uint256 _cantidad) public {
        cantidad = _cantidad;
        cuentaUpdate = msg.sender;
    }

    function obtenerCantidad() public view returns (uint256){
        return cantidad;

    }

    //funciones puras no modifican el estado
    function obtenerSuma(uint256 primero, uint256 segundo) public pure returns(uint256){
        return primero+segundo;
    }

}