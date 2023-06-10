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
