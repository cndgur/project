package com.lc.project.member.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class MemberSelectEnrollController
 */
public class MemberSelectEnrollController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberSelectEnrollController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
<<<<<<< HEAD
		request.getRequestDispatcher("views/member/selectlogin.jsp").forward(request, response);
=======
<<<<<<< HEAD
		request.getRequestDispatcher("views/member/selectenroll.jsp").forward(request, response);
=======
		request.getRequestDispatcher("views/member/selectlogin.jsp").forward(request, response);
>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
