// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract BonusContract {

    string public vendedor;
    uint256 public bonus;

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
//0x96A51509049FCf655A300fae78E046C3261f801E
