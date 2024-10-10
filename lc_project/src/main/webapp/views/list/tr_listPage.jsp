<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.lc.project.travel.model.vo.Travel, java.util.ArrayList"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/tr_list.css">
    
        
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    <link rel="icon" href="../../pic/logo.png"/>
    <link rel="apple-touch-icon" href="../../pic/logo.png"/>
</head>
<body>
   <header>
        <%@include file="../common/header.jsp"%>
    </header>

<<<<<<< HEAD
                    	<div class="sidenav-header">카테고리</div>
                        <div class="sidenav-item">
                            <input type="radio" value="all" name="kind" id="all" checked>
                            <label for="all">전체</label><br>
                            <input type="radio" value="motel" name="kind" id="tr">
                            <label for="tr">액티비티</label><br>
                            <input type="radio" value="motel" name="kind" id="tr">
                            <label for="tr">맛집</label><br>
                            <input type="radio" value="motel" name="kind" id="tr">
                            <label for="tr">힐링</label><br>
                            <input type="radio" value="hotel" name="kind" id="re">
                            <label for="re">축제</label><br>
                            <input type="radio" value="all" name="kind" id="ac">
                            <label for="ac">역사</label><br>
                            <input type="radio" value="motel" name="kind" id="tr">
                            <label for="tr">쇼핑</label><br>
                            <input type="radio" value="motel" name="kind" id="tr">
                            <label for="tr">자연</label><br>
                            <input type="radio" value="motel" name="kind" id="tr">
                            <label for="tr">문화</label><br>
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
                        <h3>'' 검색결과 2,301개 </h3>
                        <hr>
                        <div class="reviewcon" >
                        <%for(Travel tra : tlist){ %>
                        	<table onclick="location.href='travel.info?travel=<%=tra.getTrName()%>'">
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
                        <%} %>
                            <table onclick="location.href='<%=contextPath%>/travel.info?travel=구 서도역'">
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
=======
    <!-- 서울 추천 여행지 섹션 -->
    <section>
        <h1>${location} 추천 여행지</h1>
        <div class="gallery">
            <c:forEach var="item" items="${list1}">
                <div>
                    <img src="${item.picInfo}" alt="${item.trName}" onclick="location.href='travel.info?travel=${item.trName}'">
                    <h3>${item.trName}</h3>
                    <p>${item.trAddress}</p>
                </div>
        	</c:forEach>
        </div>
    </section>

    <!-- 서울 추천 맛집 섹션 -->
    <section class="sec">
        <h1>${location} 추천 맛집</h1>
        <div class="food">
            <c:forEach var="item2" items="${list2}">
            	<div>
	                <img src="${item2.picInfo}" alt="${item2.trName}" onclick="location.href='travel.info?travel=${item2.trName}'">
	                <h3>${item2.trName}</h3>
	                <p>${item2.trAddress}</p>
            	</div>
			</c:forEach>
        </div>
    </section>

    <!-- 행사 정보 섹션 -->
    <section>
        <div class="events">
            <c:forEach var="item3" items="${list3}">
            	<div>
	                <h2>행사</h2>
	                <h3>${item3.trName}</h3>
	                <p>${item3.trInfo}</p>
	                <button onclick="location.href='travel.info?travel=${item3.trName}'" class="but">자세히보기-></button>
            	</div>
			</c:forEach>
        </div>
    </section>
	<footer>
		<%@include file="../common/footer.jsp"%>
	</footer>
>>>>>>> 4b9816f32b601361d328ff1964d481b9cb6ccdd7
</body>
</html>