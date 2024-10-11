package com.lc.project.business.Controller;

import java.io.IOException;

import com.lc.project.business.Service.BusinessServiceImpl;
import com.lc.project.business.model.vo.Business;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BusinessInsertController
 */
public class BusinessInsertController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public BusinessInsertController() {
        super();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        
        Business m = new Business(
            request.getParameter("bsName"),
            request.getParameter("bsId"),
            request.getParameter("bsPwd"), // 비밀번호 암호화 제거
            request.getParameter("bsEmail"),
            request.getParameter("bsTel"),
            request.getParameter("bsAddress"),
            request.getParameter("bsTitle")
        );

        int result = new BusinessServiceImpl().insertBusiness(m);
        
        if (result > 0) {
            response.sendRedirect(request.getContextPath() + "/login.bs");
            System.out.println("회원가입 성공");
        } else {
            request.setAttribute("errorMsg", "회원가입 실패");
            // 실패 시에 대한 처리가 필요할 수 있습니다. 예를 들어, 오류 페이지로 리다이렉션할 수 있습니다.
        }
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
