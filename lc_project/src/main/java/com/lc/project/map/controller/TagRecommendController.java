package com.lc.project.map.controller;

import java.io.IOException;
import java.util.ArrayList;

import com.lc.project.map.service.MapService;
import com.lc.project.map.service.MapServiceImpl;
import com.lc.project.travel.model.vo.Travel;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TagRecommendController
 */
public class TagRecommendController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TagRecommendController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MapService mService = new MapServiceImpl();
		
		String personnel = request.getParameter("personnel");
		String location = request.getParameter("location");
		String theme = request.getParameter("theme");
		
		System.out.println(request.getParameter("personnel"));
		System.out.println(request.getParameter("location"));
		System.out.println(request.getParameter("theme"));
		
		request.setAttribute("personnel", personnel);
	    request.setAttribute("location", location);
	    request.setAttribute("theme", theme);
	    
	    ArrayList<Travel> trList = mService.selectTravelTag(personnel, location, theme);
	    request.setAttribute("trList", trList);
	    
	    request.getRequestDispatcher("views/map/tagRecommendPage.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
