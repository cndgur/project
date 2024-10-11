package com.lc.project.rentcar.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;

import com.lc.project.rentcar.service.RentCarService;

/**
 * Servlet implementation class RentCarBookingController
 */
public class RentCarBookingController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RentCarBookingController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		String carNum = request.getParameter("carNum");
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		String location = request.getParameter("location");
		String loginUser = request.getParameter("loginUser");
		
//		if(loginUser == null) {
//			request.getRequestDispatcher("views/member/selectLogin.jsp").forward(request, response);
//			request.setAttribute("alertMsg", "로그인 후 이용해주세요");
//		} else {
			HashMap<String, String> map = new HashMap<String, String>();
			
			map.put("loginUser", loginUser);
			map.put("startDate", startDate);
			map.put("endDate", endDate);
			map.put("carNum", carNum);
			map.put("location", location);
			
			int result = new RentCarService().bookingCar(map);
			
			if(result > 0) {
				int carStatus = new RentCarService().carStatus(carNum);
				System.out.println(carStatus);
			} else {
				System.out.println("실패");
			}
		}		
//	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
