// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "hardhat/console.sol";

contract Universidad000253019 {
    
    struct Estudiante {
        uint256 id;
        string nombre;
        uint256 edad;
        bool estado;
    }

    Estudiante[] public estudiantes;
    address public dirContrato;

    modifier registrarEjecutor() {
        console.log("Ejecutado por: 000253019 - Marco Armando Zapata Sotomayor");
        _;
    }

    constructor() registrarEjecutor {
        dirContrato = address(this);
    }

    function agregarElemento(uint256 _id, string memory _nombre, uint256 _edad) public registrarEjecutor {
        for (uint256 i = 0; i < estudiantes.length; i++) {
            require(estudiantes[i].id != _id, "El ID ya existe");
        }
        require(_edad > 0, "La edad debe ser mayor a 0");

        estudiantes.push(Estudiante(_id, _nombre, _edad, true));
    }

    function contarElementos() public view registrarEjecutor returns (uint256) {
        return estudiantes.length;
    }

  
    function inactivarElemento(uint256 _posicion) public registrarEjecutor {
        require(_posicion < estudiantes.length, "Posicion fuera de rango");
        estudiantes[_posicion].estado = false;
    }

    function pintarElementosActivos() public view registrarEjecutor {
        for (uint256 i = 0; i < estudiantes.length; i++) {
            if (estudiantes[i].estado) {
                console.log("Estudiante activo:", estudiantes[i].id, estudiantes[i].nombre);
            }
        }
    }

    function pintarElementosImpares() public view registrarEjecutor {
        for (uint256 i = 0; i < estudiantes.length; i++) {
            if (estudiantes[i].id % 2 != 0) {
                console.log("Estudiante ID impar:", estudiantes[i].id, estudiantes[i].nombre);
            }
        }
    }
}