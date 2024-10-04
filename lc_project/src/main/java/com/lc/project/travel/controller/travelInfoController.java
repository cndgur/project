package com.lc.project.travel.controller;

import java.io.IOException;
import java.util.ArrayList;

import com.lc.project.travel.model.vo.Travel;
import com.lc.project.travel.service.TravelService;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class travelInfoController
 */
public class travelInfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public travelInfoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String trName = request.getParameter("travel");
		System.out.println(trName);
		Travel t = new TravelService().selectTravel(trName);
		ArrayList<Travel> tlist = new TravelService().selectNearbyTravel(t.getTrAddress(),trName);
		request.setAttribute("t", t);
		request.setAttribute("tlist", tlist);
		request.getRequestDispatcher("views/detail/tr_infoPage.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
