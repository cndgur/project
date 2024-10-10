package com.lc.project.travel.controller;

import java.io.IOException;
import java.util.ArrayList;

import com.lc.project.member.model.vo.Member;
import com.lc.project.travel.model.vo.Travel;
import com.lc.project.travel.model.vo.tReview;
import com.lc.project.travel.service.TravelService;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

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
		TravelService tServ = new TravelService();
		Travel t = tServ.selectTravel(trName);
		String[] strArr = t.getTrAddress().split(" ");
		String tAdd = strArr[0]+" "+strArr[1];
		ArrayList<Travel> tlist = tServ.selectNearbyTravel(tAdd,trName);
		for(Travel tra : tlist) {
			tra.setTrAddress(tAdd);
		}
		ArrayList<tReview> rlist = tServ.selectTReview(trName);
		HttpSession session = request.getSession();
		session.setAttribute("loginUser", new Member("admin","1234","관리자","010-1111-2222"));
		request.setAttribute("t", t);
		request.setAttribute("tlist", tlist);
		request.setAttribute("rlist", rlist);
		
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
