<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.lc.project.hotel.model.vo.Hotel, java.util.ArrayList, com.lc.project.travel.model.vo.tReview"%>
<%	
	Hotel h = (Hotel)request.getAttribute("h");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>방구석여행</title>
    <link rel="icon" href="../pic/logo.png"/>
    <link rel="apple-touch-icon" href="../pic/logo.png"/>
    <!-- jQuery -->
    <script 
        src="https://code.jquery.com/jquery-3.7.1.min.js"
        integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
        crossorigin="anonymous"></script>
    <script
        src="https://code.jquery.com/ui/1.14.0/jquery-ui.min.js"
        integrity="sha256-Fb0zP4jE3JHqu+IBB9YktLcSjI1Zc6J2b6gTjB0LpoM="
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/lc/css/ht_infoPage.css">
	<!--
        2. 설치 스크립트
        * 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
    -->
    <script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">

    <script src="https://cdn.portone.io/v2/browser-sdk.js"></script>
    <link rel="icon" href="../../pic/logo.png"/>
    <link rel="apple-touch-icon" href="../../pic/logo.png"/>
    
</head>
<body id=system-ui>
    <%@include file="../common/header.jsp" %>
    <div id="wrapper">
        <table>
            <tr>
                <td class="side"></td>
                <td></td>
                <td></td>
                <td></td>
                <td class="side"></td>
            </tr>
            <tr class="picture">
                <td class="side"></td>
                <td rowspan="2">
                    <img src="<%=contextPath %>/pic/ht_main_pic.png" class="large-image">
                </td>
                <td>
                    <img src="<%=contextPath %>/pic/ht_sub_pic1.png" class="small-image">
                </td>
                <td>
                    <img src="<%=contextPath %>/pic/ht_sub_pic2.png" class="small-image" style="border-start-end-radius: 10px;">
                </td>
                <td class="side"></td>
            </tr>
            <tr class="picture">
                <td class="side"></td>
                <td>
                    <img src="<%=contextPath %>/pic/ht_sub_pic3.png" class="small-image">
                </td>
                <td>
                    <img src="<%=contextPath %>/pic/ht_sub_pic1.png" class="small-image" style="border-end-end-radius: 10px;">
                </td>
                <td class="side"></td>
            </tr>
            <tr id="info">
                <td class="side"></td>
                <td colspan="3" class="content">
                    <div style="margin-top: 100px;">
                        <b style="font-size: 15px; margin-bottom: 0px">호텔 • 5성급</b><br>
                        <b style="font-size: 30px">힐튼 경주</b>
                        <hr>
                    </div>
                    <div style="margin-bottom: 20px;">
                        <img src="/lc/pic/star.png"><b>  9.3</b>
                    </div>
                    <div style="display: flex;">
                        <div class="reviewcon">
                            <table>
                                <tr>
                                    <div style="padding-top: 10px;">
                                        <img src="/lc/pic/star.png"><b>  8.5</b>
                                    </div>
                                </tr>
                                <tr>
                                    <td style="padding: 10px;">
                                        경주 보문단지내 위치한 힐튼 호텔 경주 시내 관광을 하기보단 보문단지내 휴식을 하며 쉬기 좋음
                                        언제나 늘 항상 친절하며 룸 컨디션이 좋음 
                                    </td>
                                </tr>

                                <tr>
                                    <td style="float: right; padding-right: 10px;">예다니</td>
                                </tr>
                                <tr >
                                    <td style="float: right; padding-right: 10px;">24.07.06</td>
                                    
                                </tr>
                            </table>
                        </div>
                        <div class="reviewcon">
                            <table>
                                <tr>
                                    <div style="padding-top: 10px;">
                                        <img src="<%=contextPath %>/pic/star.png"><b>  9.0</b>
                                    </div>
                                </tr>
                                <tr>
                                    <td style="padding: 10px;">
                                        경주 보문단지내 위치한 힐튼 호텔 경주 시내 관광을 하기보단 보문단지내 휴식을 하며 쉬기 좋음
                                        언제나 늘 항상 친절하며 룸 컨디션이 좋음 
                                    </td>
                                </tr>

                                <tr>
                                    <td style="float: right; padding-right: 10px;">예다니</td>
                                </tr>
                                <tr >
                                    <td style="float: right; padding-right: 10px;">24.07.06</td>
                                    
                                </tr>
                            </table>
                        </div>
                        <div class="reviewcon">
                            <table>
                                <tr>
                                    <div style="padding-top: 10px;">
                                        <img src="<%=contextPath %>/pic/star.png"><b>  10</b>
                                    </div>
                                </tr>
                                <tr>
                                    <td style="padding: 10px;">
                                        경주 보문단지내 위치한 힐튼 호텔 경주 시내 관광을 하기보단 보문단지내 휴식을 하며 쉬기 좋음
                                        언제나 늘 항상 친절하며 룸 컨디션이 좋음 
                                    </td>
                                </tr>

                                <tr>
                                    <td style="float: right; padding-right: 10px;">예다니</td>
                                </tr>
                                <tr >
                                    <td style="float: right; padding-right: 10px;">24.07.06</td>
                                    
                                </tr>
                            </table>
                        </div>
                        <div style="margin-left:20px; display: flex; justify-content: center; align-items: center; cursor: pointer">
                            <img src="<%=contextPath %>/pic/ht_larrow.png" id="reviewArrow">
                        </div>
                    </div>
                    <br><br>
                    <!-- * 카카오맵 - 지도퍼가기 -->
                    <!-- 1. 지도 노드 -->
                    <div id="daumRoughmapContainer1727164187996" class="root_daum_roughmap root_daum_roughmap_landing" style="width: 100%;"></div>

                    

                    <!-- 3. 실행 스크립트 -->
                    <script charset="UTF-8">
                        new daum.roughmap.Lander({
                            "timestamp" : "1727164187996",
                            "key" : "2kq5w",
                            "mapWidth" : "100%",
                            "mapHeight" : "360"
                        }).render();
                    </script>
                </td>
                <td></td>
                <td></td>
                <td class="side"></td>
            </tr>
            <tr id="info">
                <td class="side"></td>
                <td colspan="3" class="content">
                    <div style="margin-top: 100px; margin-bottom: 100px;">
                        <h2>서비스 및 부대시설</h2>
                        <hr>
                        <div id="serv">
                            <button><b>피트니스</b></button><button><b>수영장</b></button><button><b>무선인터넷</b></button><button><b>레스토랑</b></button><button><b>금연</b></button>
                        </div>
                    </div>
                </td>
                <td></td>
                <td></td>
                <td class="side"></td>
            </tr>
            <tr id="talk">
                <td class="side"></td>
                <td colspan="3" class="content">
                    <div>
                        <h2>객실 선택</h2>
                        <hr>
                        <div style="width: 100%; height: 250px; background: #ddeeeb; margin-bottom: 50px; border-radius: 15px;">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <img src="<%=contextPath %>/pic/picture.png" class="reservepic">
                                    </td>
                                    <td class="roomti"><b><h3>[숙박 페스타] 디럭스 트윈 (세미싱글 2개)</h3></b></td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="container">
                                            입실 15:00
                                            퇴실 11:00<br>
                                            148,500원<br>
                                            객실정보
                                            기준2인 · 최대2인<br>
                                            추가정보
                                            성인 4명 투숙 불가<br>
                                            <button id="reviewbt">예약하기</button>
                                        </div>
                                    </td>
                                    
                                </tr>
                            </table>
                            
                        </div>
                        <div style="width: 100%; height: 250px; background: #ddeeeb; margin-bottom: 50px; border-radius: 15px;">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <img src="<%=contextPath %>/pic/picture.png" class="reservepic">
                                    </td>
                                    <td class="roomti"><b><h3>[숙박 페스타] 디럭스 패밀리 (킹베드+세미싱글)</h3></b></td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="container">
                                            입실 15:00
                                            퇴실 11:00<br>
                                            148,500원<br>
                                            객실정보
                                            기준2인 · 최대2인<br>
                                            추가정보
                                            성인 4명 투숙 불가<br>
                                            <button id="reviewbt" onclick="requestPay()">예약하기</button>
                                        </div>
                                    </td>  
                                </tr>
                            </table>
                            <script>
	                            function generateUUID() { 
	                                return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
	                                    var r = Math.random() * 16 | 0, v = c == 'x' ? r : (r & 0x3 | 0x8);
	                                    return v.toString(16);
	                                });
	                            }
                            	function requestPay() {
                            		const paymentId = generateUUID();
                            		
                            		console.log("결제 요청 시작");
                            	  PortOne.requestPayment({
                            	    storeId: "store-e4038486-8d83-41a5-acf1-844a009e0d94",
                            	    paymentId: paymentId,
                            	    orderName: "테스트 결제",
                            	    totalAmount: 100,
                            	    currency: "KRW",
                            	    channelKey: "channel-key-01764171-b249-4c16-9d18-e9174fa8e611",
                            	    payMethod: "EASY_PAY",
                            	    easyPay: {
                            	      easyPayProvider: "KAKAOPAY",
                            	    }
                            	  }, function(response) {
                            		  console.log("결제 응답:", response);  // 결제 응답 확인용 로그
                                      alert(JSON.stringify(response));  // 결제 응답을 알림으로 표시

                                      if (response.status === "AUTHENTICATED") {
                                          // 결제 성공 시 처리
                                          console.log("결제 성공:", response);
                                          window.location.href = "/payment-success";  // 결제 성공 페이지로 이동
                                      } else {
                                          // 결제 실패 시 처리
                                          console.log("결제 실패:", response);
                                          alert("결제 실패: " + (response.errorMessage || "알 수 없는 오류"));
                                      }
                            	  });
                            	  console.log("결제 요청 whdfy");
                            	}
                            </script>
                        </div>
                        <div style="width: 100%; height: 250px; background: #ddeeeb; margin-bottom: 50px; border-radius: 15px;">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <img src="<%=contextPath %>/pic/picture.png" class="reservepic">
                                    </td>
                                    <td style="text-align: left; vertical-align:bottom; width: 100%;"><b><h3>[숙박 페스타] 온돌</h3></b></td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="container">
                                            입실 15:00
                                            퇴실 11:00<br>
                                            148,500원<br>
                                            객실정보
                                            기준2인 · 최대2인<br>
                                            추가정보
                                            성인 4명 투숙 불가<br>
                                            <button id="reviewbt">예약하기</button>
                                        </div>
                                    </td>
                                    
                                </tr>
                            </table>
                            
                        </div>
                        <div style="width: 100%; height: 250px; background: #ddeeeb; margin-bottom: 50px; border-radius: 15px;">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <img src="<%=contextPath %>/pic/picture.png" class="reservepic">
                                    </td>
                                    <td style="text-align: left; vertical-align:bottom; width: 100%;"><b><h3>[숙박 페스타] [2인 조식] 디럭스 더블 (킹베드)</h3></b></td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="container">
                                            입실 15:00
                                            퇴실 11:00<br>
                                            148,500원<br>
                                            객실정보
                                            기준2인 · 최대2인<br>
                                            추가정보
                                            성인 4명 투숙 불가<br>
                                            <button id="reviewbt">예약하기</button>
                                        </div>
                                    </td>
                                    
                                </tr>
                            </table>
                            
                        </div>
                        <div style="width: 100%; height: 250px; background: #ddeeeb; margin-bottom: 50px; border-radius: 15px;">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <img src="<%=contextPath %>/pic/picture.png" class="reservepic">
                                    </td>
                                    <td style="text-align: left; vertical-align:bottom; width: 100%;"><b><h3>[숙박 페스타] 디럭스 트윈 (세미싱글 2개)</h3></b></td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="container">
                                            입실 15:00
                                            퇴실 11:00<br>
                                            148,500원<br>
                                            객실정보
                                            기준2인 · 최대2인<br>
                                            추가정보
                                            성인 4명 투숙 불가<br>
                                            <button id="reviewbt">예약하기</button>
                                        </div>
                                    </td>
                                    
                                </tr>
                            </table>
                            
                        </div>
                    </div>
                </td>
                <td></td>
                <td></td>
                <td class="side"></td>
            </tr>
			            <tr id="recommendht">
                <td class="side"></td>
                <td colspan="3" class="content">
                    <div>
                        <h2>근처 다른 호텔</h2>
                        <hr>
                    </div>
                    <div class="recommendtr" style="margin-bottom: 100px;">
                        <% for(Travel tra : tlist){ %>
	                        <div class="recommendtr-item">
	                            <img class="recommendtrimg" src="<%=contextPath %><%=tra.getPicInfo() %>" onclick="location.href='travel.info?travel=<%=tra.getTrName()%>'">
	                            <p onclick="location.href='travel.info?travel=<%=tra.getTrName()%>'" style="cursor: pointer;"><strong><%=tra.getTrName() %></strong></p>
	                            <p onclick="location.href='travel.info?travel=<%=tra.getTrName()%>'" style="cursor: pointer;"><%=tra.getTrAddress() %></p>
	                        </div>
	                	<%} %>
                    </div>
                </td>
                <td></td>
                <td></td>
                <td class="side"></td>
            </tr>
            <tr id="recommendtr">
                <td class="side"></td>
                <td colspan="3" class="content">
                    <div>
                        <h2>근처 다른 여행지</h2>
                        <hr>
                    </div>
                    <div class="recommendtr" style="margin-bottom: 100px;">
                        <% for(Travel tra : tlist){ %>
	                        <div class="recommendtr-item">
	                            <img class="recommendtrimg" src="<%=contextPath %><%=tra.getPicInfo() %>" onclick="location.href='travel.info?travel=<%=tra.getTrName()%>'">
	                            <p onclick="location.href='travel.info?travel=<%=tra.getTrName()%>'" style="cursor: pointer;"><strong><%=tra.getTrName() %></strong></p>
	                            <p onclick="location.href='travel.info?travel=<%=tra.getTrName()%>'" style="cursor: pointer;"><%=tra.getTrAddress() %></p>
	                        </div>
	                	<%} %>
                    </div>
                </td>
                <td></td>
                <td></td>
                <td class="side"></td>
            </tr>
        </table>
    </div>
     <%@include file="../common/footer.jsp"%>
</body>
</html>