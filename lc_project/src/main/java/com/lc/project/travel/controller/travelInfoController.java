package com.lc.project.travel.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

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
		TravelService tService = new TravelService();
		String trName = request.getParameter("travel");
		String location = request.getParameter("location");
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("trName", trName);
		map.put("location", location);
		
		Travel t = tService.selectTravel(trName);
		ArrayList<Travel> otherList = tService.otherList(map);
		
		request.setAttribute("t", t);
		request.setAttribute("location", location);
		request.setAttribute("otherList", otherList);
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
