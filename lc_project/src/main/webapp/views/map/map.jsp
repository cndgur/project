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
    <link rel="icon" href="<%=request.getContextPath()%>/pic/logo.png"/>
    <link rel="apple-touch-icon" href="<%=request.getContextPath()%>/pic/logo.png"/>
<style>
    body {
        font-family: "Noto Sans KR", system-ui;
        margin: 0px;
        padding: 0px;
    }
<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
    /*오른쪽 사이드바*/
	.right-title {
    	font-size: 18px;
=======
<<<<<<< HEAD
=======
>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac
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
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
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
        height: 450px; /* 박스의 높이 */
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
>>>>>>> a988212f37af7f2b67dd00244d8cf097d075ceb6
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
<<<<<<< HEAD
=======
    
>>>>>>> 90581a0d9a4d72a768bfd2e80c652056bfcab795
>>>>>>> a988212f37af7f2b67dd00244d8cf097d075ceb6
=======
>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac
    /* 각각의 호텔 정보를 담는 박스 (이미지를 왼쪽에 배치하고 텍스트를 오른쪽에 배치) */
    .hotel-box {
        display: flex;
        align-items: center;
        padding: 15px;
        background-color: white;
<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac
        border-radius: 15px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        margin-bottom: 20px;
    }
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
        border-radius: 15px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        margin-bottom: 20px;
    }
=======
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        margin-bottom: 20px;
    }

>>>>>>> 90581a0d9a4d72a768bfd2e80c652056bfcab795
>>>>>>> a988212f37af7f2b67dd00244d8cf097d075ceb6
=======
>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac
    .hotel-box img {
        width: 50px;  /* 이미지 너비를 줄임 */
        height: 50px;  /* 이미지 높이도 동일하게 줄임 */
        object-fit: cover;
        border-radius: 8px;
        margin-right: 10px; /* 이미지와 텍스트 간의 간격 */
    }
<<<<<<< HEAD
    .hotel-info {
        flex: 1; /* 텍스트 영역이 남은 공간을 차지하도록 설정 */
    }
=======
<<<<<<< HEAD
<<<<<<< HEAD
    .hotel-info {
        flex: 1; /* 텍스트 영역이 남은 공간을 차지하도록 설정 */
    }
=======
<<<<<<< HEAD
    .hotel-info {
        flex: 1; /* 텍스트 영역이 남은 공간을 차지하도록 설정 */
    }
=======

    .hotel-info {
        flex: 1; /* 텍스트 영역이 남은 공간을 차지하도록 설정 */
    }

>>>>>>> 90581a0d9a4d72a768bfd2e80c652056bfcab795
>>>>>>> a988212f37af7f2b67dd00244d8cf097d075ceb6
=======
    .hotel-info {
        flex: 1; /* 텍스트 영역이 남은 공간을 차지하도록 설정 */
    }
>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac
    .hotel-name {
        font-size: 14px;
        font-weight: bold;
        margin-bottom: 5px;
    }
<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac
    .hotel-price {
        font-size: 12px;
        font-weight: bold;
        margin-bottom: 5px;
    }
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======

>>>>>>> a988212f37af7f2b67dd00244d8cf097d075ceb6
    .hotel-price {
        font-size: 12px;
        font-weight: bold;
        margin-bottom: 5px;
    }
<<<<<<< HEAD
=======

>>>>>>> 90581a0d9a4d72a768bfd2e80c652056bfcab795
>>>>>>> a988212f37af7f2b67dd00244d8cf097d075ceb6
=======
>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac
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
<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
    /* 각각의 여행지 정보를 넣는 박스 */
=======
<<<<<<< HEAD
=======
>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac
    /* 각각의 여행지 정보를 넣는 박스 */
    .sidenav-item {
		background-color: #ddeeeb;
        border-radius: 15px;
        margin-bottom: 0px;
        padding: 0px;
	}

    .sidenav-item img {
		width: 100%;
        height: auto;
        border-radius: 10px;
	}

    .sidenav-item p {
		margin: 5px 0;
    }
    
</style>
</head>
<body>
    <!-- header -->
	<%@include file="../common/header.jsp" %>

    <!-- 지도를 표시할 div 입니다 -->
        <!-- 관광지 박스 -->
        <div class="left-sidenav">
            <div class="sidenav-title">찜한 여행지</div>
			<c:forEach var="travel" items="${wishList}">
				<a href="travel.info?travel=${travel.trName}">
	            	<div class="sidenav-item">
		                <img src="${travel.picInfo}" alt="${travel.trName}">
		                <p>${travel.trName}</p>
		                <p>${travel.trAddress}</p>
	            	</div>
            	</a>
        </c:forEach>
    </div>
        <!-- 숙박업소 박스 -->
        <div class="right-sidenav">
            <div class="right-title">근처 숙박업소</div>
            <c:forEach var="hotel" items="${hotelList}">
            <div class="hotel-box">
<<<<<<< HEAD
                <img src="${hotel.picInfo}" alt="${hotel.hName}">
=======
                <img src="./pic/hotel1.jpg" alt="">
<<<<<<< HEAD
=======
>>>>>>> a988212f37af7f2b67dd00244d8cf097d075ceb6
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
>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac
                <div class="hotel-info">
                    <div class="hotel-name">${hotel.hName}</div>
                    <div class="hotel-price">₩${hotel.price}</div> <!-- 호텔 가격 표시 -->
                    
                    <!-- 예약 버튼: hotel.info 페이지로 호텔 이름을 URL 파라미터로 전달 -->
	                <form action="${pageContext.request.contextPath}/hotel.info" method="get">
	                    <input type="hidden" name="hotel" value="${hotel.hName}" />
	                    <button type="submit" class="hotel-button">예약</button>
	                </form>
                </div>
            </div>
<<<<<<< HEAD
        </c:forEach>
    </div>
    
=======
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
<<<<<<< HEAD
                <img src="./pic/hotel1.jpg" alt="">
=======
                <img src="./pic/hotel1.jpg" alt="포시즌스 호텔 서울">
>>>>>>> 90581a0d9a4d72a768bfd2e80c652056bfcab795
>>>>>>> a988212f37af7f2b67dd00244d8cf097d075ceb6
=======
>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
                <div class="hotel-info">
                    <div class="hotel-name">포시즌스 호텔 서울</div>
                    <div class="hotel-price">₩400,000</div>
                    <button class="hotel-button">예약</button>
                </div>
            </div>
            <!-- 두 번째 호텔 박스 -->
            <div class="hotel-box">
<<<<<<< HEAD
<<<<<<< HEAD
                <img src="./pic/hotel2.jpg" alt="">
=======
<<<<<<< HEAD
                <img src="./pic/hotel2.jpg" alt="">
=======
                <img src="./pic/hotel2.jpg" alt="신라스테이 광화문">
>>>>>>> 90581a0d9a4d72a768bfd2e80c652056bfcab795
>>>>>>> a988212f37af7f2b67dd00244d8cf097d075ceb6
=======
                <img src="./pic/hotel2.jpg" alt="">
>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
                <div class="hotel-info">
                    <div class="hotel-name">신라스테이 광화문</div>
                    <div class="hotel-price">₩180,000</div>
                    <button class="hotel-button">예약</button>
                </div>
            </div>

            <!-- 세 번째 호텔 박스 -->
            <div class="hotel-box">
<<<<<<< HEAD
<<<<<<< HEAD
                <img src="./pic/hotel3.jpg" alt="">
=======
<<<<<<< HEAD
                <img src="./pic/hotel3.jpg" alt="">
=======
                <img src="./pic/hotel3.jpg" alt="서머셋팰리스 서울">
>>>>>>> 90581a0d9a4d72a768bfd2e80c652056bfcab795
>>>>>>> a988212f37af7f2b67dd00244d8cf097d075ceb6
=======
                <img src="./pic/hotel3.jpg" alt="">
>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
                <div class="hotel-info">
                    <div class="hotel-name">서머셋팰리스 서울</div>
                    <div class="hotel-price">₩250,000</div>
                    <button class="hotel-button">예약</button>
                </div>
            </div>

            <!-- 네 번째 호텔 박스 -->
            <div class="hotel-box">
<<<<<<< HEAD
<<<<<<< HEAD
                <img src="./pic/hotel4.jpg" alt="">
=======
<<<<<<< HEAD
                <img src="./pic/hotel4.jpg" alt="">
=======
                <img src="./pic/hotel4.jpg" alt="나잇트리 프리미어 호텔 인사동">
>>>>>>> 90581a0d9a4d72a768bfd2e80c652056bfcab795
>>>>>>> a988212f37af7f2b67dd00244d8cf097d075ceb6
=======
                <img src="./pic/hotel4.jpg" alt="">
>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
                <div class="hotel-info">
                    <div class="hotel-name">나잇트리 프리미어 호텔 인사동</div>
                    <div class="hotel-price">₩200,000</div>
                    <button class="hotel-button">예약</button>
                </div>
            </div>

            <!-- 다섯 번째 호텔 박스 -->
            <div class="hotel-box">
<<<<<<< HEAD
<<<<<<< HEAD
                <img src="./pic/hotel5.jpg" alt="">
=======
<<<<<<< HEAD
                <img src="./pic/hotel5.jpg" alt="">
=======
                <img src="./pic/hotel5.jpg" alt="아미드호텔 서울">
>>>>>>> 90581a0d9a4d72a768bfd2e80c652056bfcab795
>>>>>>> a988212f37af7f2b67dd00244d8cf097d075ceb6
=======
                <img src="./pic/hotel5.jpg" alt="">
>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
                <div class="hotel-info">
                    <div class="hotel-name">아미드호텔 서울</div>
                    <div class="hotel-price">₩150,000</div>
                    <button class="hotel-button">예약</button>
                </div>
            </div>
        </div>
>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac
   <!-- 지도를 표시할 div 입니다 -->
    <div id="map" style="width:100%;height:900px;"></div>

    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=99929078a9d810f506f314a69d82b1f2"></script>
    <script language="javaScript">
	    var sumLat = 0;
	    var sumLng = 0;
	    <c:forEach var="tr" items="${wishList}">
	       sumLat += parseFloat('${tr.tr_map_lat}');
	       sumLng += parseFloat('${tr.tr_map_long}');
	    </c:forEach>
	    <c:forEach var="ht" items="${hotelList}">
	       sumLat += parseFloat('${ht.ht_map_lat}');
	       sumLng += parseFloat('${ht.ht_map_long}');
	    </c:forEach>
	    console.log(${wLen} + ${hLen})
	    var centerLat = sumLat/(${wLen} + ${hLen});
	    var centerLng = sumLng/(${wLen} + ${hLen});
	    centerLat = centerLat.toFixed(6);
	    centerLng = centerLng.toFixed(6);
	    
	    console.log(centerLat);
	    console.log(centerLng);
        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
            mapOption = { 
                center: new kakao.maps.LatLng(centerLat, centerLng), // 지도의 중심좌표
                level: 10 // 지도의 확대 레벨
            };

        var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

        // 관광지 마커를 표시할 위치와 title 객체 배열입니다 
		var positions = [];
		<c:forEach var="travel" items="${wishList}">
		    positions.push({
		        title: '${travel.trName}',
		        latlng: new kakao.maps.LatLng(parseFloat('${travel.tr_map_lat}'), parseFloat('${travel.tr_map_long}'))
		    });
		</c:forEach>
		
		// 호텔 좌표 로그를 출력하려면 별도의 반복문을 사용하세요.
		<c:forEach var="hotel" items="${hotelList}">
		    console.log(parseFloat('${hotel.ht_map_lat}'));
		</c:forEach>

        // 숙박업소 마커를 표시할 위치와 title 객체 배열입니다
		 var accommodations = [];
		<c:forEach var="hotel" items="${hotelList}">
		    accommodations.push({
		        title: '${hotel.hName}',
		        latlng: new kakao.maps.LatLng(parseFloat('${hotel.ht_map_lat}'), parseFloat('${hotel.ht_map_long}'))
		    });
		    console.log(parseFloat('${hotel.ht_map_lat}'));
		</c:forEach>

        
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
<<<<<<< HEAD
</html>
=======
<<<<<<< HEAD
<<<<<<< HEAD
</html>
=======
<<<<<<< HEAD
</html>
=======
</html>
>>>>>>> 90581a0d9a4d72a768bfd2e80c652056bfcab795
>>>>>>> a988212f37af7f2b67dd00244d8cf097d075ceb6
=======
</html>
>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
>>>>>>> 921d9ed8b117b1b3a18f339debf1c62a98765fac
