//SPDX-License-Ientifier: MIT
pragma solidity ^0.4.19;

contract ZombieFactory{
    uint digitNumber = 16;
    uint dnaModulus = 10 ** digitNumber;

    struct Zombie{
        string name;
        uint dna;
    }

    Zombie[] public Cuartel;
    function CrearZombie(string _name, uint _dna) private {
        Cuartel.push(Zombie(_name, _dna));
    }
    function genRandom(string name) private returns(uint){
        uint lol = uint(keccak256(name));
        uint dna = lol % dnaModulus;
        return dna;
    }
    function RandomZombie(string _nombre) public {
        uint dnaRandom = genRandom(_nombre);
        CrearZombie(_nombre, dnaRandom);
    }
}