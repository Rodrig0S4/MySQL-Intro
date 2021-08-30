package com.minhalojadegames.lojadegames.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.minhalojadegames.lojadegames.model.Games;
import com.minhalojadegames.lojadegames.repository.GamesRepository;

@RestController
@RequestMapping("/Games")
@CrossOrigin("*")
public class GamesController {

	@Autowired
	private GamesRepository repository;

	@GetMapping
	public ResponseEntity<List<Games>> findAllGames() {
		return ResponseEntity.ok(repository.findAll());
	}

	@GetMapping("/{id}")
	public ResponseEntity<Games> findByIDCategoria(@PathVariable long id) {
		return repository.findById(id).map(resp -> ResponseEntity.ok(resp)).orElse(ResponseEntity.notFound().build());
	}

	@GetMapping("/titulo/{titulo}")
	public ResponseEntity<List<Games>> findAllByTitulo(@PathVariable String titulo) {
		return ResponseEntity.ok(repository.findAllByTituloContainingIgnoreCase(titulo));
	}
	
	@PostMapping
	public ResponseEntity<Games> postCategoria (@RequestBody Games games){
		return ResponseEntity.status(HttpStatus.CREATED).body(repository.save(games));
	}	
	
	@PutMapping
	public ResponseEntity<Games> putCategoria (@RequestBody Games games){
		return ResponseEntity.status(HttpStatus.OK).body(repository.save(games));
	}
	
	@DeleteMapping("/{id}")
	public void delete(@PathVariable long id) {
	repository.deleteById(id);	
	}
	
	
}
