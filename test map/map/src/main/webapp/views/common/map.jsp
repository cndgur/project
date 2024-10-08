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
    .accommodations {
        top: 200px;
        right: 30px;
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
            <ul>
                <li>포시즌스 호텔 서울</li>
                <li>신라스테이 광화문</li>
                <li>서머셋팰리스 서울</li>
                <li>나잇트리 프리미어 호텔 인사동</li>
                <li>아미드호텔 서울</li>
            </ul>
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
