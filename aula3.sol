// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract AluguelContract {

    string public nomeLocador;
    string public nomeLocatario;
    uint256 [] public valoresAluguel;

    constructor(string memory _nomeLocador, string memory _nomeLocatorio, uint256 [] memory _valoresAluguel) {
        nomeLocador = _nomeLocador;
        nomeLocatario = _nomeLocatorio;
        valoresAluguel = _valoresAluguel;
    }

	function valorAluguelPorMes(uint numeroMes) public view returns (uint256) {
        return valoresAluguel[numeroMes];
	}
	
	function participantesName() public view returns (string memory, string memory) {
		return (nomeLocador, nomeLocatario);
	}

    function nameLocador() public view returns (string memory) {
    return nomeLocador;
	}

    function alterarNome(uint tipoPessoa, string memory novoNome) public {
    if(tipoPessoa == 1){
        nomeLocatario = novoNome;
    }else if (tipoPessoa == 2){
        nomeLocador = novoNome;
    }
	}

    function reajusteAluguel(uint mesInicial, uint valorReajuste) public {

    for (uint i=0; i <= valoresAluguel.length; i++) {
       if(i >= mesInicial){
           valoresAluguel[i] += valorReajuste;
       }
    }
	}

}