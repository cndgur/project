package com.lc.project.business.Controller;

import java.io.IOException;

import com.lc.project.business.Service.BusinessServiceImpl;
import com.lc.project.business.model.vo.Business;
import com.lc.project.member.Service.MemberServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BusinessInsertController
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
		
		Business m = new Business(
								request.getParameter("bsName"),
								request.getParameter("bsId"),
								request.getParameter("bsPwd"),
								request.getParameter("bsEmail"),
								request.getParameter("bsTel"),
								request.getParameter("bsAddress"),
								request.getParameter("bsTitle")
							);
		
		int result = new BusinessServiceImpl().insertBusiness(m);
		
		if(result > 0) {
			response.sendRedirect(request.getContextPath() + "/login.bs");
			System.out.println("회원가입성공");
		} else {
			request.setAttribute("errorMsg", "회원가입 실패");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
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