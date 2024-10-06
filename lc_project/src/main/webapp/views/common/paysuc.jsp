<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방구석 여행</title>
<style>
	.nxbutton {
            background-color: #7bbcb0;
            border: none;
            color: white;
            padding: 0px;
            border-radius: 15px;
            width: 100px;
            cursor: pointer;
            height: 50px;
            font-size: 16px;
        }
</style>
</head>
<body>

	<%@include file="./header.jsp" %>
	<div style="text-align: center; margin-top: 50px; margin-bottom: 100px;">
		<h1>결제 완료</h1><br>
		<button class="nxbutton" style="margin-right: 10px" onclick="location.href='<%=contextPath%>'">처음으로</button>
		<button class="nxbutton" onclick="location.href='<%=contextPath%>/views/common.myPage.jsp'">마이페이지로</button>
	</div>
	<%@include file="./footer.jsp" %>

</body>
</html>