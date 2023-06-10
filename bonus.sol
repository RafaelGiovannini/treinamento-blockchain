// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Example7CommContract {

    string public vendedor;
    uint256 private bonus;

    constructor(string memory nomeVendedor,uint256 valorBonus) {
        nomeVendedor = nomeVendedor;
        valorBonus = valorBonus;
    }

	function getBonus() public pure returns (uint256 valorVenda) {

        if(valorVenda <= 50){
            return valorVenda * 50;
        }else{
            return  valorVenda * 100;
        }
	}
	
}