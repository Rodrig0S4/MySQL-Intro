package com.minhalojadegames.lojadegames.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.minhalojadegames.lojadegames.model.GamesProduto;


@Repository
public interface GamesProdutoRepository extends JpaRepository<GamesProduto, Long> {
public List<GamesProduto> findAllByNomeContainingIgnoreCase (String nome);

}
