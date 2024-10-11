<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<<<<<<< HEAD
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
=======
>>>>>>> 2125b8d1c749ba2a3fe8ab66f4f73b6fb9313d34
<%
    String contextPath = request.getContextPath(); // 컨텍스트 경로 얻기
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jua&family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<%=contextPath %>/css/header.css">
</head>
<body>
<<<<<<< HEAD
    <div id="header_wrapper">
        <div id="header_wrapper1">
            <div id="header_logo"><a href="<%=contextPath %>"><img src="<%=contextPath %>/pic/logo.png" alt="" width="80" height="64"></a></div>
            <div id="header_letter"><a href="<%=contextPath %>">방구석 여행</a></div>
        </div>
        <div id="header_signIn"><button>로그인</button></div>
    </div>
    <div class="header">
        <div class="header_bar"></div>
            <div class="header_func">
                 <a href="" class="to_main">
                     <div class="header_name">방구석여행</div>
                     <img src="./pic/logo.png" alt="" class="header_main_logo">
                 </a>
                 <c:choose>
				     <c:when test="${empty loginUser && empty loginbs}">
				         <!-- 로그인 전 -->
				         <a href="./views/member/selectlogin.jsp" class="to_login">
				             <div><input type="button" class="header_btn" value="로그인"></div>
				         </a>
				     </c:when>
				     <c:when test="${!empty loginUser}">
				        <!-- 일반 사용자 로그인 후 -->
                 <div class="dropdown">
                     <button type="button" class="btn" data-bs-toggle="dropdown">
                         <img id="hamBtn" src="./pic/hamburgerBtn.png" alt="hamburgerBtn" width="30px" height="22px">
                         <img id="avatar" src="./pic/avatar.png" alt="avatar" width="35px" height="35px">
                     </button>
                     <ul class="dropdown-menu">
                         <li><a class="dropdown-item" href="./views/common/myPage.jsp">마이페이지</a></li>
                         <li><a class="dropdown-item" href="logout.me">로그아웃</a></li>
                     </ul>
                 </div>
				    </c:when>
				    <c:when test="${!empty loginbs}">
				    <!-- 사업자 로그인 후 -->
				    <div class="dropdown">
				        <button type="button" class="btn" data-bs-toggle="dropdown">
				            <img id="hamBtn" src="./pic/hamburgerBtn.png" alt="hamburgerBtn" width="30px" height="22px">
				            <img id="avatar" src="./pic/profile-removebg-preview.png" alt="avatar" width="35px" height="35px">
				        </button>
				        <ul class="dropdown-menu">
				            <li><a class="dropdown-item" href="./views/common/myPage2.jsp">사업자마이페이지</a></li>
				            <li><a class="dropdown-item" href="logout.bs">로그아웃</a></li>
				        </ul>
				    </div>
				</c:when>
			</c:choose>
		</div>
    </div>
=======
    <div class="header">
        <div class="header_bar"></div>
            <div class="header_func">
                <a href="" class="to_main">
                    <div class="header_name">방구석여행</div>
                    <img src="./pic/logo.png" alt="" class="header_main_logo">
                </a>
                <c:choose>
				    <c:when test="${empty loginUser && empty loginbs}">
				        <!-- 로그인 전 -->
				        <a href="./views/member/selectlogin.jsp" class="to_login">
				            <div><input type="button" class="header_btn" value="로그인"></div>
				        </a>
				    </c:when>
				    <c:when test="${!empty loginUser}">
				        <!-- 일반 사용자 로그인 후 -->
                  <div class="dropdown">
                      <button type="button" class="btn" data-bs-toggle="dropdown">
                          <img id="hamBtn" src="./pic/hamburgerBtn.png" alt="hamburgerBtn" width="30px" height="22px">
                          <img id="avatar" src="./pic/avatar.png" alt="avatar" width="35px" height="35px">
                      </button>
                      <ul class="dropdown-menu">
                          <li><a class="dropdown-item" href="./views/common/myPage.jsp">마이페이지</a></li>
                          <li><a class="dropdown-item" href="logout.me">로그아웃</a></li>
                      </ul>
                  </div>
				    </c:when>
				    <c:when test="${!empty loginbs}">
				        <!-- 사업자 로그인 후 -->
				        <div class="dropdown">
				            <button type="button" class="btn" data-bs-toggle="dropdown">
				                <img id="hamBtn" src="./pic/hamburgerBtn.png" alt="hamburgerBtn" width="30px" height="22px">
				                <img id="avatar" src="./pic/profile-removebg-preview.png" alt="avatar" width="35px" height="35px">
				            </button>
				            <ul class="dropdown-menu">
				                <li><a class="dropdown-item" href="./views/common/myPage2.jsp">사업자마이페이지</a></li>
				                <li><a class="dropdown-item" href="logout.bs">로그아웃</a></li>
				            </ul>
				        </div>
				    </c:when>
				</c:choose>
            </div>
       </div>
>>>>>>> 2125b8d1c749ba2a3fe8ab66f4f73b6fb9313d34
</body>
</html>