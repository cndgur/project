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
    min-width: 150px;
    max-height: 300px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    text-align: center;
    margin: 10px; /* 각 박스 주변에 여백을 추가 */
    border: 2px solid black; /* 테두리(선) 색을 검은색으로 설정 */
}

.events div > p{
    height: 40%;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nomal;
    line-height: 2.8;
    word-wrap: break-word;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
}

.but {
    all: unset;
    float: right;
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
                    <img src="${item.picInfo}" alt="${item.trName}" onclick="location.href='travel.info?travel=${item.trName}&&location=${location}'">
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
	                <img src="${item2.picInfo}" alt="${item2.trName}" onclick="location.href='travel.info?travel=${item2.trName}'">
	                <h3>${item2.trName}</h3>
	                <p>${item2.trAddress}</p>
            	</div>
			</c:forEach>
        </div>
    </section>

    <!-- 행사 정보 섹션 -->
    <section>
        <div class="events">
            <c:forEach var="item3" items="${list3}">
            	<div>
	                <h2>행사</h2>
	                <h3>${item3.trName}</h3>
	                <p>${item3.trInfo}</p>
	                <button onclick="location.href='travel.info?travel=${item3.trName}&&location=${location}'" class="but">자세히보기-></button>
            	</div>
			</c:forEach>
        </div>
    </section>
	<footer>
		<%@include file="../common/footer.jsp"%>
	</footer>
</body>
</html>

