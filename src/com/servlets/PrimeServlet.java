package com.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.beans.*;

public class PrimeServlet extends HttpServlet{

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String length = req.getParameter("primeLength");
		ServletContext context = this.getServletContext();
		synchronized(this)
		{
			if((context.getAttribute("primeBean")==null) || (length!=null))
			{
				PrimeBean primeBean = new PrimeBean(length);
				context.setAttribute("primeBean", primeBean);
			}
		}
		String address = "/WEB-INF/mvc-sharing/ShowPrime.jsp";
		RequestDispatcher dispatcher = req.getRequestDispatcher(address);
		dispatcher.forward(req, resp);
	}

}
