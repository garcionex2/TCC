package br.edu.itb.academico.filters;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

import br.edu.itb.academico.database.ConnectionFactory;


@WebFilter(filterName = "ConnectionFilter", urlPatterns = {"/*"})
public class ConnectionFilter implements Filter {

   
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		System.out.println("filtro...");
		
		try {
		Connection connection = ConnectionFactory.connectionSqlServer();
		request.setAttribute("connection", connection);
			chain.doFilter(request, response);
		connection.close();

		} catch (Exception e) {
			throw new ServletException();
		}
		
	}

	
	}
