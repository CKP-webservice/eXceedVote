package com.ckp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ckp.model.User;
import com.ckp.model.dao.DaoFactory;
import com.ckp.model.dao.UserDAO;
/**
 * Servlet implementation class VoteServlet
 */
public class AddAccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddAccountServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Pragma", "no-cache");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String digestPassword = Encryptor.encryptMessageMD5(password);
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		int role = Integer.parseInt(request.getParameter("role"));
		int teamId = Integer.parseInt(request.getParameter("team"));
		User user = new User(firstname, lastname, username, digestPassword, role, teamId);
		UserDAO userdao = DaoFactory.getInstance().getUserDAO();
		userdao.save(user);
	}
}
