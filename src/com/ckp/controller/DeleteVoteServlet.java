package com.ckp.controller;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import com.ckp.model.*;
import com.ckp.model.dao.DaoFactory;
import com.ckp.model.dao.UserDAO;
import com.ckp.model.dao.VoteDAO;
import com.ckp.controller.*;
/**
 * Servlet implementation class VoteServlet
 */
@WebServlet("/VoteServlet")
public class DeleteVoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteVoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Pragma", "no-cache");
		int id = Integer.parseInt(request.getParameter("id"));
		VoteDAO votedao = DaoFactory.getInstance().getVoteDAO();
		Vote vote = votedao.find(id);
		votedao.delete(vote);
		response.sendRedirect("AdminViewResult");
	}
}
