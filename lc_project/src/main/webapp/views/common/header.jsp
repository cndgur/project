<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <div id="header_wrapper">
        <div id="header_wrapper1">
            <div id="header_logo"><a href="<%=contextPath %>"><img src="<%=contextPath %>/pic/logo.png" alt="" width="80" height="64"></a></div>
            <div id="header_letter"><a href="<%=contextPath %>">방구석 여행</a></div>
        </div>
        <div id="header_signIn"><button>로그인</button></div>
    </div>
</body>
</html>