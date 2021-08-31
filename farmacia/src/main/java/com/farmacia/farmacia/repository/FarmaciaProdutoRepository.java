package com.farmacia.farmacia.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.farmacia.farmacia.model.FarmaciaProduto;

@Repository
public interface FarmaciaProdutoRepository extends JpaRepository<FarmaciaProduto, Long> {
	public List<FarmaciaProduto>findAllByNomeContainingIgnoreCase(String nome);
	
	//@Query("from FarmaciaProduto where Nome like concat (? 1, '%'")
	//public List<FarmaciaProduto> pesquisarProduto(String nome);
		

}
