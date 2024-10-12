<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.lc.project.hotel.model.vo.Hotel, java.util.ArrayList, com.lc.project.travel.model.vo.Travel, com.lc.project.hotel.model.vo.Room"%>
<%	
	Hotel h = (Hotel)request.getAttribute("h");	
	ArrayList<Travel> tlist = (ArrayList<Travel>)request.getAttribute("tlist");
	ArrayList<Hotel> hlist = (ArrayList<Hotel>)request.getAttribute("hlist");
	ArrayList<Room> rlist = (ArrayList<Room>)request.getAttribute("rlist");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>방구석여행</title>
    <!-- jQuery -->
    <script 
        src="https://code.jquery.com/jquery-3.7.1.min.js"
        integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
        crossorigin="anonymous"></script>
    <script
        src="https://code.jquery.com/ui/1.14.0/jquery-ui.min.js"
        integrity="sha256-Fb0zP4jE3JHqu+IBB9YktLcSjI1Zc6J2b6gTjB0LpoM="
        crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
	
    <script src="https://cdn.portone.io/v2/browser-sdk.js"></script>
    <link rel="icon" href="././pic/logo.png"/>
    <link rel="apple-touch-icon" href="././pic/logo.png"/>
    <link rel="stylesheet" href="././css/ht_infoPage.css" />
</head>
<body id=system-ui>
    <%@include file="../common/header.jsp" %>
    <div id="wrapper">
        <table>
            <tr>
                <td class="side"></td>
                <td ></td>
                <td></td>
                <td></td>
                <td class="side"></td>
            </tr>
            <tr class="picture">
                <td class="side"></td>
                <td colspan="3">
                    <img src="<%=h.getPicInfo()%>" class="large-image">
                </td>
                <td></td>
                <td></td>
                <td class="side"></td>
            </tr>
            <tr id="info">
                <td class="side"></td>
                <td colspan="3" class="content">
                    <div style="margin-top: 100px;">
                        <b style="font-size: 30px"><%=h.gethName() %></b><br>
                        <b style="font-size: 15px; margin-bottom: 0px"><%=h.gethAddress() %></b>
                        <hr>
                    </div>
                    <div style="margin-bottom: 20px;">
                    	사업자 정보 <br>
                        <%=h.getBsName() %> <br>
						<%=h.getBsTel() %>
                    </div>
                    
                    <br><br>
                    <!-- 지도를 표시할 div 입니다 -->
			          <div id="map" style="width:100%; height:500px;"></div>
			      
			          <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=99929078a9d810f506f314a69d82b1f2"></script>
			          <script>
			              var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			                  mapOption = { 
			                      center: new kakao.maps.LatLng(<%=h.getHt_map_lat() %>,<%=h.getHt_map_long() %>), // 지도의 중심좌표
			                      level: 3 // 지도의 확대 레벨
			                  };
			      
			              var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
			      
			              // 마커가 표시될 위치입니다 
			              var markerPosition  = new kakao.maps.LatLng(<%=h.getHt_map_lat() %>,<%=h.getHt_map_long() %>); 
			      
			              // 마커를 생성합니다
			              var marker = new kakao.maps.Marker({
			                  position: markerPosition
			              });
			      
			              // 마커가 지도 위에 표시되도록 설정합니다
			              marker.setMap(map);
			      
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
                        <%for (Room ro : rlist){ %>
<<<<<<< HEAD
	                            <table  style="background: #ddeeeb; border-radius: 15px;">
=======
	                            <table  style="background: #ddeeeb; border-radius: 15px; height: 250px">
>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
	                                <tr>
	                                    <td rowspan="2">
	                                        <img src="<%=ro.getPicInfo() %>" class="reservepic">
	                                    </td>
	                                    <td class="roomti"><b><h3><%=ro.getrName() %></h3></b></td>
	                                </tr>
	                                <tr>
	                                    <td>
	                                        <div class="container">
	                                            체크인 : <%=ro.getCheckin() %><br>
	                                            체크아웃 : <%=ro.getCheckout() %><br>
	                                            가격 : <%=ro.getPrice() %>원<br>
	                                            객실정보<br>
	                                            최대<%=ro.getrMax() %>인<br>
	                                            추가정보<br>
	                                            <%=ro.getrInfo() %>
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
	                                	    storeId: "store-2c741ae7-334b-4984-9a8c-62eba220c91b",
	                                	    paymentId: paymentId,
	                                	    orderName: "테스트 결제",
	                                	    totalAmount: 100,
	                                	    currency: "KRW",
	                                	    channelKey: "channel-key-1882d49b-8325-4d68-9244-2cf5574ca062",
	                                	    payMethod: "EASY_PAY",
	                                	    easyPay: {
	                                	      easyPayProvider: "KAKAOPAY"
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
	                            		location.href="<%=contextPath%>/views/common/paysuc.jsp"
	                            	  
	                            	}
	                            </script>
	                        </div>
                        <%} %>
                    <div style="margin-bottom: 50px;"></div>
                </td>
                <td></td>
                <td></td>
                <td class="side"></td>
            </tr>
<<<<<<< HEAD
			
=======
			<tr class="recommend">
                <td class="side"></td>
                <td colspan="3" class="content">
                    <div style="margin-top: 50px;">
                        <h2>근처 다른 호텔</h2>
                        <hr>
                    </div>
                    <div class="recommendtr" style="margin-bottom: 100px;">
                    <% for(Hotel ht : hlist){ %>
	                        <div class="recommendtr-item">
	                            <img class="recommendtrimg" src="<%=ht.getPicInfo() %>" onclick="location.href='hotel.info?travel=<%=ht.gethName()%>'">
	                            <p onclick="location.href='hotel.info?hotel=<%=ht.gethName()%>'" style="cursor: pointer;"><strong><%=ht.gethName() %></strong></p>
	                            <p onclick="location.href='hotel.info?hotel=<%=ht.gethName()%>'" style="cursor: pointer;"><%=ht.gethAddress() %></p>
	                        </div>
	                <%} %>
                    </div>
                </td>
                <td></td>
                <td></td>
                <td class="side"></td>
            </tr>
            <tr class="recommend">
                <td class="side"></td>
                <td colspan="3" class="content">
                    <div style="margin-top: 50px;">
                        <h2>근처 다른 여행지</h2>
                        <hr>
                    </div>
                    <div class="recommendtr" style="margin-bottom: 100px;">
                    <% for(Travel tra : tlist){ %>
	                        <div class="recommendtr-item">
	                            <img class="recommendtrimg" src="<%=tra.getPicInfo() %>" onclick="location.href='travel.info?travel=<%=tra.getTrName()%>'">
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
>>>>>>> 75236b560e9c44d45361fcee3111e66cefe1232b
        </table>
    </div>
     <%@include file="../common/footer.jsp"%>
</body>
</html>