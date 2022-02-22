//SPDX-License-Identifier: MIT
pragma solidity ^0.4.19;

import "./zombiefactory.sol";

contract FeedAndMultipli is ZombieFactory {
    function alimentarse(uint _id, uint _dna) public view returns(uint) {
    uint dnaNewZb = (zombies[_id].dna + _dna) / 2;
    return dnaNewZb;
    } 
}