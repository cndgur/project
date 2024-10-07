<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String contextPath = request.getContextPath(); // 컨텍스트 경로 얻기
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>방구석 여행</title>
  <link rel="icon" href="./pic/logo.png"/>
  <link rel="apple-touch-icon" href="./pic/logo.png"/>
  <!-- CSS -->
  <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
  <link rel="stylesheet" href="./css/main.css" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  

  <!-- JS -->
  <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  <script
    src="https://code.jquery.com/jquery-3.7.1.min.js"
    integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
    crossorigin="anonymous"></script>
    
    <script src="https://code.jquery.com/ui/1.14.0/jquery-ui.min.js" 
    integrity="sha256-Fb0zP4jE3JHqu+IBB9YktLcSjI1Zc6J2b6gTjB0LpoM=" 
    crossorigin="anonymous"></script>
  <link rel="stylesheet" href="./css/main.css">
  <!-- font -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
  
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Jua&family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">

</head>
<body>
    <div class="header">
        <div class="header_pic">
            <img src="./pic/caption.jpg" alt="" class="main_img">
        </div>
        <div class="header_bar"></div>
            <div class="header_func">
                <a href="" class="to_main">
                    <div class="header_name">방구석여행</div>
                    <img src="./pic/logo.png" alt="" class="header_main_logo">
                </a>
                <c:choose>
                	<c:when test="${empty loginUser }">
                	<!-- 로그인 전 -->
	                	<a onclick="location.href='login.me'" class="to_login">
	                    	<div><input type="button" class="header_btn" value="로그인"></div>
	                	</a>
	                </c:when>
	                <c:otherwise>
	                <!-- 로그인 후 -->
                  <div class="dropdown">
                      <button type="button" class="btn" data-bs-toggle="dropdown">
                        <img id="hamBtn" src="./pic/hamburgerBtn.png" alt="hamburgerBtn" width="30px" height="22px">
               			 <img id="avatar" src="./pic/avatar.png" alt="avatar" width="35px" height="35px">
                      </button>
                      <ul class="dropdown-menu">
                        <li><a class="dropdown-item1" href="./views/common/myPage.jsp">마이페이지</a></li>
                        <li><a class="dropdown-item2" href="#">로그아웃</a></li>
                      </ul>
                  </div>
	                </c:otherwise>
	            </c:choose>
            </div>
       </div>
       <div class="textarea_container">
            <div class="search_text">
                <span class="search_button1">찾아보기</span>
                <a onclick="location.href='index.jsp'" class="to_login">
                <input type="button" value="여행지" class="search_button2">
                </a>
                <a onclick="location.href='index2.jsp'" class="to_login">
                <input type="button" value="호텔" class="search_button3">
                </a>
            </div>
        
             <div class="textarea">
                <input type="text" class="input_1" placeholder="지역" onfocus="this.placeholder = ''" onblur="this.placeholder = '지역';"
                ></input>
                <input type="text" class="input_2" placeholder="가고싶은 곳" onfocus="this.placeholder = ''" onblur="this.placeholder = '가고싶은 곳';"
                ></input>
                <a href=""><img src="./pic/검색-removebg-preview.png" alt="" class="research_btn"></a>
            </div>
        </div>
    </div>
   
  <form action="recommend.tr" method="post">
    <table id="mainPage_tagSelect_table" align="center">
      <tr>
        <td id="mainPage_tagSelect_table_title" colspan="8">나만의 맞춤 여행!</td>
      </tr>
      <tr>
        <td colspan="8">태그로 쉽게 찾아보세요!</td>
      </tr>
      <tr>
        <td colspan="8">관심 있는 여행 스타일을 선택하면 당신에게 딱 맞는 여행지를 추천해드립니다. 지금 떠날 준비 되셨나요?</td>
      </tr>
      <tr>
        <td class="mainPage_tag"><button class="unselected_tag" type="button" onclick="mainPage_tagSelect(this)" value="가족여행">#가족여행</button></td>
        <td class="mainPage_tag"><button class="unselected_tag" type="button"  onclick="mainPage_tagSelect(this)" value="친구들과">#친구들과</button></td>
        <td class="mainPage_tag"><button class="unselected_tag" type="button"  onclick="mainPage_tagSelect(this)" value="1인여행">#1인여행</button></td>
        <td class="mainPage_tag"><button class="unselected_tag" type="button"  onclick="mainPage_tagSelect(this)" value="커플여행">#커플여행</button></td>
        <td class="mainPage_tag"><button class="unselected_tag" type="button"  onclick="mainPage_tagSelect(this)" value="반려동물">#반려동물</button></td>
        <td class="mainPage_tag"><button class="unselected_tag" type="button"  onclick="mainPage_tagSelect(this)" value="동호회/친목모임">#동호회/친목모임</button></td>
        <td class="mainPage_tag"><button class="unselected_tag" type="button"  onclick="mainPage_tagSelect(this)" value="워크숍">#워크숍</button></td>
        <td class="mainPage_tag"><button class="unselected_tag" type="button"  onclick="mainPage_tagSelect(this)" value="아이들과">#아이들과</button></td>
      </tr>
      <tr>
        <td class="mainPage_tag"><button class="unselected_tag" type="button"  onclick="mainPage_tagSelect(this)" value="놀이동산">#놀이동산</button></td>
        <td class="mainPage_tag"><button class="unselected_tag" type="button"  onclick="mainPage_tagSelect(this)" value="빠지">#빠지</button></td>
        <td class="mainPage_tag"><button class="unselected_tag" type="button"  onclick="mainPage_tagSelect(this)" value="패러글라이딩">#패러글라이딩</button></td>
        <td class="mainPage_tag"><button class="unselected_tag" type="button"  onclick="mainPage_tagSelect(this)" value="번지점프">#번지점프</button></td>
        <td class="mainPage_tag"><button class="unselected_tag" type="button"  onclick="mainPage_tagSelect(this)" value="워터파크">#워터파크</button></td>
        <td class="mainPage_tag"><button class="unselected_tag" type="button"  onclick="mainPage_tagSelect(this)" value="스키장">#스키장</button></td>
        <td class="mainPage_tag"><button class="unselected_tag" type="button"  onclick="mainPage_tagSelect(this)" value="루지">#루지</button></td>
        <td class="mainPage_tag"><button class="unselected_tag" type="button"  onclick="mainPage_tagSelect(this)" value="클라이밍">#클라이밍</button></td>
      </tr>
      <tr>
        <td class="mainPage_tag"><button class="unselected_tag" type="button"  onclick="mainPage_tagSelect(this)" value="맛집">#맛집</button></td>
        <td class="mainPage_tag"><button class="unselected_tag" type="button"  onclick="mainPage_tagSelect(this)" value="전통시장">#전통시장</button></td>
        <td class="mainPage_tag"><button class="unselected_tag" type="button"  onclick="mainPage_tagSelect(this)" value="카페">#카페</button></td>
        <td class="mainPage_tag"><button class="unselected_tag" type="button"  onclick="mainPage_tagSelect(this)" value="힐링">#힐링</button></td>
        <td class="mainPage_tag"><button class="unselected_tag" type="button"  onclick="mainPage_tagSelect(this)" value="글램핑">#글램핑</button></td>
        <td class="mainPage_tag"><button class="unselected_tag" type="button"  onclick="mainPage_tagSelect(this)" value="자연">#자연</button></td>
        <td class="mainPage_tag"><button class="unselected_tag" type="button"  onclick="mainPage_tagSelect(this)" value="역사">#역사</button></td>
        <td class="mainPage_tag"><button class="unselected_tag" type="button"  onclick="mainPage_tagSelect(this)" value="문화">#문화</button></td>
      </tr>
      <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td><button id="mainPage_tagSubmit" type="button" onclick="return tagSelected();">검색하기</button></td>
      </tr>

      <script>
          //누른 버튼의 클래스를 가져와서 클래스가 unselect이면 select로 변경
          function mainPage_tagSelect(button){
            button.className = button.className === 'unselected_tag' ? 'selected_tag' : 'unselected_tag';
          }
          //검색하기 버튼을 누르면 선택되어있는 태그(class가 selected_tag)의 value값을 가져오기
          function tagSelected(){
            const tagList = [];

            const selectTagList = document.querySelectorAll(".selected_tag");
            console.log(selectTagList)
            for(let tagEl of selectTagList){
              tagList.push(tagEl.innerText);
            }

            console.log(tagList)
          }
          //일단 한줄별로 클래스를 나눠야함.
          //그 다음에 한줄에 하나를 queryselectAll을 해서 값을 가져오는데
          //가져온 값이 2개 이상이면 alert로 한줄에 하나만 고를수 있습니다. 경고하고
          //선택한 값을 unselected로 변경
      </script>
	  </table>
  </form>
	<br><br><br>
	
	<div id="wrap-main-content1">
		  <div id="main-content1">
		    <div id="title">
		      <h1>"떠나볼래? 지역 따라 골라보는 여행 스팟"</h1>
		      <p>이제는 골라 떠나는 재미! <br> 인기 만점 지역별 여행지에서 특별한 순간을 만들어보세요!</p>
		    </div>
		    <div class="swiper mySwiper2">
		      <div class="swiper-wrapper">
		          <div class="swiper-slide">
		            <img src="./pic/tjdnf.jfif" alt="">
		            <p>서울<br>숙소2000개</p>
		          </div>        
		          <div class="swiper-slide">
		            <img src="./pic/qntks.jfif" alt="">
		            <p>부산<br>숙소2000개</p>
		          </div>
		          <div class="swiper-slide">
		            <img src="./pic/wpwn.jfif" alt="">
		            <p>제주<br>숙소2000개</p>
		          </div>
		          <div class="swiper-slide">
		            <img src="./pic/rudwn.jfif" alt="">
		            <p>경주<br>숙소2000개</p>
		          </div>
		          <div class="swiper-slide">
		            <img src="./pic/thrch.jfif" alt="">
		            <p>속초<br>숙소2000개</p>
		          </div>
		          <div class="swiper-slide">
		            <img src="./pic/wpwn.jfif" alt="">
		            <p>제주<br>숙소2000개</p>
		          </div>
		          <div class="swiper-slide">
		            <img src="./pic/rudwn.jfif" alt="">
		            <p>경주<br>숙소2000개</p>
		          </div>
		          <div class="swiper-slide">
		            <img src="./pic/thrch.jfif" alt="">
		            <p>속초<br>숙소2000개</p>
		          </div>
		      </div>
		      <div class="swiper-button-next"></div>
		      <div class="swiper-button-prev"></div>
		    </div>
		  </div>
	</div>
  
  <br>

<div id="main-content2">
    <div id="title">
      <h1>"인기 폭발 여행지, 예약은 서둘러야 제맛!"</h1>
      <p>요즘 핫한 여행지, 나만 빼고 다 갔다? <br>
        더 늦기 전에 떠나세요! 인기 폭발 중인 여행지에서 잊지 못할 순간을 만들어보세요!</p>
    </div>
    <!-- 
    <script>
    	window.onload = function(){
    		const opt = document.querySelector("#search-area option[value=${condition}]");
    		opt.setAttribute("selected", true);
    	}
     -->
    </script>
    <div class="swiper mySwiper2">
      <div class="swiper-wrapper">
 		<!--  
	    <c:forEach var="tra" items="${list}">
	    	<div class="swiper-slide">
	              <img src="./pic/qntks.jfif" onclick="location.href='<%=contextPath%>/travel.info?travel=${tra.trName}'" style="cursor: pointer;">
	              <button class="btn_like" onclick="">like</button>
	              <p>${tra.trName}</p>
	          </div>
	    </c:forEach>
	    -->  
          <div class="swiper-slide">
              <img src="./pic/qntks.jfif" onclick="travelInfo()">
              <button class="btn_like" onclick="">like</button>
              <p>에버랜드</p>
          </div>
          <div class="swiper-slide">
            <img src="./pic/wpwn.jfif" onclick="location.href='travel.info?travel=구 서도역'">
            <button class="btn_like" onclick="">like</button>
            <p>송도해상케이블카</p>
          </div>
          <div class="swiper-slide">
            <img src="./pic/rudwn.jfif">
            <button class="btn_like" onclick="">like</button>
            <p>남이섬</p>
          </div>
          <div class="swiper-slide">
            <img src="./pic/thrch.jfif">
            <button class="btn_like" onclick="">like</button>
            <p>롯데월드</p>
          </div>
          <div class="swiper-slide">
            <img src="./pic/thrch.jfif">
            <button class="btn_like" onclick="">like</button>
            <p>알파카목장</p>
          </div>
          <div class="swiper-slide">
            <img src="./pic/tjdnf.jfif">
            <button class="btn_like" onclick="">like</button>
            <p>캐리비안베이</p>
          </div>
          <div class="swiper-slide">
              <img src="./pic/qntks.jfif">
              <button class="btn_like" onclick="">like</button>
              <p>에버랜드</p>
          </div>
          <div class="swiper-slide">
            <img src="./pic/wpwn.jfif">
            <button class="btn_like" onclick="">like</button>
            <p>송도해상케이블카</p>
          </div>          <div class="swiper-slide">
            <img src="./pic/qntks.jfif">
            <button class="btn_like" onclick="">like</button>
            <p>에버랜드</p>
          </div>
          <div class="swiper-slide">
            <img src="./pic/wpwn.jfif">
            <button class="btn_like" onclick="">like</button>
            <p>송도해상케이블카</p>
          </div>          
          <div class="swiper-slide">
            <img src="./pic/qntks.jfif">
            <button class="btn_like" onclick="">like</button>
            <p>에버랜드</p>
          </div>
          <div class="swiper-slide">
            <img src="./pic/wpwn.jfif">
            <button class="btn_like" onclick="">like</button>
            <p>송도해상케이블카</p>
          </div>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
    </div>
  </div>
  
  <script>
		function travelInfo(){
			location.href="<%=contextPath%>/travel.info?travel=1"
		}
	    const mySwiper2 = new Swiper(".mySwiper2", {
	        slidesPerView: 'auto', // 한 번에 표시할 슬라이드 수
	        spaceBetween: 20, // 슬라이드 간의 간격
	        breakpoints : {
	            700: {
	            slidesPerView: 4,
	            spaceBetween: 20,
	            },
	            1024: {
	                slidesPerView: 6,
	                spaceBetween: 20,
	            }
	        }, 
	        slideToclickedSlide : true,
	        navigation: {
	            nextEl: ".swiper-button-next", 
	            prevEl: ".swiper-button-prev"
	        },
	        loop: true,
	        freemode : true,
	        watchOverflow : true,
	        centeredSlides : false,
	        initialSlide: 0,
	        slideOffsetAfter: 10,
	        slideOffsetBefore: 10
	    });
    
	    $('.btn_like').click(function () {
	      $(this).toggleClass("on")
	    });
	</script>
	 <%@include file="/views/common/footer.jsp"%>
</body>
</html>