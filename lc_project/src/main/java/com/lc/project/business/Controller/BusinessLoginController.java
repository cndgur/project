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
            request.getSession().setAttribute("loginbs", loginbs);
            System.out.println("로그인성공");
            response.sendRedirect(request.getContextPath() + "?message=success"); // 성공 메시지 쿼리 파라미터 추가
        } else {
            request.getSession().setAttribute("errorMessage", "아이디 또는 비밀번호가 잘못되었습니다."); // 에러 메시지 세션에 저장
            System.out.println("로그인실패");
            response.sendRedirect(request.getContextPath() + "?message=error"); // 에러 메시지 쿼리 파라미터 추가
        }
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
