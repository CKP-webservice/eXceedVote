package com.ckp.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ckp.model.Role;
import com.ckp.model.dao.DaoFactory;
import com.ckp.model.dao.RoleDAO;

/**
 * Servlet implementation class VoteServlet
 */
public class SetRoleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SetRoleServlet() {
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
		PrintWriter out = response.getWriter();
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Pragma", "no-cache");
		int roleid = Integer.parseInt(request.getParameter("roleid"));
		int limit = Integer.parseInt(request.getParameter("limit"));
		RoleDAO roledao = DaoFactory.getInstance().getRoleDAO();
		Role role = roledao.find(roleid);
		role.setVoteLimit(limit);
		roledao.save(role);
		out.print(limit);
	}
}
