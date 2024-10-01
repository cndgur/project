<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    header {
        background: #ddeeeb;
    }
</style>
</head>
<body>
    <header>
        <h1>header</h1>
    </header>

    <!-- 지도를 표시할 div 입니다 -->
    <div id="map" style="width:100%;height:900px;"></div>
    <div id="clickLatlng"></div>

    <!-- 클릭한 좌표를 표시할 div -->
    <div id="clickLatlng" style="margin-top: 10px;">클릭한 좌표가 여기에 표시됩니다.</div>

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

            // 클릭한 위치의 위도와 경도를 표시합니다
            var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
            message += '경도는 ' + latlng.getLng() + ' 입니다';
            var resultDiv = document.getElementById('clickLatlng'); 
            resultDiv.innerHTML = message;

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
