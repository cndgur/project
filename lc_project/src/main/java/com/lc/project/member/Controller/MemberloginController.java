package com.lc.project.member.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.lc.project.member.Service.MemberService;
import com.lc.project.member.Service.MemberServiceImpl;
import com.lc.project.member.model.vo.Member;

/**
 * Servlet implementation class MemberloginController
 */
public class MemberloginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberloginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		Member m = new Member();
		m.setUserId(request.getParameter("userId"));
		m.setUserPwd(request.getParameter("userPwd"));
		
		MemberService memberService = new MemberServiceImpl(); 
		Member loginUser = memberService.loginMember(m);
		
		if (loginUser != null) {
		    request.getSession().setAttribute("loginUser", loginUser);
		    response.sendRedirect(request.getContextPath());
		    System.out.println("로그인성공");
		} else {
		    request.setAttribute("errorMessage", "아이디 또는 비밀번호가 잘못되었습니다."); // 추가
		    request.getRequestDispatcher("views/member/loginview.jsp").forward(request, response);
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
