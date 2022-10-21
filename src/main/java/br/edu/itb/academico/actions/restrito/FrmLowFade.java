package br.edu.itb.academico.actions.restrito;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.itb.academico.actions.Action;

public class FrmLowFade implements Action{
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {

		return "/WEB-INF/jsp/lowFade.jsp";
	}


}
