package com.lc.project.travel.controller;

import java.io.IOException;
import java.net.URLEncoder;

import com.lc.project.travel.service.TravelService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class travelReviewController
 */
@WebServlet(name = "review.tra", urlPatterns = { "/review.tra" })
public class travelReviewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public travelReviewController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String review = request.getParameter("review");
<<<<<<< HEAD
		String userName = request.getParameter("userName");
		String travel = request.getParameter("travel");
		int result = new TravelService().insertReview(review,userName,travel);
=======
		String userId = request.getParameter("userId");
		String travel = request.getParameter("travel");
		int result = new TravelService().insertReview(review,userId,travel);
>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
		String encodedTravel = URLEncoder.encode(travel, "UTF-8");
		if(result >0) {
			response.sendRedirect(request.getContextPath()+"/travel.info?travel="+encodedTravel);
		}else {
			
			request.getRequestDispatcher(request.getContextPath()).forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

<<<<<<< HEAD
}
=======
}
>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
