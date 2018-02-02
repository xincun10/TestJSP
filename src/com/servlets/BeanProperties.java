package com.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.*;

public class BeanProperties extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		NameBean name = new NameBean("xianyu", "tian");
		CompanyBean company = new CompanyBean("company", "manager");
		EmployeeBean employee = new EmployeeBean(name, company);
		req.setAttribute("employee", employee);
		RequestDispatcher dispatcher = 
				req.getRequestDispatcher("/el/bean-properties.jsp");
		dispatcher.forward(req, resp);
	}

}
