package com.minhalojadegames.lojadegames.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.minhalojadegames.lojadegames.model.Games;



@Repository
public interface GamesRepository extends JpaRepository<Games, Long> {
public List<Games> findAllByTituloContainingIgnoreCase (String titulo);


	
	
}
