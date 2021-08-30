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
import com.minhalojadegames.lojadegames.model.GamesProduto;
import com.minhalojadegames.lojadegames.repository.GamesProdutoRepository;


@RestController
@RequestMapping("/Games/Produto")
@CrossOrigin("*")
public class GamesProdutoController {

	@Autowired
	private GamesProdutoRepository repository;

	@GetMapping
	public ResponseEntity<List<GamesProduto>> findAllProdutos() {
		return ResponseEntity.ok(repository.findAll());
	}

	@GetMapping("/{id}")
	public ResponseEntity<GamesProduto> findByIDProdutos(@PathVariable long id) {
		return repository.findById(id).map(resp -> ResponseEntity.ok(resp)).orElse(ResponseEntity.notFound().build());
	}

	@GetMapping("/nome/{nome}")
	public ResponseEntity<List<GamesProduto>> findAllByNome(@PathVariable String nome) {
		return ResponseEntity.ok(repository.findAllByNomeContainingIgnoreCase(nome));
	}
	
	@PostMapping
	public ResponseEntity<GamesProduto> postProdutos (@RequestBody GamesProduto games){
		return ResponseEntity.status(HttpStatus.CREATED).body(repository.save(games));
	}	
	
	@PutMapping
	public ResponseEntity<GamesProduto> putProdutos (@RequestBody GamesProduto games){
		return ResponseEntity.status(HttpStatus.OK).body(repository.save(games));
	}
	
	@DeleteMapping("/{id}")
	public void delete(@PathVariable long id) {
	repository.deleteById(id);	
	}
	
	
}