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

    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=99929078a9d810f506f314a69d82b1f2"></script>
    <script>
        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
            mapOption = { 
                center: new kakao.maps.LatLng(37.57037778, 126.9816417), // 지도의 중심좌표
                level: 5 // 지도의 확대 레벨
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
        var positions = [
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
            
        for (var i = 0; i < positions.length; i ++) {
            // 마커를 생성합니다
            var marker = new kakao.maps.Marker({
                map: map, // 마커를 표시할 지도
                position: positions[i].latlng, // 마커를 표시할 위치
                title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다 
            });
        }   
        
        // 숙박업소는 위치 정보만 저장하고 마커를 생성하지 않음
        for (var j = 0; j < accommodations.length; j++) {
            // 숙박업소의 위치는 저장하지만 마커는 생성하지 않음
            console.log(accommodations[j].title + ' 위치: ' + accommodations[j].latlng.toString());
        }
    </script>
</body>
</html>