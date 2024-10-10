<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방구석 여행</title>

<!-- jQuery -->
    <script 
        src="https://code.jquery.com/jquery-3.7.1.min.js"
        integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
        crossorigin="anonymous"></script>
    <script
        src="https://code.jquery.com/ui/1.14.0/jquery-ui.min.js"
        integrity="sha256-Fb0zP4jE3JHqu+IBB9YktLcSjI1Zc6J2b6gTjB0LpoM="
        crossorigin="anonymous"></script>
        
    <!-- 부트스트랩 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link
    rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>

    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

	<!-- font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
	
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Jua&family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/tagRecommendPage.css">

	<link rel="icon" href="<%=request.getContextPath()%>/pic/logo.png"/>
    <link rel="apple-touch-icon" href="<%=request.getContextPath()%>/pic/logo.png"/>
</head>
<body>
	<!-- header -->
	<%@include file="../common/header.jsp" %>
    <!-- main -->
    <div id="wrapper">
        <div class="area" style="font-weight: bold;">
            <h5>테마가 있는 여행을 즐겨보세요</h5>
            <br>
            <!-- 지도를 표시할 div 입니다 -->
		    <div id="map" style="width:100%;height:900px;"></div>
		
		    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=99929078a9d810f506f314a69d82b1f2"></script>
		    <script>
		        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		            mapOption = { 
		                center: new kakao.maps.LatLng(37.577555, 126.976928), // 지도의 중심좌표
		                level: 3 // 지도의 확대 레벨
		            };
		
		        var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		
		        // 마커가 표시될 위치입니다 
		        var markerPosition  = new kakao.maps.LatLng(37.578395, 126.97708); 
		
		        // 마커를 생성합니다
		        var marker = new kakao.maps.Marker({
		            position: markerPosition
		        });
		
		        // 마커가 지도 위에 표시되도록 설정합니다
		        marker.setMap(map);
		
		        // 아래 코드는 지도 위의 마커를 제거하는 코드입니다
		        // marker.setMap(null);    
		    </script>
        </div>
        <div class="area">
            <div id="chtag" style="margin-left: 10px;">
	            <button class="tagbtn" style="cursor:context-menu;">#${personnel}</button>
	            <button class="tagbtn" style="cursor:context-menu;">#${location}</button>
	            <button class="tagbtn" style="cursor:context-menu;">#${theme}</button>
            </div>
            <div id="tour">
<<<<<<< HEAD
                <c:forEach var="t" items="${tr}">
                    <a href="travel.info?travel=${travel}">
                        <div id="content">
                            <img src="<%=contextPath%>/pic/qufakfh.jpg" alt="별마로천문대" id="img">                    
                            <div id="text">${t.trName}</div>
=======
                <c:forEach var="tr" items="${trList }">
                    <a href="travel.info?travel=${travel}">
                        <div id="content">
                            <img src="<%=contextPath%>/pic/qufakfh.jpg" alt="별마로천문대" id="img">                    
                            <img src="${tr.picInfo }" alt="${tr.trName }" id="img">                    
                            <img src="<%=contextPath%>/pic/qufakfh.jpg" alt="별마로천문대" id="img">                    
                            <img src="${tr.picInfo }" alt="${tr.trName }" id="img">                    
                            <div id="text">${tr.trName }</div>
>>>>>>> a5cf78a320d87ce322d0c5ade94482cb3092a06f
                        </div>
                    </a>
                </c:forEach>
            </div>
            <div id="tagsty">찜한 여행지</div>
            <div id="wish">
                <div class="swiper mySwiper">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <img src="<%=contextPath%>/pic/heart.png" alt="">
                            <p>경북 단양</p>
                        </div>
                        <div class="swiper-slide">
                            <img src="<%=contextPath%>/pic/ansclwo.webp" alt="">
                            <p>문치재?</p>
                        </div>
                        <div class="swiper-slide">
                            <img src="<%=contextPath%>/pic/heart.png" alt="">
                            <p>경북 단양</p>
                        </div>
                        <div class="swiper-slide">
                            <img src="<%=contextPath%>/pic/ansclwo.webp" alt="">
                            <p>문치재?</p>
                        </div>
                        <div class="swiper-slide">
                            <img src="<%=contextPath%>/pic/heart.png" alt="">
                            <p>경북 단양</p>
                        </div>
                        <div class="swiper-slide">
                            <img src="<%=contextPath%>/pic/ansclwo.webp" alt="">
                            <p>문치재?</p>
                        </div>
                        <div class="swiper-slide">
                            <img src="<%=contextPath%>/pic/heart.png" alt="">
                            <p>경북 단양</p>
                        </div>
                        <div class="swiper-slide">
                            <img src="<%=contextPath%>/pic/ansclwo.webp" alt="">
                            <p>문치재?</p>
                        </div>
                    </div>
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>
                

            </div>
        </div>
    </div>
    
    <!-- footer -->
    <%@include file="../common/footer.jsp"%>
    
    <script>
        var mySwiper = new Swiper(".mySwiper", {
            slidesPerView: 1, // 한 번에 표시할 슬라이드 수
            spaceBetween: 5, // 슬라이드 간의 간격
            breakpoints : {
                700: {
                slidesPerView: 3,
                spaceBetween: 10,
                },
                1024: {
                    slidesPerView: 4,
                    spaceBetween: 5,
                }
            }, 
            slideToclickedSlide : true,
            loop: false, // 슬라이드 루프(무한 회전) 활성화
            navigation: {
                nextEl: ".swiper-button-next", 
                prevEl: ".swiper-button-prev"
            },
            pagination: {
                el: '.swiper-pagination', // 페이지 표시기
                clickable: true // 페이지 번호 클릭 가능하게 설정
            }, // 마우스 휠로 슬라이드 이동 가능
            freemode : true
        });
    </script>
</body>
</html>