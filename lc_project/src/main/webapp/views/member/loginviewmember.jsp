<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<<<<<<< HEAD
<%
    String contextPath = request.getContextPath(); // 컨텍스트 경로 얻기
%>
=======
<<<<<<< HEAD
=======
<%
    String contextPath = request.getContextPath(); // 컨텍스트 경로 얻기
%>
>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방구석 여행</title>
<script type="text/javascript"></script>
<<<<<<< HEAD
    <link rel="icon" href="<%=contextPath %>/pic/logo.png"/>
=======
<<<<<<< HEAD
    <link rel="icon" href="./pic/logo.png"/>
=======
    <link rel="icon" href="<%=contextPath %>/pic/logo.png"/>
>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac
    <link rel="apple-touch-icon" href="pic/logo.png"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jua&family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
     <style>
     body {
<<<<<<< HEAD
=======
<<<<<<< HEAD
    font-family: Arial, sans-serif;
    background-color: #ffffff; 
    margin: 0;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center; 
    height: 100vh;
    font-family: "Noto Sans KR", system-ui;
    margin: 0px;
    padding: 0px;
	}
=======
>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac
     
	    font-family: Arial, sans-serif;
	    background-color: #ffffff; 
	    margin: 0;
	    display: flex;
	    flex-direction: column;
	    align-items: center;
	    justify-content: center; 
	    height: 100vh;
	    font-family: "Noto Sans KR", system-ui;
	    margin: 0px;
	    padding: 0px;
		}
<<<<<<< HEAD
=======
>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac
	
	
	.header {
	    position: absolute;
	    top: 0;
	    width: 100%;
	    height: 90px;
	    display: flex;
	    align-items: center;
	    border-bottom: 1px solid #ccc;
	}
	
	.header_main_logo{
	    position: absolute;
	    width: 80px;
	    height: 64px;
	    top: 12px;
	    left: 16px;
	}
	
	.header_name{
	    position: absolute;
	    left: 104px;
	    top: 32px;
	    font-weight: 500;
	    font-size: x-large;
	    color: rgb(0, 0, 0);
	    font-family: "Jua", sans-serif;
	}
	
	.header h1 {
	    position: relative;
	    color: #000000; 
	    font-weight: bold; 
	    margin: 0 auto;
	    text-align: center;
	}
	
	.login-container {
	    background-color: #e0f7f6;
	    border-radius: 20px;
	    width: 400px;
	    padding: 50px;
	    text-align: center;
	    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
	    margin-top: 90px;
	}
	
	.login-container img {
	    width: 90px;
	    height: 72px;
		position: relative;
		left: -15px;
	}
	
	.login-container h2 {
	    position: relative;
	    margin-top: -14px;
	    font-family: "Jua", sans-serif;
	    left: 2px;
	}
	
	body input[type="text"],
	 input[type="password"] {
	    width: 90%;
	    padding: 15px;
	    margin-bottom: 20px;
	    border: 1px solid #ccc;
	    border-radius: 5px;
	    outline: none;
	}
	
	.login-container button {
	    width: 100%;
	    padding: 15px;
	    background-color: #ffffff;
	    border: 2px solid #00bfa5;
	    border-radius: 50px;
	    cursor: pointer;
	    font-size: 1rem;
	    color: #00bfa5;
	}
	
	.login-container button:hover {
	    background-color: #00bfa5;
	    color: white;
	}
	
	.login-container .links {
	    margin-top: 20px;
	    font-size: 0.9rem;
	    color: #00bfa5;
	}
	
	.login-container .links a {
	    text-decoration: none;
	    color: #00bfa5;
	    margin: 0 5px;
		cursor: pointer;
	}
	
	.login-container .links a:hover {
	    text-decoration: underline;
	}
	.logo_form{
	    position: relative;
	    margin-top: -39px;
	    padding-top: 5px;
	    height: 100px;
	    left: -42px;
		top: 7px;
	}
	.name{
	    position: relative;
	    margin: 0px;
	    top: -53px;
	    left: 89px;
	    font-family: "Jua", sans-serif;
	    font-size: x-large;
	}
	.to_main{
		cursor: pointer;
	}
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac
	
	.searchid{
		background-color: transparent;
		border: none;
		color: #00bfa5;
		cursor: pointer;
	}
	.links{
		display: flex;
		justify-content: center;
	}
<<<<<<< HEAD
=======
>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac
     </style>
</head>
<body>
	<div class="header">
        <div class="logo">
<<<<<<< HEAD
            <a href="<%=contextPath %>/index.jsp" class="to_main">
                <div class="header_name">방구석여행</div>
                <img src="<%=contextPath %>/pic/logo.png" alt="" class="header_main_logo">
=======
<<<<<<< HEAD
            <a onclick="location.href='index.jsp'" class="to_main">
                <div class="header_name">방구석여행</div>
                <img src="./pic/logo.png" alt="" class="header_main_logo">
=======
            <a href="<%=contextPath %>/index.jsp" class="to_main">
                <div class="header_name">방구석여행</div>
                <img src="<%=contextPath %>/pic/logo.png" alt="" class="header_main_logo">
>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac
            </a>
        </div>
        <h1>로그인</h1>
    </div>
    
    <div class="login-container">
        <div class="logo_form">
<<<<<<< HEAD
            <img src="<%=contextPath %>/pic/logo.png" alt="logo">
=======
<<<<<<< HEAD
            <img src="./pic/logo.png" alt="logo">
=======
            <img src="<%=contextPath %>/pic/logo.png" alt="logo">
>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac
            <p class="name">방구석여행</p>
        </div>
        <form action="<%=contextPath %>/login.mem" method="post">
            <input type="text" placeholder="아이디" required id="userId" name="userId">
            <input type="password" placeholder="비밀번호" required id="userPwd" name="userPwd">
            <button type="submit" id="btn">로그인</button>
        </form>
        <div class="links">
<<<<<<< HEAD
=======
<<<<<<< HEAD
            <a href="views/member/searchIdmember.jsp">아이디찾기</a> |
            <a href="views/member/searchpwdmember.jsp">비밀번호 찾기</a> |
            <a  href="views/member/enrollmember.jsp">회원가입</a>
=======
>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac
            <form action="searchidview.me">
            <input type="submit" class="searchid" value="아이디 찾기"> 
            </form> |
            <form action="seachpwdview.me">
				<input type="submit" class="searchid" value="비밀번호 찾기"> 
			</form> |
			<form action="insertview.me">
				<input type="submit" class="searchid" value="회원가입"> 
			</form> 
<<<<<<< HEAD
=======
>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac
        </div>
    </div>

</body>
</html>