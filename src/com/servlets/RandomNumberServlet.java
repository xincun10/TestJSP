package com.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.NumberBean;

public class RandomNumberServlet extends HttpServlet{

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		NumberBean bean = new NumberBean(Math.random());
		req.setAttribute("randomNum", bean);
		String address = "/WEB-INF/mvc-sharing/RandomNum.jsp";
		RequestDispatcher dispatcher = req.getRequestDispatcher(address);
		dispatcher.forward(req, resp);
	}

}
