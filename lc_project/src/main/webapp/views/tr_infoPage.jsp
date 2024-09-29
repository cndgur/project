<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>방구석여행</title>
    <link rel="icon" href="pic/logo.png"/>
    <link rel="apple-touch-icon" href="pic/logo.png"/>
    <!-- jQuery -->
    <script 
        src="https://code.jquery.com/jquery-3.7.1.min.js"
        integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
        crossorigin="anonymous"></script>
    <script
        src="https://code.jquery.com/ui/1.14.0/jquery-ui.min.js"
        integrity="sha256-Fb0zP4jE3JHqu+IBB9YktLcSjI1Zc6J2b6gTjB0LpoM="
        crossorigin="anonymous"></script>
        
    <!-- 부트스트램 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    <style>
        body{
		    margin: 0px;
		    padding: 0px;
		}
        .side{
            width: 20%;
        }
        .content{
            font-family: "Noto Sans KR", sans-serif;
            width: 60%;
        }
        #wrapper{
            width: 100%;
        }
        header{
            width: 100%;
        }
        tr{
            height: 40px;
        }
        .test{
            position: relative;
        }
        .nav-area{ 
            display: flex;
            justify-content: center;
            background: white;
            border-top: 1px solid rgb(0, 0, 0);
            border-bottom: 1px solid rgb(0, 0, 0);
            width: 100%;
            padding: 0;
        }
        .menu{
            display: table-cell;
            width: 150px;
            height: 50px;
        }
        .menu a{
            color: rgb(168, 168, 168);
            font-size: 20px;
            font-weight: bold;
            text-align: center;
            width: 100%;
            height: 100%;
            display: inline-block;
            line-height: 50px;
            text-decoration: none;
        }
        .menu a:hover{
            color:black;
            border-top: 2px solid rgb(0, 0, 0);
            border-bottom: 2px solid rgb(0, 0, 0);
        }
        button{
            width: 60px;
            height: 17px;
            font-size: 9px;
            border: 0px;
            background: #7bbcb0;
            color: white;
            border-radius: 40px;
            
        }
        .sidenav-header {
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 10px;
            background-color: #7bbcb0;
            color: white;
            border-radius: 15px;
        }

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

        .sidenav-footer {
            margin-top: 20px;
        }

        .sidenav-footer button {
            background-color: #7bbcb0;
            border: none;
            color: white;
            padding: 0px;
            border-radius: 15px;
            width: 100%;
            cursor: pointer;
            height: 50px;
            font-size: 13px;
        }

        .sidenav-footer button:hover {
            background-color: #5da396;
            
        }

        .nav-area.fixed {
            position: fixed; /* 스크롤 시 상단에 고정 */
            top: 0;
            left: 50%; /* 화면 중앙에 배치 */
            transform: translateX(-50%); /* 가운데 정렬 */
            width: 100%; /* width는 JavaScript에서 설정 */
            z-index: 100;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1); /* 고정 시 그림자 추가 */
            border-top: 0px solid rgb(0, 0, 0);
            border-bottom: 0px solid rgb(0, 0, 0);
        }
        /* 기본 상태: 상단에서 40%에 위치 */
        .sidenav {
            width: 150px;
            background-color: #ddeeeb;
            padding: 10px;
            position: absolute;
            top: 40%;
            right: 20px;
            border-radius: 15px;
            text-align: center;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            transition: top 0.5s ease-in-out; /* top 값이 변할 때 부드럽게 변화 */
        }

        /* 스크롤 후 중앙에 고정될 때 적용될 스타일 */
        .sidenav.fixed {
            position: fixed;
            top: 50%; /* 화면 중앙에 고정 */
            transform: translateY(-50%);
            right: 20px;
            z-index: 100;
        }
        .bpcontent{
            padding: 0;
            height: 500px;
        }
        .spcontent{
            display: flex;
            width: auto;
        }
        .spcontent img{
            width: auto;
        }
        #review{
            width: 90%;
            height: 70%;
            margin-top: 20px;
            margin-left: 50px;
            margin-right: 50px;
            
        }
        #reviewbt{
            height: 30px;
            font-size: 15px;
            float: right;
            margin-top: 10px;
            margin-right: 50px;
        }
        .recommendtr {
            width: 100%;
            height: 200px;
            display: flex;
            background-color: #ddeeeb;
            padding: 10px;
            border-radius: 15px;
            text-align: center;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .recommendtr-item {
            margin: 15px;
            background-color: #ddeeeb;
            border-radius: 15px;
            margin-bottom: 0px;
            padding: 0px;
            
        }

        .recommendtr img {
            width: auto;
            height: 80px;
            border-radius: 10px;
        }

        .recommendtr p {
            margin: 5px 0;
        }
    </style>
</head>
<body>
    <header style="background: #ddeeeb;" >
        <h1>header</h1>
    </header>
    <div id="wrapper">
        <table>
            <tr>
                <td class="side"></td>
                <td></td>
                <td></td>
                <td></td>
                <td class="side"></td>
            </tr>
            <tr>
                <td class="side"></td>
                <td colspan="3" style="text-align: center; vertical-align: bottom;"><h1><b>구 서도역</b></h1></td>
                <td></td>
                <td></td>
                <td class="side"></td>
            </tr>
            <tr>
                <td class="side"></td>
                <td style="width: 20%;" ><img src="pic/heart.png" width="20px" height="20px" style=""> <b>907</b></td>
                <td style="width: 20%; text-align: center; vertical-align: top;"><h6>전북 남원시</h6></td>
                <td style="width: 20%;">
                    <div>
                        <button style="cursor:context-menu;">#1인여행</button>
                        <button style="cursor:context-menu;">#힐링</button>
                        <button style="cursor:context-menu;">#여행</button>
                    </div>
                </td>
                <td class="side"></td>
            </tr>
            <tr>
                <td class="side"></td>
                <td colspan="3" class="content">
                    <div class="nav-area">
                        <div class="menu"><a href="#picture">사진보기</a></div>
                        <div class="menu"><a href="#info">상제정보</a></div>
                        <div class="menu"><a href="#talk">여행지리뷰</a></div>
                        <div class="menu"><a href="#recommend">근처다른여행지</a></div>
                        <script>
                            $(document).ready(function(){
                                // nav-area 요소를 선택
                                var navArea = $('.nav-area');
                                // nav-area가 처음 위치하는 offset
                                var navOffset = navArea.offset().top;
                                // nav-area의 부모 요소 너비 (스크롤 시에도 고정된 너비로 유지하기 위함)
                                var navAreaWidth = navArea.outerWidth();
                        
                                // 스크롤 이벤트 감지
                                $(window).on('scroll', function() {
                                    // 현재 스크롤 위치
                                    var scrollPos = $(window).scrollTop();
                        
                                    // 스크롤 위치가 nav-area 위치를 넘어가면 fixed 클래스 추가
                                    if (scrollPos >= navOffset) {
                                        navArea.addClass('fixed');
                                        navArea.css('width', navAreaWidth); // 고정된 너비 설정
                                    } else {
                                        // 그렇지 않으면 fixed 클래스 제거하고 원래 상태로 되돌림
                                        navArea.removeClass('fixed');
                                        navArea.css('width', ''); // width 속성을 초기화
                                    }
                                });
                        
                                // 윈도우 크기가 조정될 때도 nav-area의 너비를 업데이트
                                $(window).on('resize', function() {
                                    if (!navArea.hasClass('fixed')) {
                                        // 고정되지 않았을 때만 nav-area의 너비를 다시 계산
                                        navAreaWidth = navArea.outerWidth();
                                    }
                                });
                            });
                        </script>
                        
                    </div>
                    
                </td>
                <td></td>
                <td></td>
                <td class="side"></td>
            </tr>
            <tr id="picture">
                <td class="side" id="pic"></td>
                <td colspan="3">
                    <div class="bpcontent">
                        <img src="pic/picture.png" width="100%" height="100%">
                    </div>
                    <div class="spcontent" style="margin-bottom: 100px; width: 100%;">
                        <img src="pic/picture.png">
                        <img src="pic/picture.png">
                        <img src="pic/picture.png">
                    </div>
                </td>
                <td></td>
                <td></td>
                <td class="side">
                    <div class="sidenav">
                        <div class="sidenav-header">찜한 여행지</div>
                        <div class="sidenav-item">
                            <img src="pic/picture.png" alt="구 서도역">
                            <p><strong>구 서도역</strong></p>
                            <p>전북 남원시</p>
                        </div>
                        <div class="sidenav-item">
                            <img src="pic/picture.png" alt="구 서도역">
                            <p><strong>구 서도역</strong></p>
                            <p>전북 남원시</p>
                        </div>
                        <div class="sidenav-item">
                            <img src="pic/picture.png" alt="구 서도역">
                            <p><strong>구 서도역</strong></p>
                            <p>전북 남원시</p>
                        </div>
                        <div>
                            <img src="pic/arrow.png" style="align-self: center; margin-bottom: 0px; cursor: pointer;">
                        </div>
                        <div class="sidenav-footer">
                            <button><div style="vertical-align: middle;">여행지 기준<br>호텔 검색</div></button>
                        </div>
                        <script>
                            $(document).ready(function() {
                                var sidenav = $('.sidenav');
                                var sidenavOffset = sidenav.offset().top; // sidenav의 원래 위치
                                var windowHeight = $(window).height(); // 윈도우 창의 높이
                                var isFixed = false; // sidenav가 고정되었는지 여부를 추적
                        
                                $(window).on('scroll', function() {
                                    var scrollPos = $(window).scrollTop();
                        
                                    // 현재 스크롤이 sidenav의 원래 위치를 넘으면
                                    if (scrollPos >= sidenavOffset && !isFixed) {
                                        isFixed = true;
                                        sidenav.css({
                                            'position': 'fixed',
                                            'top': '50%', // 부드럽게 이동하도록 top 값을 변경
                                            'transform': 'translateY(-50%)'
                                        });
                                    } 
                                    // 스크롤 위치가 sidenav의 원래 위치보다 위로 올라가면 원래 상태로 돌아감
                                    else if (scrollPos < sidenavOffset && isFixed) {
                                        isFixed = false;
                                        sidenav.css({
                                            'position': 'absolute',
                                            'top': '40%', // 원래 위치로 돌아감
                                            'transform': 'none'
                                        });
                                    }
                                });
                            });
                        </script>
                        
                    </div>
                </td>
            </tr>
            <tr id="info">
                <td class="side"></td>
                <td colspan="3" class="content">
                    <div>
                        <h2>상세정보</h2>
                        <hr>
                    </div>
                    구 서도역은 1932년 조성된 우리나라에서 가장 오래된 목조건물 폐역으로, 전라선 기차역으로 산성역(하행)과 오수역(상행) 사이에 있다. 1934년 10월 1일 역무원 배치 간이역으로 영업을 시작하여 1937년 10월 1일 보통역으로 승격되었다. 2002년 10월 27일 전라선 개량공사를 하면서 현재의 위치를 신축하여 이전하였다. 2004년 7월 15일 여객 취급이 중지되었고, 2008년 7월 1일부터 역무원 무배치 간이역으로 격하되어 역무실이 폐쇄되었다. 최근 드라마 ‘미스터 선샤인’의 촬영지로 알려져 있으며, 최명희 작가 대하소설 「혼불」의 주 무대이기도 하다. 전라선 역사와 시설물로 옛 모습 그대로 보존 및 관리되고 있다. 보존된 시설물을 통해 그 시절의 역사를 느낄 수 있는 것과 동시에 자연과 기찻길이 어우러져 다양하고 감성적인 포토존을 즐길 수 있다.
                    <br><br>
                    <!-- * 카카오맵 - 지도퍼가기 -->
                    <!-- 1. 지도 노드 -->
                    <div id="daumRoughmapContainer1726734009560" class="root_daum_roughmap root_daum_roughmap_landing" style="width: 100%; margin-bottom: 100px;"></div>

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
                            "mapHeight" : "360"
                        }).render();
                    </script>
                </td>
                <td></td>
                <td></td>
                <td class="side"></td>
            </tr>
            <tr id="talk">
                <td class="side"></td>
                <td colspan="3" class="content">
                    <div>
                        <h2>여행지 리뷰</h2>
                        <hr>
                        <div style="width: 100%; height: 250px; background: #ddeeeb; margin-bottom: 100px;">
                            <textarea id="review" placeholder="리뷰를 작성해주세요." style="resize: none;"></textarea><br>
                            <button id="reviewbt">등록</button>
                        </div>
                        <div>
                            <!-- 리뷰나올영역-->
                        </div>
                    </div>
                </td>
                <td></td>
                <td></td>
                <td class="side"></td>
            </tr>
            <tr id="recommend">
                <td class="side"></td>
                <td colspan="3" class="content">
                    <div>
                        <h2>근처 다른 여행지</h2>
                        <hr>
                    </div>
                    <div class="recommendtr" style="margin-bottom: 100px;">
                        <div class="recommendtr-item">
                            <img src="pic/picture.png" alt="구 서도역">
                            <p><strong>구 서도역</strong></p>
                            <p>전북 남원시</p>
                        </div>
                        <div class="recommendtr-item">
                            <img src="pic/picture.png" alt="구 서도역">
                            <p><strong>구 서도역</strong></p>
                            <p>전북 남원시</p>
                        </div>
                        <div class="recommendtr-item">
                            <img src="pic/picture.png" alt="구 서도역">
                            <p><strong>구 서도역</strong></p>
                            <p>전북 남원시</p>
                        </div>
                        <div class="recommendtr-item">
                            <img src="pic/picture.png" alt="구 서도역">
                            <p><strong>구 서도역</strong></p>
                            <p>전북 남원시</p>
                        </div>
                        <div class="recommendtr-item">
                            <img src="pic/picture.png" alt="구 서도역">
                            <p><strong>구 서도역</strong></p>
                            <p>전북 남원시</p>
                        </div>
                        <div class="recommendtr-item">
                            <img src="pic/picture.png" alt="구 서도역">
                            <p><strong>구 서도역</strong></p>
                            <p>전북 남원시</p>
                        </div>
                        <div style="margin-left:40px; display: flex; justify-content: center; align-items: center;">
                            <img src="pic/sidearrow.png" style="align-self: center; margin-bottom: 0px; cursor: pointer;">
                        </div>
                    </div>
                </td>
                <td></td>
                <td></td>
                <td class="side"></td>
            </tr>
        </table>
    </div>
    <footer>
        <h1>footer</h1>
    </footer>
</body>
</html>
