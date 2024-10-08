package com.lc.project.business.Controller;

import java.io.IOException;

import com.lc.project.business.Service.BusinessService;
import com.lc.project.business.Service.BusinessServiceImpl;
import com.lc.project.business.model.vo.Business;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BusinessLoginController
 */
public class BusinessLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BusinessLoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		Business b = new Business();
		b.setBsId(request.getParameter("bsId"));
		b.setBsPwd(request.getParameter("bsPwd"));
		
		BusinessService businessService = new BusinessServiceImpl(); 
		Business loginbs = businessService.loginBusiness(b);
		
		if (loginbs != null) {
		    request.getSession().setAttribute("loginUser", loginbs);
		    response.sendRedirect(request.getContextPath());
		    System.out.println("로그인성공");
		} else {
		    request.setAttribute("errorMessage", "아이디 또는 비밀번호가 잘못되었습니다."); // 추가
		    response.sendRedirect(request.getContextPath());
		    System.out.println("로그인실패");
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
