<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>방구석 여행</title>
    <link rel="stylesheet" href="../../css/tr_list.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jua&family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    <style>
    	/* header */
#header_wrapper{
    height: 90px;
    background-color: rgba(221, 238, 235, 216);
    /* border: 1px solid black; */
}
#header_wrapper1{
    width: 209px;
    height: 90px;
    float: left;
    /* border: 1px solid black; */
}
#header_logo{
    padding-left: 15px;
    padding-top: 15px;
    float: left;
    /* border: 1px solid black; */
}
#header_letter{
    font-family: "Jua", sans-serif;
    color: black;
    text-decoration: none;
    text-decoration-line: none;
    font-size: 25px;
    width: 110px;
    height: 89px;
    float: right;
    display: flex;
    align-items: center;
    /* border: 1px solid black; */
}
#header_letter a:link, a:visited{
    text-decoration: none;
    color: black;
}
#header_signIn{
    width: 150px;
    height: 90px;
    display: flex;
    align-items: center;
    float: right;
    /* border: 1px solid black; */
}
#header_signIn button{
    width: 120px;
    height: 50px;
    border-radius: 25px;
    background-color: rgba(123, 188, 176, 146);
    border: none;
    font-size: large;
    color: white;
}

/* font */
body {
    font-family: "Noto Sans KR", system-ui;
    margin: 0;
    padding: 0;
}

/* section */
section {
    margin: 20px auto;
    padding: 20px;
    max-width: 1024px;
}

.sec {
    background-color: #ddeeed;
}

.gallery {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-around;
    gap: 0px;
}

.gallery div {
    background-color: white;
    border-radius: 8px;
    padding: 10px;
    width: 200px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    text-align: center;
}

.gallery img {
    width: 100%;
    height: 60%;
    border-radius: 8px;
}

.food {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-around;
    gap: 0px;
}

.food div {
    background-color: white;
    border-radius: 8px;
    padding: 10px;
    width: 200px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    text-align: center;
}

.food img {
    width: 100%;
    height: 60%;
    border-radius: 8px;
}

/* 행사 섹션 스타일 */
.events {
    display: flex;
    justify-content: space-around;
    gap: 0px; /* 박스 사이의 간격 */
    margin-bottom: 30px;
}

.events div {
    background-color: white;
    padding: 20px;
    border-radius: 8px;
    width: 30%;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    text-align: center;
    margin: 10px; /* 각 박스 주변에 여백을 추가 */
    border: 2px solid black; /* 테두리(선) 색을 검은색으로 설정 */
}

.but {
    all: unset;
    float: right;
}

/* footer */
.footer table{
    margin-left: auto;
    margin-right: auto;
}
.footer table, td, th{
    border-collapse: collapse;
    /* border: 1px solid black; */
}
.footer th{
    text-align: left;
    margin-left: 10px;
    margin-right: 10px;
    padding-left: 20px;
    padding-right: 20px;
}
.footer td{
    font-size: small;
    text-align: left;
    margin-left: 10px;
    margin-right: 10px;
    padding-left: 20px;
    padding-right: 20px;
}
/* div{
    border: 1px solid black;
} */

#footer_logo_letter{
    font-size: 25px;
    text-align: left;
    margin: 0px;
    padding: 0px;
    font-family: "Jua", sans-serif;
}
#footer_logo_picture{
    padding-right: 10px;
    text-align: right;
}
#footer_store{
    text-align: center;
}
#footer_left1{
    font-size: 12px;
    color: rgba(164, 164, 164, 137);
    word-wrap: break-word;
    text-align: center;
}
#footer_bottom_left{
    font-size: small;
    font-weight: 600;
    color: rgba(164, 164, 164, 137);
    width: 370px;
    float: left;
    margin-left: 50px;
    text-align: left;
}
#footer_bottom_middle{
    width: 500px;
}
#footer_bottom_right{
    font-size: small;
    font-weight: 600;
    color: rgba(164, 164, 164, 137);
    width: 170px;
    float: right;
    margin-right: 50px;
    text-align: right;
}
#footer_wrapper1{
    padding-top: 30px;
    padding-left: 20px;
    /* padding-bottom: 30px; */
}
#footer_wrapper2{
    padding: 0px;
    margin: 0px;
}
#footer_wrapper{
    background: rgba(242, 242, 242, 228);
    padding-bottom: 20px;
}
    </style>
</head>
<body>
    <header>
        <%@include file="../common/header.jsp"%>
    </header>

    <!-- 서울 추천 여행지 섹션 -->
    <section>
        <h1>${location} 추천 여행지</h1>
        <div class="gallery">
            <c:forEach var="item" items="${list1}">
                <div>
                    <img src="images/n.jpg" alt="${item.trName}" onclick="location.href='travel.info?travel=${item.trName}'">
                    <h3>${item.trName}</h3>
                    <p>${item.trAddress}</p>
                </div>
        	</c:forEach>
        </div>
    </section>

    <!-- 서울 추천 맛집 섹션 -->
    <section class="sec">
        <h1>${location} 추천 맛집</h1>
        <div class="food">
            <c:forEach var="item2" items="${list2}">
            	<div>
                <img src="images/a1.jpg" alt="${item2.trName}" onclick="location.href='travel.info?travel=${item.trName}'">
                <h3>${item2.trName}</h3>
                <p>${item2.trAddress}</p>
            </div>
			</c:forEach>
        </div>
    </section>

    <!-- 행사 정보 섹션 -->
    <section>
        <div class="events">
            <div>
                <h2>행사</h2>
                <h3>잠수교 뚜벅뚜벅 축제</h3>
                <p>
                    한강에서 힐링 어때요?<br>
                    선선한 가을에 힐링 나들이 즐겨요
                </p>
                <button onclick="" onclick="location.href=''" class="but">자세히보기-></button>
            </div>
            <div>
                <h2>행사</h2>
                <h3>정원산업박람회</h3>
                <p>
                    활짝 핀 도심 정원<br>
                    서울국제정원 연계 행사 보러 오세요.
                </p>
                <button type="button" onclick="location.href=''" class="but">자세히보기-></button>
            </div>
            <div>
                <h2>행사</h2>
                <h3>서울패션위크</h3>
                <p>
                    K-패션의 축제<br>
                    수준 높은 트렌트를 확인할 수 있는 곳!
                </p>
                <button onclick="" onclick="location.href=''" class="but">자세히보기-></button>
            </div>
        </div>
    </section>
	<footer>
		<%@include file="../common/footer.jsp"%>
	</footer>
</body>
</html>

