package br.edu.itb.academico.actions;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.itb.academico.model.Usuario;
import br.edu.itb.academico.service.UsuarioDao;

public class InserirAlunoAction implements Action{

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		Connection connection = (Connection)request.getAttribute("connection");
		 UsuarioDao usuarioDao = new UsuarioDao(connection);
		 
		 String nome = request.getParameter("usuario.nome");
		 String sobrenome = request.getParameter("usuario.sobrenome");
		 String email = request.getParameter("usuario.email");
		 String senha = request.getParameter("usuario.senha");
		 
		System.out.println(nome + sobrenome + email + senha);

		 Usuario usuario = new Usuario(nome, sobrenome, email, senha);
	
		 
			if ( usuarioDao.insertUsuario(usuario) != 0) {
				System.out.println("Aluno inserido com sucesso!");
			} else {
				System.out.println("Erro: Aluno não inserido !!");
			}
			
			

			return "/WEB-INF/jsp/cortes.jsp";
		 
		
	}

}
