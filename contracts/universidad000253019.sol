// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "hardhat/console.sol";

contract Universidad000253019 {
    
    struct Estudiante {
        uint256 id;
        string nombre;
        uint256 edad;
    }

    Estudiante[] public estudiantes;
    address public dirContrato;

    constructor() {
        console.log("Ejecutado por: 000253019 - Marco Armando Zapata Sotomayor");
        dirContrato = address(this);
    }

    function agregarElemento(uint256 _id, string memory _nombre, uint256 _edad) public {
        estudiantes.push(Estudiante(_id, _nombre, _edad));
    }

    function contarElementos() public view returns (uint256) {
        console.log("Ejecutado por: 000253019 - Marco Armando Zapata Sotomayor");
        return estudiantes.length;
    }
}