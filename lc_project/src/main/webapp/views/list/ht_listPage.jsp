<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Hotel h = 
%>    

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
    
    <!-- css -->
    <link rel="stylesheet" href="../../css/ht_listPage.css">
        
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    <link rel="icon" href="../../pic/logo.png"/>
    <link rel="apple-touch-icon" href="../../pic/logo.png"/>
</head>
<body>
    <%@include file="../common/header.jsp"%>
    <div id="wrapper">
        <table style="margin-top: 70px;">
            <tr>
                <td class="side"></td>
                <td>
                    <div class="sidenav">
                    	<div class="sidenav-header">지역</div>
                        <div class="sidenav-item">
                            <input type="radio" value="all" name="lo" id="all" checked>
                            <label for="all">전체</label><br>
                            <input type="radio" value="motel" name="lo" id="motel">
                            <label for="motel">수도권 • 경기</label><br>
                            <input type="radio" value="hotel" name="lo" id="hotel">
                            <label for="hotel">강원도</label><br>
                            <input type="radio" value="hotel" name="lo" id="hotel">
                            <label for="hotel">충청도</label><br>
                            <input type="radio" value="all" name="lo" id="all">
                            <label for="all">경상북도</label><br>
                            <input type="radio" value="motel" name="lo" id="motel">
                            <label for="motel">경상남도</label><br>
                            <input type="radio" value="hotel" name="lo" id="hotel">
                            <label for="hotel">전라북도</label><br>
                            <input type="radio" value="hotel" name="lo" id="hotel">
                            <label for="hotel">전라남도</label><br>                
                            <input type="radio" value="hotel" name="lo" id="hotel">
                            <label for="hotel">제주</label><br>
                    	</div>
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
                        </div>
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
                </td>
                <td class="content" >
                    <div style="height: 2000px;">
                        <h3>'경주' 검색결과 2,301개 </h3>
                        <hr>
                        <div class="reviewcon" >
                        	<table>
                                <tr>
                                    <td style="width: 30%;"><img src="../../pic/ht_main_pic.png" style="width: 300px; height: 200px; margin: 8px; border-radius: 15px;"></td>
                                    <td style="width: 50%;">
                                        <div style="margin-left: 20px;">
                                            호텔<br>
                                        <h4>힐튼경주</h4><br>
                                        <img src="../../pic/star.png">9.5
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
                                    <td style="width: 30%;"><img src="../../pic/ht_main_pic.png" style="width: 300px; height: 200px; margin: 8px; border-radius: 15px;"></td>
                                    <td style="width: 50%;">
                                        <div style="margin-left: 20px;">
                                            호텔<br>
                                        <h4>힐튼경주</h4><br>
                                        <img src="../../pic/star.png">9.5
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
                                    <td style="width: 30%;"><img src="../../pic/ht_main_pic.png" style="width: 300px; height: 200px; margin: 8px; border-radius: 15px;"></td>
                                    <td style="width: 50%;">
                                        <div style="margin-left: 20px;">
                                            호텔<br>
                                        <h4>힐튼경주</h4><br>
                                        <img src="../../pic/star.png">9.5
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
                                    <td style="width: 30%;"><img src="../../pic/ht_main_pic.png" style="width: 300px; height: 200px; margin: 8px; border-radius: 15px;"></td>
                                    <td style="width: 50%;">
                                        <div style="margin-left: 20px;">
                                            호텔<br>
                                        <h4>힐튼경주</h4><br>
                                        <img src="../../pic/star.png">9.5
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
                                    <td style="width: 30%;"><img src="../../pic/ht_main_pic.png" style="width: 300px; height: 200px; margin: 8px; border-radius: 15px;"></td>
                                    <td style="width: 50%;">
                                        <div style="margin-left: 20px;">
                                            호텔<br>
                                        <h4>힐튼경주</h4><br>
                                        <img src="../../pic/star.png">9.5
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
                                    <td style="width: 30%;"><img src="../../pic/ht_main_pic.png" style="width: 300px; height: 200px; margin: 8px; border-radius: 15px;"></td>
                                    <td style="width: 50%;">
                                        <div style="margin-left: 20px;">
                                            호텔<br>
                                        <h4>힐튼경주</h4><br>
                                        <img src="../../pic/star.png">9.5
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
    <%@include file="../common/footer.jsp"%>
</body>
</html>