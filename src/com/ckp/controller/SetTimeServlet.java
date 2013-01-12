package com.ckp.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ckp.model.Time;
import com.ckp.model.dao.DaoFactory;
import com.ckp.model.dao.TimeDAO;
/**
 * Servlet implementation class VoteServlet
 */
public class SetTimeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SetTimeServlet() {
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
		int day = Integer.parseInt(request.getParameter("day"));
		int month = Integer.parseInt(request.getParameter("month")) - 1;
		int year = Integer.parseInt(request.getParameter("year"));
		int hour = Integer.parseInt(request.getParameter("hour"));
		int minute = Integer.parseInt(request.getParameter("minute"));
		int second = Integer.parseInt(request.getParameter("second"));
		TimeDAO timedao = DaoFactory.getInstance().getTimeDAO();
		List<Time> times = timedao.findAll();
		if(times.size() == 0)
		{
			Time time = new Time(year, month, day, hour, minute, second);
			timedao.save(time);
		}
		else
		{
			times.get(0).setDay(day);
			times.get(0).setMonth(month);
			times.get(0).setYear(year);
			times.get(0).setHour(hour);
			times.get(0).setMin(minute);
			times.get(0).setSec(second);
			timedao.save(times.get(0));
		}
	}
}
