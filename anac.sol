// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Pessoa {
    uint256 public idade = 18;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function setIdade(uint _novaIdade) public {
        require(msg.sender == owner, "Somente o dono do contrato pode executar essa funcao.");
        idade = _novaIdade;
    }

    function getIdade() public view returns (uint256) {
        return idade;
    }
}
