package com.minhalojadegames.lojadegames.model;

	import java.util.Date;

	import javax.persistence.Entity;
	import javax.persistence.GeneratedValue;
	import javax.persistence.GenerationType;
	import javax.persistence.Id;
	import javax.persistence.Table;
	import javax.persistence.Temporal;
	import javax.persistence.TemporalType;
	import javax.validation.constraints.NotNull;
	import javax.validation.constraints.Size;

	@Entity
	@Table(name = "tb_produto_games")
	public class GamesProduto {
		
		
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private long id;
		
		@NotNull
		@Size(min = 5, max = 100)
		private String nome;
		
		
		@NotNull
		@Size(min = 5, max = 100)
		private float preco;

		@NotNull
		@Size(min = 10, max = 500)
		private int quantidade;

		@Temporal(TemporalType.TIMESTAMP)
		private Date date = new java.sql.Date(System.currentTimeMillis());

		public long getId() {
			return id;
		}

		public void setId(long id) {
			this.id = id;
		}

		public String getNome() {
			return nome;
		}

		public void setNome(String nome) {
			this.nome = nome;
		}

		public float getPreco() {
			return preco;
		}

		public void setPreco(float preco) {
			this.preco = preco;
		}

		public int getQuantidade() {
			return quantidade;
		}

		public void setQuantidade(int quantidade) {
			this.quantidade = quantidade;
		}

		public Date getDate() {
			return date;
		}

		public void setDate(Date date) {
			this.date = date;
		}

	}
		
		


