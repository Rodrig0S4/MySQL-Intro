package com.farmacia.farmacia.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.farmacia.farmacia.model.FarmaciaCategoria;

@Repository
public interface FarmaciaCategoriaRepository extends JpaRepository<FarmaciaCategoria, Long> {

	public List<FarmaciaCategoria> findAllByTituloContainingIgnoreCase (String titulo);
	
}
