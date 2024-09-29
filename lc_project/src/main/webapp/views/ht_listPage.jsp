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
            
            width: 60%;
        }
        #wrapper{
            width: 100%;
            font-family: "Noto Sans KR", sans-serif;
        }
        header{
            width: 100%;
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
        /* 기본 상태: 상단에서 40%에 위치 */
        .sidenav {
            width: 150px;
            background-color: #ddeeeb;
            padding: 10px;
            position: absolute;
            top: 30%;
            left: 150px;
            border-radius: 15px;
            
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            transition: top 0.5s ease-in-out; /* top 값이 변할 때 부드럽게 변화 */
        }

        /* 스크롤 후 중앙에 고정될 때 적용될 스타일 */
        .sidenav.fixed {
            position: fixed;
            top: 30%; /* 화면 중앙에 고정 */
            left: 150px;
            transform: translateY(-50%);
            z-index: 100;
        }
        .sidenav-header {
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 10px;
            background-color: #7bbcb0;
            color: white;
            border-radius: 15px;
            text-align: center;
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

        .sidenav-item input {
            margin-bottom: 20px ;
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
        #serv > button{
            width: 80px;
            height: 17px;
            font-size: 10px;
            border: 1px solid #7bbcb0;
            background: #FFFFFF;
            color: #000000;
            border-radius: 40px;
            margin: 5px;
        }
        .reviewcon table{
            width: 100%;
            height: 220px;
            color: rgb(0, 0, 0);
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.15);
            margin-top: 50px;
            margin-bottom: 50px;
        }
        .large-image {
            width: 100%;
            height: 381px;
        }
        .small-image {
            width: 100%;
            height: 190px;
        }
        .reservepic{
            border-radius: 15px;
            width:200px;
            height:200px;
            display: flex; 
            justify-content: center; 
            align-items: center;
            margin: 20px;
        }
        .container{
            width: 97%; 
            height: 150px; 
            background: white; 
            border-radius: 15px;
            margin-right: 20px;
        }
        #reviewbt{
            width: 100px;
            height: 30px;
            font-size: 15px;
            float: right;
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
        <table style="margin-top: 70px;">
            <tr>
                <td class="side"></td>
                <td>
                    <div class="sidenav">
                        <div class="sidenav-header">숙소유형</div>
                        <div class="sidenav-item">
                            <input type="radio" value="all" name="kind" id="all" checked>
                            <label for="all">전체</label><br>
                            <input type="radio" value="motel" name="kind" id="motel">
                            <label for="motel">모텔</label><br>
                            <input type="radio" value="hotel" name="kind" id="hotel">
                            <label for="hotel">호텔•리조트</label><br>
                            <input type="radio" value="all" name="kind" id="all">
                            <label for="all">펜션</label><br>
                            <input type="radio" value="motel" name="kind" id="motel">
                            <label for="motel">홈&빌라</label><br>
                            <input type="radio" value="hotel" name="kind" id="hotel">
                            <label for="hotel">캠핑</label><br>
                            <input type="radio" value="hotel" name="kind" id="hotel">
                            <label for="hotel">게하•한옥</label><br>
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
                <td class="content" >
                    <div style="height: 2000px;">
                        <h3>'경주' 검색결과 2,301개 </h3>
                        <hr>
                        <div class="reviewcon" >
                            <table>
                                <tr>
                                    <td style="width: 30%;"><img src="pic/ht_main_pic.png" style="width: 300px; height: 200px; margin: 8px; border-radius: 15px;"></td>
                                    <td style="width: 50%;">
                                        <div style="margin-left: 20px;">
                                            호텔<br>
                                        <h4>힐튼경주</h4><br>
                                        <img src="pic/star.png">9.5
                                        </div>
                                    </td>
                                    <td style="width: 20%; padding-top: 90px;">
                                        <div style="margin-left: 50px;">
                                            <h6>최소 가격</h6>
                                            <h5>217,000원</h5>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                            <table>
                                <tr>
                                    <td style="width: 30%;"><img src="pic/ht_main_pic.png" style="width: 300px; height: 200px; margin: 8px; border-radius: 15px;"></td>
                                    <td style="width: 50%;">
                                        <div style="margin-left: 20px;">
                                            호텔<br>
                                        <h4>힐튼경주</h4><br>
                                        <img src="pic/star.png">9.5
                                        </div>
                                    </td>
                                    <td style="width: 20%; padding-top: 90px;">
                                        <div style="margin-left: 50px;">
                                            <h6>최소 가격</h6>
                                            <h5>217,000원</h5>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                            <table>
                                <tr>
                                    <td style="width: 30%;"><img src="pic/ht_main_pic.png" style="width: 300px; height: 200px; margin: 8px; border-radius: 15px;"></td>
                                    <td style="width: 50%;">
                                        <div style="margin-left: 20px;">
                                            호텔<br>
                                        <h4>힐튼경주</h4><br>
                                        <img src="pic/star.png">9.5
                                        </div>
                                    </td>
                                    <td style="width: 20%; padding-top: 90px;">
                                        <div style="margin-left: 50px;">
                                            <h6>최소 가격</h6>
                                            <h5>217,000원</h5>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                            <table>
                                <tr>
                                    <td style="width: 30%;"><img src="pic/ht_main_pic.png" style="width: 300px; height: 200px; margin: 8px; border-radius: 15px;"></td>
                                    <td style="width: 50%;">
                                        <div style="margin-left: 20px;">
                                            호텔<br>
                                        <h4>힐튼경주</h4><br>
                                        <img src="pic/star.png">9.5
                                        </div>
                                    </td>
                                    <td style="width: 20%; padding-top: 90px;">
                                        <div style="margin-left: 50px;">
                                            <h6>최소 가격</h6>
                                            <h5>217,000원</h5>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                            <table>
                                <tr>
                                    <td style="width: 30%;"><img src="pic/ht_main_pic.png" style="width: 300px; height: 200px; margin: 8px; border-radius: 15px;"></td>
                                    <td style="width: 50%;">
                                        <div style="margin-left: 20px;">
                                            호텔<br>
                                        <h4>힐튼경주</h4><br>
                                        <img src="pic/star.png">9.5
                                        </div>
                                    </td>
                                    <td style="width: 20%; padding-top: 90px;">
                                        <div style="margin-left: 50px;">
                                            <h6>최소 가격</h6>
                                            <h5>217,000원</h5>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </td>
                <td class="side"></td>
            </tr>
        </table>
    </div>
    <footer style="background: #959c9b;">
        <h1>footer</h1>
    </footer>
</body>
</html>