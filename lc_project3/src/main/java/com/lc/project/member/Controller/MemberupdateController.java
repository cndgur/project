package com.lc.project.member.Controller;

import java.io.IOException;

import com.lc.project.member.Service.MemberService;
import com.lc.project.member.Service.MemberServiceImpl;
import com.lc.project.member.model.vo.Member;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MemberupdateController
 */
public class MemberupdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberupdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		Member m = new Member(
								request.getParameter("userName"),
								request.getParameter("userId"),
								request.getParameter("userPwd"),
								request.getParameter("tel"),
								request.getParameter("email"),
								request.getParameter("address")
							);
		MemberService memberService = new MemberServiceImpl();
		
		int result = new MemberServiceImpl().updateMember(m);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
