// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract BonusContract {

    string public vendedor;
    uint256 private bonus;

    constructor(string memory nomeVendedor,uint256 valorBonus) {
        nomeVendedor = nomeVendedor;
        valorBonus = valorBonus;
    }

	function getBonus(uint256 valorVenda) public pure returns (uint256 valorBonus) {

        if(valorVenda <= 50){
            return valorVenda * 50;
        }else{
            return  valorVenda * 100;
        }
	}
	
}

//0xb33d91DBb01B2054d32Aa00F595839E9d2e814d3
