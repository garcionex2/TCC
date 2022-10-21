package br.edu.itb.academico.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.time.DateTimeException;
import java.util.ArrayList;
import java.util.Calendar;
import java.sql.Date;
import java.util.List;


import br.edu.itb.academico.model.Usuario;

public class UsuarioDao {

	private Usuario usuario;
	private List<Usuario> usuarios;
	protected Connection connection = null;
	protected int lastId;
	protected int success;
	
	public UsuarioDao(Connection connection) {
		this.connection = connection;
	}
	
	String sqlListUserByEmail = "select * from CLIENTE where cliente.email=?";
	
	String sqlListAll = "select * from dbo.CLIENTE";
	
	String sqlInsertAluno = "insert into  dbo.CLIENTE "
			+ "(nome,sobrenome, email, senha) values "
			+ "(?, ?, ?, ?)";
	
	String sqlUpdateAluno = "update usuarios set "
			+ "usuarios.nome = ?,"
			+ "usuarios.email = ?,"
			+ "where usuarios.id = ?";
	
	String sqlDeleteAluno="delete from usuarios where usuarios.id=?";
	
	public List<Usuario>getUsuarios() {
		
	usuarios = new ArrayList<Usuario>();
		
		try {
			PreparedStatement stmt = connection.prepareStatement(sqlListAll);
			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				Usuario usuario = new Usuario();
				usuario.setId(rs.getLong("ID_CLIENTE"));
				usuario.setNome(rs.getString("NOME"));
				usuario.setSobrenome(rs.getString("SOBRENOME"));
				usuario.setEmail(rs.getString("EMAIL"));
				usuario.setSenha(rs.getString("SENHA"));
				usuarios.add(usuario);	
			}	
		 } catch (Exception e) {
			throw new RuntimeException(e);
		}
		
		return usuarios;
	}
	
	
	public int insertUsuario(Usuario usuario) {
		try {			
			PreparedStatement stmt = connection.prepareStatement(sqlInsertAluno, Statement.RETURN_GENERATED_KEYS);
			stmt.setString(1, usuario.getNome());
			stmt.setString(2, usuario.getSobrenome());
			stmt.setString(3, usuario.getEmail());
			stmt.setString(4, usuario.getSenha());
			
			stmt.executeUpdate();
			// Buscando o id do último registro cadastrado
			ResultSet rs = stmt.getGeneratedKeys();
			if(rs.next()) {
				lastId = rs.getInt(1);	
			}
		} catch (Exception e) {
			throw new RuntimeException();
		}
		return lastId;
	}
	
	public int updateAluno(UsuarioDao usuarioDao) {
		try {
			PreparedStatement stmt = connection.prepareStatement(sqlUpdateAluno);
			stmt.setString(1, usuario.getNome());
			stmt.setString(4, usuario.getEmail());
			stmt.setLong(6, usuario.getId());
			success = stmt.executeUpdate();
			
	
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return success;
	}
	
	public int deleteAluno(long id) {
		try {
			PreparedStatement stmt = connection.prepareStatement(sqlDeleteAluno);
			stmt.setLong(1, id);
			success = stmt.executeUpdate();
		}catch (Exception e){
			throw new RuntimeException();
		}
		return success;
	}
	public Usuario login(Usuario usuario) {
		try {
			Usuario usuarioBanco = this.findUserByEmail(usuario.getEmail());
			if(usuarioBanco != null) {
				//verificação da senha!
				
				if(usuarioBanco.validarSenhaCriptografada(usuario.getSenha(), usuarioBanco.getSenha())){
					
				this.usuario = usuarioBanco;
			}else{
				this.usuario = null;
			}
			}else {
				this.usuario = null;
			}
				
			
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return this.usuario;
	}


	private Usuario findUserByEmail(String email) {
		try {
			PreparedStatement stmt = connection.prepareStatement(sqlListUserByEmail);
			stmt.setString(1, email);
			ResultSet rs = stmt.executeQuery();
			int numUser = 0;
			while(rs.next()) {
				Usuario us = new Usuario();
				us.setId(rs.getLong("ID_CLIENTE"));
				us.setNome(rs.getString("NOME"));
				us.setSobrenome(rs.getString("SOBRENOME"));
				us.setEmail(rs.getString("EMAIL"));
				us.setSenha(rs.getString("SENHA"));
				numUser++;
				this.usuario=us;
			}
			if(numUser == 0) {
				this.usuario = null;
			}
			
		} catch (Exception e) {
			throw new RuntimeException(e);

		}
		return this.usuario;
	}

}













