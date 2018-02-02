package com.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.beans.*;

public class RegistrationServlet extends HttpServlet{

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		NameBean nameBean = (NameBean) session.getAttribute("nameBean");
		if(nameBean==null)
		{
			nameBean = new NameBean();
			session.setAttribute("nameBean", nameBean);
		}
		String firstName = req.getParameter("firstName");
		if(firstName!=null && !firstName.trim().equals(""))
		{
			nameBean.setFirstName(firstName);
		}
		String lastName = req.getParameter("lastName");
		if(lastName!=null && !lastName.trim().equals(""))
		{
			nameBean.setLastName(lastName);
		}
		String address = "/WEB-INF/mvc-sharing/ShowName.jsp";
		RequestDispatcher dispatcher = req.getRequestDispatcher(address);
		dispatcher.forward(req, resp);
	}

}
