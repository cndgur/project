<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String contextPath = request.getContextPath(); // 컨텍스트 경로 얻기
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<<<<<<< HEAD
	<link rel="icon" href="<%=contextPath %>/pic/logo.png"/>
=======
<<<<<<< HEAD
	<link rel="icon" href="../../pic/logo.png"/>
=======
	<link rel="icon" href="<%=contextPath %>/pic/logo.png"/>
>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac
	<script src="https://code.jquery.com/jquery-3.7.1.js" 
    integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" 
    crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jua&family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    <style>
    
    .header{
	    position: relative;
	    top: 0;
	    width: 100%;
	    display: flex;
	    align-items: center;
	    padding: 0.5px;
	    border-bottom: 1px solid #ccc ;
	    justify-content: center;
	}
	body{
	    display: flex;
	    justify-content: center;
	    font-family: "Noto Sans KR", system-ui;
	    margin: 0px;
	    padding: 0px;
	    width: 100%;
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
	
	.body {
	    background-color: #e0f7f6;
	    border-radius: 20px;
	    width: 400px;
	    padding: 50px;
	    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
	    margin-top: 100px;
	    margin: 0 auto;
	    /* text-align: center; */
	    position: absolute;
	    top: 639px;
	    transform: translate(0, -40%);
	    height: 971px;
	}
	.name, .id, .pwd, .checkpwd, .phone, .email, .address, .birthday, .gender{
	    font-weight: bold;
	}
	
	.body input[type="text"],
	.body input[type="password"],
	.body input[type="email"] {
	    width: 90%;
	    padding: 15px;
	    border: 1px solid #ccc;
	    border-radius: 5px;
	}
	.name,.id, .pwd, .checkpwd, .phone, .email, .address, .birth, input:focus {outline: none;}
	
	
	.pwd , .phone, .address{
	    padding-bottom: 7px;
	}
	
	small{
	    font-weight: lighter;
	}
	
	.gender {
	    position: relative;
	    width: 100px;           
	}
	
	.btn{
	    position: relative;
	    top: 47px;
	    right: 6px;
	}
	
	.body #btn:hover {
	    background-color: #00bfa5;
	    color: white;
	}
	.gender_select{
	    width: 390px;
	    height: 50px;
	    border-radius: 5px;
	    border: 1px solid #ccc;
	    padding-left: 9px;
	    outline: none;
	}
	.body button{
	    width: 400px;
	    height: 50px;
	    box-sizing: border-box;
	    background-color: #ffffff;
	    border-radius: 50px;
	    cursor: pointer;
	    font-size: 1rem;
	    color: #00bfa5;
	    border: 2px solid #00bfa5;
	}
	.checkid{
	    position: relative;
	    left: 278px;
	    top: -13px;
	    box-sizing: border-box;
	    border-radius: 15px;
	    background: #ffffff;
	    cursor: pointer;
	    border: 1px solid #00bfa5;
	    font-family: "Noto Sans KR", system-ui;
	    border-color: #00bfa5;
	    color: #00bfa5;
	}
	.id_title{
	    margin-bottom: 0px;
	    position: relative;
	    top: 10px;
	}
	
	.body .checkid:hover {
	    background-color: #00bfa5;
	    color: white;
	}
	.to_main{
		cursor: pointer;
	}
    </style>
</head>
<body>
	<div class="header">
	        <div class="logo">
	            <a onclick="location.href= '<%=contextPath%>'" class="to_main">
	                <div class="header_name">방구석여행</div>
<<<<<<< HEAD
	                <img src="<%=contextPath %>/pic/logo.png" alt="" class="header_main_logo">
=======
<<<<<<< HEAD
	                <img src="../../pic/logo.png" alt="" class="header_main_logo">
=======
	                <img src="<%=contextPath %>/pic/logo.png" alt="" class="header_main_logo">
>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac
	            </a>
	        </div>
	        <h1>회원가입</h1>
	    </div>
	
	    <div class="body">
	        <form action="/lc_project/insert.me" method="post">
	            <div class="name">
	                <p>* 이름</p>
	                <input type="text" name="userName" placeholder="이름을 입력하세요." required> <br>
	            </div>
	            <div class="id">
	                <p class="id_title">* 아이디</p>
	                <input type="button" value="아이디 중복확인" class="checkid">
	                <input type="text" name="userId" placeholder="아이디" required> <br>
	            </div>
	            <div class="pwd">
	                <p>* 비밀번호</p>
	                <input type="password" name="userPwd" placeholder="비밀번호는 8자리 이상 입력해주세요" id="pwd" required> <br>
	                <small id="pwdMessage" style="color:red"></small>
	            </div>
	            <div class="checkpwd">
	                <p>* 비밀번호 확인</p>
	                <input type="password" placeholder="비밀번호 확인" required id="checkpwd"> <br>
	                <small id="checkMessage" style="color:red"></small> 
	            </div>
	            <div class="phone">
	                <p>전화번호</p>
	                <input type="text" name="tel" placeholder="* '-' 포함해서 입력해주세요" required id="phone"> <br>
	                <small id="phoneMessage" style="color:red"></small>
	            </div>
	            <div class="address">
	                <p>주소</p>
	                <input type="text" name="address" placeholder="주소"> <br>
	                <small>* 시/구/동</small> <br>
	            </div>
	            <div class="birthday">
	                <p>생년월일</p>
	                <input type="text" name="birthday" placeholder="8자리 입력 ex)YYMMDD"> <br>
	            </div>
	            <div class="gender">
	                <p>성별</p>
	                <select name="gender" class="gender_select">
	                    <option value="M" name="M">남성</option>
	                    <option value="F" name="F">여성</option>
	                </select>
	            </div>
	            
	            <div class="btn">
    			<button type="submit" id="btn" onclick="return test();">가입하기</button>
				</div>
	        </form>
	    </div>
	
	    <script type="text/javascript">
	        function checkPhoneNumber() {
	            var phone = document.getElementById('phone').value;
	            var phoneMessage = document.getElementById('phoneMessage');
	
	            // 전화번호가 11자리가 아닌 경우 경고 메시지 표시
	            if (phone.length !== 13) {
	                phoneMessage.textContent = '전화번호는 13자리여야 합니다.';
	            } else {
	                phoneMessage.textContent = ''; // 조건 충족 시 메시지 삭제
	            }
	        }
	
	        // 실시간으로 비밀번호와 비밀번호 확인을 검사하는 함수
	        function checkPasswords() {
	            var p1 = document.getElementById('pwd').value;
	            var p2 = document.getElementById('checkpwd').value;
	            var pwdMessage = document.getElementById('pwdMessage');
	            var checkMessage = document.getElementById('checkMessage');
	
	            // 비밀번호 길이 검사
	            if (p1.length < 8) {
	                pwdMessage.textContent = '비밀번호는 최소 8자리 이상이어야 합니다.';
	            } else {
	                pwdMessage.textContent = ''; // 조건 충족 시 메시지 삭제
	            }
	
	            // 비밀번호 확인 검사
	            if (p1 !== p2 && p2.length > 0) {
	                checkMessage.textContent = '비밀번호가 일치하지 않습니다.';
	            } else {
	                checkMessage.textContent = ''; // 일치할 때 메시지 삭제
	            }
	        }
	
	        // 비밀번호 및 전화번호 입력 시마다 확인
	        document.getElementById('pwd').addEventListener('keyup', checkPasswords);
	        document.getElementById('checkpwd').addEventListener('keyup', checkPasswords);
	        document.getElementById('phone').addEventListener('keyup', checkPhoneNumber);
	
	        // 최종 폼 제출 시 확인
	        function test() {
	            checkPasswords();
	            checkPhoneNumber();
	            return true; // 모든 유효성 검사 후 폼 제출
	        }
	    </script>
</body>
</html>