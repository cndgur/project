<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>방구석 여행</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jua&family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
<style>
    body {
        font-family: "Noto Sans KR", system-ui;
        margin: 0px;
        padding: 0px;
    }
    /*오른쪽 사이드바*/
	.right-title {
    	font-size: 18px;
        font-weight: bold;
        margin-bottom: 15px;
        background-color: #7bbcb0;
        color:white;
        border-radius: 15px;
        text-align : center;
    }
    .right-sidenav{
    	width: 180px;
        background-color: #ddeeeb;
        padding: 10px;
        position: absolute;
        top: 20%;
        right: 50px;
        max-height: 480px;
        border-radius: 15px;
        text-align: center;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        z-index: 2;
        overflow: auto;
    }
    /* 왼쪽 사이드바 */
    .sidenav-title {
    	font-size: 18px;
        font-weight: bold;
        margin-bottom: 15px;
        background-color: #7bbcb0;
        color:white;
        border-radius: 15px;
        text-align : center;
    }
    .left-sidenav{
    	width: 150px;
        background-color: #ddeeeb;
        padding: 10px;
        position: absolute;
        top: 20%;
        left: 50px;
        max-height: 480px;
        border-radius: 15px;
        text-align: center;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        z-index: 2;
        overflow: auto;
    }
    /* 각각의 호텔 정보를 담는 박스 (이미지를 왼쪽에 배치하고 텍스트를 오른쪽에 배치) */
    .hotel-box {
        display: flex;
        align-items: center;
        padding: 15px;
        background-color: white;
        border-radius: 15px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        margin-bottom: 20px;
    }
    .hotel-box img {
        width: 50px;  /* 이미지 너비를 줄임 */
        height: 50px;  /* 이미지 높이도 동일하게 줄임 */
        object-fit: cover;
        border-radius: 8px;
        margin-right: 10px; /* 이미지와 텍스트 간의 간격 */
    }
    .hotel-info {
        flex: 1; /* 텍스트 영역이 남은 공간을 차지하도록 설정 */
    }
    .hotel-name {
        font-size: 14px;
        font-weight: bold;
        margin-bottom: 5px;
    }
    .hotel-price {
        font-size: 12px;
        font-weight: bold;
        margin-bottom: 5px;
    }
    .hotel-button {
        width: 70px;
        padding: 5px;
        background-color: rgba(123, 188, 176, 0.9);
        color: white;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        text-align: center;
        font-size: 12px; /* 버튼 텍스트 크기 줄임 */
    }
    /* 각각의 여행지 정보를 넣는 박스 */
</style>
</head>
<body>
    <!-- header -->
	<%@include file="../common/header.jsp" %>

    <!-- 지도를 표시할 div 입니다 -->
        <!-- 관광지 박스 -->
        <div class="left-sidenav">
            <div class="sidenav-title">찜한 여행지</div>
			    <div class="hotel-box">
                <img src="./pic/logo.png" alt="">
                <div class="hotel-info">
                    <div class="hotel-name">경복궁</div>
                    <div class="hotel-price">서울 종로구</div>
                </div>
            </div>
            <!-- 두 번째 호텔 박스 -->
            <div class="hotel-box">
                <img src="./pic/hotel2.jpg" alt="">
                <div class="hotel-info">
                    <div class="hotel-name">대한민국 역사박물관</div>
                    <div class="hotel-price">서울 종로구</div>
                </div>
            </div>

            <!-- 세 번째 호텔 박스 -->
            <div class="hotel-box">
                <img src="./pic/hotel3.jpg" alt="">
                <div class="hotel-info">
                    <div class="hotel-name">금호미술관</div>
                    <div class="hotel-price">서울 종로구</div>
                </div>
            </div>

            <!-- 네 번째 호텔 박스 -->
            <div class="hotel-box">
                <img src="./pic/hotel4.jpg" alt="">
                <div class="hotel-info">
                    <div class="hotel-name">종묘</div>
                    <div class="hotel-price">서울 종로구</div>
                </div>
            </div>

            <!-- 다섯 번째 호텔 박스 -->
            <div class="hotel-box">
                <img src="./pic/hotel5.jpg" alt="">
                <div class="hotel-info">
                    <div class="hotel-name">창덕궁</div>
                    <div class="hotel-price">서울 종로구</div>
                </div>
            </div>
        </div>

        <!-- 숙박업소 박스 -->
        <div class="right-sidenav">
            <div class="right-title">근처 숙박업소</div>
            <div class="hotel-box">
                <img src="./pic/hotel1.jpg" alt="">
                <div class="hotel-info">
                    <div class="hotel-name">포시즌스 호텔 서울</div>
                    <div class="hotel-price">₩400,000</div>
                    <button class="hotel-button">예약</button>
                </div>
            </div>
            <!-- 두 번째 호텔 박스 -->
            <div class="hotel-box">
                <img src="./pic/hotel2.jpg" alt="">
                <div class="hotel-info">
                    <div class="hotel-name">신라스테이 광화문</div>
                    <div class="hotel-price">₩180,000</div>
                    <button class="hotel-button">예약</button>
                </div>
            </div>

            <!-- 세 번째 호텔 박스 -->
            <div class="hotel-box">
                <img src="./pic/hotel3.jpg" alt="">
                <div class="hotel-info">
                    <div class="hotel-name">서머셋팰리스 서울</div>
                    <div class="hotel-price">₩250,000</div>
                    <button class="hotel-button">예약</button>
                </div>
            </div>

            <!-- 네 번째 호텔 박스 -->
            <div class="hotel-box">
                <img src="./pic/hotel4.jpg" alt="">
                <div class="hotel-info">
                    <div class="hotel-name">나잇트리 프리미어 호텔 인사동</div>
                    <div class="hotel-price">₩200,000</div>
                    <button class="hotel-button">예약</button>
                </div>
            </div>

            <!-- 다섯 번째 호텔 박스 -->
            <div class="hotel-box">
                <img src="./pic/hotel5.jpg" alt="">
                <div class="hotel-info">
                    <div class="hotel-name">아미드호텔 서울</div>
                    <div class="hotel-price">₩150,000</div>
                    <button class="hotel-button">예약</button>
                </div>
            </div>
        </div>
   <!-- 지도를 표시할 div 입니다 -->
    <div id="map" style="width:100%;height:900px;"></div>

    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=99929078a9d810f506f314a69d82b1f2"></script>
    <script>
        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
            mapOption = { 
                center: new kakao.maps.LatLng(37.575409, 126.983279), // 지도의 중심좌표
                level: 4 // 지도의 확대 레벨
            };

        var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

        // 관광지 마커를 표시할 위치와 title 객체 배열입니다 
        var positions = [
            {
                title: '경복궁', 
                latlng: new kakao.maps.LatLng(37.577555, 126.976928)
            },
            {
                title: '대한민국 역사박물관', 
                latlng: new kakao.maps.LatLng(37.573915, 126.977880)
            },
            {
                title: '금호미술관', 
                latlng: new kakao.maps.LatLng(37.577429, 126.979895)
            },
            {
                title: '종묘',
                latlng: new kakao.maps.LatLng(37.576043, 126.994227)
            },
            {
                title: '창덕궁',
                latlng: new kakao.maps.LatLng(37.579539, 126.990988)
            }
        ];
        
        // 숙박업소 마커를 표시할 위치와 title 객체 배열입니다
        var accommodations = [
            {
                title: '포시즌스 호텔 서울', 
                latlng: new kakao.maps.LatLng(37.570653, 126.975504)
            },
            {
                title: '신라스테이 광화문', 
                latlng: new kakao.maps.LatLng(37.572438, 126.981186)
            },
            {
                title: '서머셋팰리스 서울', 
                latlng: new kakao.maps.LatLng(37.574888, 126.981095)
            },
            {
                title: '나잇트리 프리미어 호텔 인사동',
                latlng: new kakao.maps.LatLng(37.574410, 126.983631)
            },
            {
                title: '아미드호텔 서울',
                latlng: new kakao.maps.LatLng(37.572510, 126.984175)
            }
        ];
        
        var imageSrc = "https://cdn-icons-png.flaticon.com/512/6350/6350319.png";
            
        for (var i = 0; i < positions.length; i ++) {

             // 마커 이미지의 이미지 크기 입니다
            var imageSize = new kakao.maps.Size(40, 40); 
    
            // 마커 이미지를 생성합니다    
            var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);

            // 마커를 생성합니다
            var marker = new kakao.maps.Marker({
                map: map, // 마커를 표시할 지도
                position: positions[i].latlng, // 마커를 표시할 위치
                title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
                image : markerImage // 마커 이미지  
            });
            
      		// 인포윈도우를 생성합니다
        	var infowindow = new kakao.maps.InfoWindow({
                content: '<div style="padding:5px; text-align:center; width:150px; font-size:12px;">' + positions[i].title + '</div>' // 인포윈도우에 표시할 내용
        	});

        	// 인포윈도우를 표시합니다
        	infowindow.open(map, marker);
    	}   
        
		var imageSrc = "https://cdn-icons-png.flaticon.com/512/5717/5717316.png";
            
        for (var i = 0; i < accommodations.length; i ++) {

             // 마커 이미지의 이미지 크기 입니다
            var imageSize = new kakao.maps.Size(40, 40); 
    
            // 마커 이미지를 생성합니다    
            var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);

            // 마커를 생성합니다
            var marker = new kakao.maps.Marker({
                map: map, // 마커를 표시할 지도
                position: accommodations[i].latlng, // 마커를 표시할 위치
                title : accommodations[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
                image : markerImage // 마커 이미지  
            });
        }
    </script>
</body>
</html>