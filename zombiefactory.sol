//SPDX-License-Ientifier: MIT
pragma solidity ^0.8.3;

contract ZombieFactory{
    struct Zombie{
        string name;
        uint dna;
    }

    Zombie[] Cuartel;
    function CrearZombie(string calldata _name, uint _dna) public {
        Cuartel.push(Zombie("prueva", 1));
    }
}