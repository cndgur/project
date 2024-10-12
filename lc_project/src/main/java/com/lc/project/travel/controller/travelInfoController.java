package com.lc.project.travel.controller;

import java.io.IOException;
import java.util.ArrayList;

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
		char[] charArray = t.getTr_personnel().toCharArray();
		ArrayList<String> category = new ArrayList();
		for(int i = 0 ; i <charArray.length; i++) {
			int a = Integer.parseInt(charArray[i]+"");
			switch(a) {
			case 1:
				category.add("��������");
				break;
			case 2:
				category.add("ģ�����");
				break;
			case 3:
				category.add("1�ο���");
				break;
			case 4:
				category.add("Ŀ�ÿ���");
				break;
			case 5:
				category.add("�ݷ�����");
				break;
			case 6:
				category.add("ģ�����");
				break;
			case 7:
				category.add("��ũ��");
				break;
			case 8:
				category.add("���̵��");
				break;
			}
		}
		
		String[] strArr = t.getTrAddress().split(" ");
		String tAdd = strArr[0]+" "+strArr[1];
		ArrayList<Travel> tlist = tServ.selectNearbyTravel(tAdd,trName);
		for(Travel tra : tlist) {
			tra.setTrAddress(tAdd);
		}
		ArrayList<tReview> rlist = tServ.selectTReview(trName);
		HttpSession session = request.getSession();
		request.setAttribute("t", t);
		request.setAttribute("category",category);
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