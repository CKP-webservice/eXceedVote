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
import com.ckp.model.dao.VoteDAO;
import com.ckp.controller.*;
/**
 * Servlet implementation class VoteServlet
 */
@WebServlet("/VoteServlet")
public class VoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VoteServlet() {
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
		System.out.println("vote project: " + request.getParameter("select"));
		System.out.println("test : " + request.getParameter("question"));
		int questionId = Integer.parseInt(String.valueOf(request.getParameter("question").charAt(8)));
		System.out.println(session.getAttribute("userID"));
		int userID = (Integer)session.getAttribute("userID");	
		Vote vote = new Vote(questionId, Integer.parseInt(request.getParameter("select")), userID);
		VoteDAO votedao = DaoFactory.getInstance().getVoteDAO();
		votedao.save(vote);
	}
}
