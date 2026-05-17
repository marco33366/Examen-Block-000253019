// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "hardhat/console.sol";

contract Universidad000253019 {
    
    struct Estudiante {
        uint256 id;
        string nombre;
        uint256 edad;
    }

    // Arreglo público para almacenar los registros
    Estudiante[] public estudiantes;

    constructor() {
        console.log("Ejecutado por: 000253019 - Marco Armando Zapata Sotomayor");
    }
}