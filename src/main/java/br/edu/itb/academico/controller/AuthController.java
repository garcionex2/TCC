package br.edu.itb.academico.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.itb.academico.actions.Action;

/**
 * Servlet implementation class AuthController
 */
@WebServlet(name = "/AuthController", urlPatterns = {"/auth"})
public class AuthController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AuthController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String action_site = request.getParameter("action");
		System.out.println(action_site + "yt");
		String nomeClasse = "br.edu.itb.academico.actions."+action_site;
		System.out.println(nomeClasse);
		try {
			Class<?> classe = Class.forName(nomeClasse);
			Action action = (Action) classe.getDeclaredConstructor().newInstance();
			String pagina = action.executa(request, response);
			response.sendRedirect(pagina);	
		} catch (Exception e) {
			throw new ServletException();
		}
	}

}
