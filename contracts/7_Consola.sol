// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract Consola {

    // 1. se puede desactivar este evento
    //event Debug(string mensaje, address invocador);

    uint256 private cantidad = 249447;

    // 3. al no haber emisor, el sistema necesitará de view para mostrar
    function consultarCantidad() public view returns(uint256){
           console.log("Consultada por: ", msg.sender); // 4. se puede volver a activar para 
        // mostrar el log por consola
        // 2. y desactivar esta emisión
        // emit Debug("Consultada por: ", msg.sender);
        return cantidad;
    }

}