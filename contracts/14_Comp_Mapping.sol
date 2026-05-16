// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract CompMapping {
    
    uint256 secuencial = 100; 

    //Struct
    struct Empleado {
        string nombre;
        uint edad;
    }

    struct 

    // clave valor
    mapping(uint => Empleado) public empleados;

    function addEmpleado(uint256 id, string memory _nombre, uint _edad) public {
        empleados[id] = Empleado(_nombre, _edad);
        secuencial = secuencial +1;
    }
}