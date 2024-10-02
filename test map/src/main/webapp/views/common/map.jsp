<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
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
</style>
</head>
<body>
    <header>
		<div id="header_wrapper">
			<div id="header_wrapper1">
				<div id="header_logo"><a href=""><img src="images/logo.png" alt="" width="80" height="64"></a></div>
                <div id="header_letter"><a href="">방구석 여행</a></div>
            </div>
            <div id="header_signIn"><button>로그인</button></div>
        </div>
    </header>

    <!-- 지도를 표시할 div 입니다 -->
    <div id="map" style="width:100%;height:900px;"></div>
    <div id="clickLatlng"></div>

    <!-- 클릭한 좌표를 표시할 div -->
    <div id="clickLatlng" style="margin-top: 10px;"></div>

    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=99929078a9d810f506f314a69d82b1f2"></script>
    <script>
        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
            mapOption = { 
                center: new kakao.maps.LatLng(37.5305683, 126.98016730), // 지도의 중심좌표
                level: 5 // 지도의 확대 레벨
            };

        var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

        // 마커들을 저장할 배열
        var markers = [];

        // 지도에 클릭 이벤트를 등록합니다
        kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
            // 클릭한 위도, 경도 정보를 가져옵니다 
            var latlng = mouseEvent.latLng; 
            
            // 새로운 마커를 생성합니다
            var marker = new kakao.maps.Marker({ 
                position: latlng 
            }); 
            
            // 마커를 지도에 표시합니다
            marker.setMap(map);

            // 마커를 배열에 추가합니다
            markers.push(marker);

            /*
            // 클릭한 위치의 위도와 경도를 표시합니다
            var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
            message += '경도는 ' + latlng.getLng() + ' 입니다';
            var resultDiv = document.getElementById('clickLatlng'); 
            resultDiv.innerHTML = message;
            */

            // 마커에 클릭 이벤트를 등록하여 클릭하면 제거하게 합니다
            kakao.maps.event.addListener(marker, 'click', function() {
                marker.setMap(null); // 마커를 지도에서 제거합니다
                // 마커 배열에서도 제거합니다
                var index = markers.indexOf(marker);
                if (index > -1) {
                    markers.splice(index, 1);
                }
            });
        });
    </script>
</body>
</html>
