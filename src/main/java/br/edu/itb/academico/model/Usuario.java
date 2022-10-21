package br.edu.itb.academico.model;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Objects;

import br.edu.itb.academico.utils.BCrypt;

public  class Usuario {

	protected Long id;
	protected String nome;
	protected String sobrenome;
	protected String email;
	protected String senha;
	
	
	public Usuario() {
	
	}
	
	public Usuario(String nome, String sobrenome, String email, String senha) {
		
		this.nome = nome;
		this.sobrenome = sobrenome;
		this.email = email;
		this.senha = this.cifrarSenha(senha);
	}
	
	public String cifrarSenha(String senha) {
		//Gera um salt aleatório
		String saltGerado = BCrypt.gensalt();
		//Gerando a senha hashead utilizando o saltGerado
		String senhaHasheada = BCrypt.hashpw(senha, saltGerado);
		
		return senhaHasheada;
	}
	
	public boolean validarSenhaCriptografada(String senhaCifrada, String senha) {
		return BCrypt.checkpw(senhaCifrada, senha);
	}
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getSobrenome() {
		return sobrenome;
	}
	public void setSobrenome(String sobrenome) {
		this.sobrenome = sobrenome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	@Override
	public int hashCode() {
		return Objects.hash(id);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Usuario other = (Usuario) obj;
		return Objects.equals(id, other.id);
	}
	
	
	
	
	
	
	
}
