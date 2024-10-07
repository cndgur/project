package com.lc.project.business.Controller;

import java.io.IOException;

import com.lc.project.business.Service.BusinessServiceImpl;
import com.lc.project.business.model.vo.Business;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BusinessinsertController
 */
public class BusinessinsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BusinessinsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		Business b = new Business(
									request.getParameter("bsName"),
									request.getParameter("bsId"),
									request.getParameter("bsPwd"),
									request.getParameter("bsEmail"),
									request.getParameter("bsTel"),
									request.getParameter("bsAddress"),
									request.getParameter("bsTitle")

								);
		
		int result = new BusinessServiceImpl().insertBusiness(b);
		if(result > 0) {
			response.sendRedirect(request.getContextPath() + "/login.me");
			System.out.println("회원가입성공");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
