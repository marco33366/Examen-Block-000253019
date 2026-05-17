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


    mapping(uint256 => Estudiante) public estudiantes;
    

    uint256[] private listaIds;
    
    uint256 public cantidad;
    address public dirContrato;

    modifier registrarEjecutor() {
        console.log("Ejecutado por: 000253019 - Marco Armando Zapata Sotomayor");
        _;
    }

    constructor() registrarEjecutor {
        dirContrato = address(this);
    }

    function agregarElemento(uint256 _id, string memory _nombre, uint256 _edad) public registrarEjecutor {
        require(_id > 0, "El ID debe ser mayor a 0");
        require(estudiantes[_id].id == 0, "El ID ya existe");
        require(_edad > 0, "La edad debe ser mayor a 0");

        estudiantes[_id] = Estudiante(_id, _nombre, _edad, true);
        listaIds.push(_id);
        cantidad++; // Incremento solicitado
    }

    function contarElementos() public view registrarEjecutor returns (uint256) {
        return cantidad;
    }


    function inactivarElemento(uint256 _id) public registrarEjecutor {
        require(estudiantes[_id].id != 0, "El estudiante no existe");
        estudiantes[_id].estado = false;
    }

    function pintarElementosActivos() public view registrarEjecutor {
        for (uint256 i = 0; i < listaIds.length; i++) {
            uint256 currentId = listaIds[i];
            if (estudiantes[currentId].estado) {
                console.log("Estudiante activo:", estudiantes[currentId].id, estudiantes[currentId].nombre);
            }
        }
    }

    function pintarElementosImpares() public view registrarEjecutor {
        for (uint256 i = 0; i < listaIds.length; i++) {
            uint256 currentId = listaIds[i];
            if (estudiantes[currentId].id % 2 != 0) {
                console.log("Estudiante ID impar:", estudiantes[currentId].id, estudiantes[currentId].nombre);
            }
        }
    }
}