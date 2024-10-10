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
    #header_wrapper {
        height: 90px;
        background-color: rgba(221, 238, 235, 216);
    }
    #header_wrapper1 {
        width: 209px;
        height: 90px;
        float: left;
    }
    #header_logo {
        padding-left: 15px;
        padding-top: 15px;
        float: left;
    }
    #header_letter {
        font-family: "Jua", sans-serif;
        color: black;
        text-decoration: none;
        font-size: 25px;
        width: 110px;
        height: 89px;
        float: right;
        display: flex;
        align-items: center;
    }
    #header_letter a:link, a:visited {
        text-decoration: none;
        color: black;
    }
    #header_signIn {
        width: 150px;
        height: 90px;
        display: flex;
        align-items: center;
        float: right;
    }
    #header_signIn button {
        width: 120px;
        height: 50px;
        border-radius: 25px;
        background-color: rgba(123, 188, 176, 146);
        border: none;
        font-size: large;
        color: white;
    }
    
    .box {
        position: absolute;
        width: 150px; /* 박스의 너비 */
        height: 300px; /* 박스의 높이 */
        background-color: rgba(221, 238, 235, 216); /* 배경색 */
        border-radius: 8px; /* 모서리 둥글게 */
        padding: 10px;
        padding-top: 50px; /* 제목 아래 내용과의 간격 */
        z-index: 2;
    }
    .box-title {
        position: absolute;
        top: -10px; /* 박스 위에 공간을 확보 */
        left: 50%;
        transform: translateX(-50%); /* 제목을 박스 가운데 정렬 */
        background-color: rgba(123, 188, 176, 0.9); /* 제목 배경색 */
        padding: 5px 15px;
        border-radius: 20px;
        color: white;
        font-weight: bold;
        font-size: 16px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2); /* 제목에 그림자 효과 */
    }
    .tourist-spots {
        top: 200px;
        left: 30px;
    }
    .box.accommodations {
    position: relative;
    max-height: 450px;  /* 박스의 최대 높이 설정 */
    overflow: hidden;   /* 초과되는 박스 내용 숨기기 */
    top: 200px;
    right: 30px;
    }

    .hotel-box-container {
        height: auto;
        max-height: 350px;  /* 3개까지 보여줄 높이 설정 */
        overflow-y: hidden; /* 스크롤 숨기기 */
        transition: max-height 0.3s ease; /* 스크롤 시 부드럽게 */
    }

    .scroll-down-button {
        position: absolute;
        bottom: 10px;
        right: 50%;
        transform: translateX(50%);
        width: 40px;
        height: 40px;
        background-color: rgba(123, 188, 176, 0.9); /* 버튼 색상 */
        border: none;
        border-radius: 20px;
        cursor: pointer;
        display: flex;
        justify-content: center;
        align-items: center;
        font-size: 18px;
        color: white;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
    }

    .scroll-down-button:active {
        background-color: rgba(123, 188, 176, 1); /* 클릭 시 색상 변화 */
    }

     /* 각각의 호텔 정보를 담는 박스 (이미지를 왼쪽에 배치하고 텍스트를 오른쪽에 배치) */
     .hotel-box {
        display: flex;
        align-items: center;
        padding: 15px;
        background-color: white;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        margin-bottom: 20px;
    }

    .hotel-box img {
        width: 50px;
        height: 50px;
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
        color: #555;
        margin-bottom: 10px;
    }

    .hotel-button {
        width: 80px;
        padding: 5px;
        background-color: rgba(123, 188, 176, 0.9);
        color: white;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        text-align: center;
        font-size: 12px;
    }
</style>
</head>
<body>
    <header>
        <div id="header_wrapper">
            <div id="header_wrapper1">
                <div id="header_logo"><a href=""><img src="./pic/logo.png" alt="" width="80" height="64"></a></div>
                <div id="header_letter"><a href="">방구석 여행</a></div>
            </div>
            <div id="header_signIn"><button>로그인</button></div>
        </div>
    </header>

    <!-- 지도를 표시할 div 입니다 -->
    <!-- 관광지 박스 -->
    <div class="box tourist-spots">
        <div class="box-title">찜한 여행지</div>
        <ul>
            <li>경복궁</li>
            <li>대한민국 역사박물관</li>
            <li>금호미술관</li>
            <li>종묘</li>
            <li>창덕궁</li>
        </ul>
    </div>

<!-- 숙박업소 박스 -->
<div class="box accommodations">
    <div class="box-title">근처 숙박업소</div>
    <div class="hotel-box-container" id="hotelBoxContainer">
        <div class="hotel-box">
            <img src="./pic/hotel1.jpg" alt="포시즌스 호텔 서울">
            <div class="hotel-name">포시즌스 호텔 서울</div>
            <div class="hotel-price">165,000원</div>
            <button class="hotel-button">예약하기</button>
        </div>
        <div class="hotel-box">
            <img src="./pic/hotel2.jpg" alt="신라스테이 광화문">
            <div class="hotel-name">신라스테이 광화문</div>
            <div class="hotel-price">145,000원</div>
            <button class="hotel-button">예약하기</button>
        </div>
        <div class="hotel-box">
            <img src="./pic/hotel3.jpg" alt="서머셋팰리스 서울">
            <div class="hotel-name">서머셋팰리스 서울</div>
            <div class="hotel-price">130,000원</div>
            <button class="hotel-button">예약하기</button>
        </div>
        <div class="hotel-box">
            <img src="./pic/hotel4.jpg" alt="나잇트리 프리미어 호텔 인사동">
            <div class="hotel-name">나잇트리 프리미어 호텔 인사동</div>
            <div class="hotel-price">110,000원</div>
            <button class="hotel-button">예약하기</button>
        </div>
        <div class="hotel-box">
            <img src="./pic/hotel5.jpg" alt="아미드호텔 서울">
            <div class="hotel-name">아미드호텔 서울</div>
            <div class="hotel-price">105,000원</div>
            <button class="hotel-button">예약하기</button>
        </div>
    </div>
    <button class="scroll-down-button" onclick="scrollDown()">&#x25BC;</button>
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
    <script>
        function scrollDown() {
        var hotelBoxContainer = document.getElementById('hotelBoxContainer');
        
        // max-height 값을 변경하여 더 많은 박스를 표시합니다.
        if (hotelBoxContainer.style.maxHeight === '350px' || hotelBoxContainer.style.maxHeight === '') {
            hotelBoxContainer.style.maxHeight = '700px'; // 6개까지 보여주기
        } else {
            hotelBoxContainer.style.maxHeight = '350px'; // 다시 3개로 제한
        }
    }
    </script>
</body>
</html>
