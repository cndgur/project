<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<link rel="stylesheet" href="../../css/tagRecommendPage.css">

</head>
<body>
	<!-- 헤더 -->
	<div id="header_wrapper">
        <div id="header_wrapper1">
            <div id="header_logo"><a href=""><img src="../../pic/logo.png" alt="" width="80" height="64"></a></div>
            <div id="header_letter"><a href="">방구석 여행</a></div>
        </div>
        <div id="header_signIn"><button>Sign In</button></div>
    </div>
    
    <!-- 메인 -->
    <div id="wrapper">
        <div class="area" style="font-weight: bold;">
            <h5>테마가 있는 여행을 즐겨보세요</h5>
            <br>
            <div id="map">
                <!-- * 카카오맵 - 지도퍼가기 -->
                <!-- 1. 지도 노드 -->
                <div id="daumRoughmapContainer1726734009560" class="root_daum_roughmap root_daum_roughmap_landing" style="width: 100%;"></div>
    
                <!--
                    2. 설치 스크립트
                    * 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
                -->
                <script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
    
                <!-- 3. 실행 스크립트 -->
                <script charset="UTF-8">
                    new daum.roughmap.Lander({
                        "timestamp" : "1726734009560",
                        "key" : "2koo7",
                        "mapWidth" : "100%",
                        "mapHeight" : "750"
                    }).render();
                </script>
            </div>
        </div>
        <div class="area">
            <div id="chtag" style="margin-left: 10px;">
                <button style="cursor:context-menu;">#1인여행</button>
                <button style="cursor:context-menu;">#힐링</button>
                <button style="cursor:context-menu;">#여행</button>
            </div>
            <div id="tour">
                <a href="">
                    <div id="content">
                        <img src="../pic/qufakfh.jpg" alt="별마로천문대" id="img">                    
                        <div id="text">별마로 천문대</div>
                    </div>
                </a>
                <a href="">
                    <div id="content">
                        <img src="../pic/qufakfh.jpg" alt="별마로천문대" id="img">                    
                        <div id="text">별마로 천문대</div>
                    </div>
                </a>
                <a href="">
                    <div id="content">
                        <img src="../pic/qufakfh.jpg" alt="별마로천문대" id="img">                    
                        <div id="text">별마로 천문대</div>
                    </div>
                </a>
                <a href="">
                    <div id="content">
                        <img src="../pic/qufakfh.jpg" alt="별마로천문대" id="img">                    
                        <div id="text">별마로 천문대</div>
                    </div>
                </a>
            </div>
            <div id="tagsty">찜한 여행지</div>
            <div id="wish">
                <div class="swiper mySwiper">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <img src="../pic/heart.png" alt="">
                            <p>경북 단양</p>
                        </div>
                        <div class="swiper-slide">
                            <img src="../pic/ansclwo.webp" alt="">
                            <p>문치재?</p>
                        </div>
                        <div class="swiper-slide">
                            <img src="../pic/heart.png" alt="">
                            <p>경북 단양</p>
                        </div>
                        <div class="swiper-slide">
                            <img src="../pic/ansclwo.webp" alt="">
                            <p>문치재?</p>
                        </div>
                        <div class="swiper-slide">
                            <img src="../pic/heart.png" alt="">
                            <p>경북 단양</p>
                        </div>
                        <div class="swiper-slide">
                            <img src="../pic/ansclwo.webp" alt="">
                            <p>문치재?</p>
                        </div>
                        <div class="swiper-slide">
                            <img src="../pic/heart.png" alt="">
                            <p>경북 단양</p>
                        </div>
                        <div class="swiper-slide">
                            <img src="../pic/ansclwo.webp" alt="">
                            <p>문치재?</p>
                        </div>
                    </div>
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>
                

            </div>
        </div>
    </div>
    <footer style="background: #959c9b;">
        <h1>footer</h1>
        
    </footer>
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