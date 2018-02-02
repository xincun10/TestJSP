package com.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ScopedVars extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("attribute1", "request value");
		HttpSession session = req.getSession();
		session.setAttribute("attribute2", "session value");
		ServletContext application = this.getServletContext();
		application.setAttribute("attribute3", "servletContext value");
		
		//≤È’“ Ù–‘µƒÀ≥–Ú£¨PageContext,HttpServletRequest,HttpSession,ServletContext
		req.setAttribute("repeat", "request");
		session.setAttribute("repeat", "session");
		application.setAttribute("repeat", "servletContext");
		RequestDispatcher dispatcher = 
				req.getRequestDispatcher("/el/scoped-vars.jsp");
		dispatcher.forward(req, resp);
	}

}
