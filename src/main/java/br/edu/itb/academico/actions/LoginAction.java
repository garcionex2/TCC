package br.edu.itb.academico.actions;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.edu.itb.academico.model.Usuario;
import br.edu.itb.academico.service.UsuarioDao;

public class LoginAction implements Action {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Connection connection = (Connection)request.getAttribute("connection");
		
		request.getSession().invalidate();
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		
		String action = "";
		
		Usuario usuario = new Usuario();
		usuario.setEmail(email);
		usuario.setSenha(senha);
		System.out.println(email + senha);
		
		UsuarioDao usuarioDao = new UsuarioDao(connection);
		HttpSession session = request.getSession();
		
		Usuario usuarioBd = usuarioDao.login(usuario);
		if(usuarioBd !=null) {
			session.setAttribute("email", usuarioBd.getEmail());
			System.out.println("Usuario Logado!");
			action="/barberkings/restrito?action=FrmCortesAction";
		}else {
			System.out.println("Usuario não encontrado!");
			action="/academico/restrito?action=FrmLoginAction&box=1";
		}
		
		return action;
	}

}
