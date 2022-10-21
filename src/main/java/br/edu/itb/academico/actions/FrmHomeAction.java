package br.edu.itb.academico.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FrmHomeAction implements Action{
	
	public String executa(HttpServletRequest request, HttpServletResponse response ) throws Exception {
		
		
		return "/WEB-INF/jsp/home.jsp";
		
	}

}
