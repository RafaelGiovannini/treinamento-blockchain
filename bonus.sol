// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract BonusContract {

    string public vendedor;
    uint256 public bonus;

    constructor(string memory nomeVendedor,uint256 valorBonus) {
        vendedor = nomeVendedor;
        bonus = valorBonus;
    }

	function getBonus(uint256 valorVenda) public view returns (uint256 valorTotalBonus) {
        return  valorVenda * bonus;
	}
	
}

//0xE07952DE253D1442007570A4618d108F53Eb5E3c

