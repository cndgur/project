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
 * Servlet implementation class MemberLoginController
 */
public class MemberLoginviewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberLoginviewController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
<<<<<<< HEAD:lc_project/src/main/java/com/lc/project/member/Controller/MemberLoginController.java
		request.getRequestDispatcher("views/member/loginmember.jsp").forward(request, response);
=======
		request.getRequestDispatcher("views/member/loginview.jsp").forward(request, response);
>>>>>>> 5761b0b40c3b1cc1c3d9848426aa0141b5aecfb7:lc_project/src/main/java/com/lc/project/member/Controller/MemberLoginviewController.java
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
