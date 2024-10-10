<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta logo="viewport" content="width=device-width, initial-scale=1.0">
   	<title>방구석여행</title>
    <link rel="icon" href="pic/logo.png"/>
    <style>

        body{
            
            background-color: #F7F7F9;
        }

        a{
            text-decoration: none;
            color: black;
        }
        .rentcar-wrap{
            width: 100%;
            min-width: 1200px;
            height: auto;
            display: flex;
            justify-content: center;
            column-gap: 100px;
            margin: 40px auto;

        }

        .rentcar-wrap > .rent-sidebar{
            width: 420px;
            height: 250px;
            background-color: #fff;
            border-radius: 12px;
            position: sticky;
            top: 80px;
        }

        #rentcar-area{
            width: 800px;
            height: auto;
            display: flex;
            flex-direction: column;
            column-gap: 20px;
        }

        #car-container{
            width: 720px;
            height: 330px;
            background-color: #D4D7DC;
            margin: 20px;
            border-radius: 10px;
        }

        #car-area{
            height: 60%;
        }

        #car-logo{
            width: 30%;
            float: left;
            padding: 20px;
        }

        #car-logo > p,
        #car-logo > h3{
            margin: 5px;
        }

        #car-logo > img{
            width: 80px;
            height: auto;
            object-fit: cover;
        }

        #car-img{
            width: 60%;
            float: right;
        }

        #car-img > img{
            width: 100%;
            min-width: 300px;
            max-width: 410px;
            height: auto;
            min-height: 160px;
            max-height: 180px;
            object-fit: cover;
            float: right;
        }

        #price-area{
            width: 95%;
            height: 30%;
            border-radius: 10px;
            margin: 5px auto;
            padding: 10px;
            background-color: #FFFFFF;
            display: flex

        }

        #car-name{
            width: 50%;
            float: left;
            text-align: left;
            display: flex;
            flex-direction: column;
        }

        #car-tag{
            background-color: #50555C;
            color: white;
            width: 100px;
            height: 30px;
            margin-bottom: 10px;
            border-radius: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        #car-name > p{
            font-size: larger;
            font-weight: 600;
            margin: 5px 0;
        }

        #car-name > span{
            font-size: small;
            color: #C7C9CB;
        }

        #car-price{
            width: 50%;
            display: flex;
            align-items: center;
            justify-content: end;
        }

        #price-regular{
            text-decoration: line-through;
            font-size: small;
            color: #C7C9CB;
        }

        #price-sale{
            color: #47474A;
            font-size: large;
            font-weight: 600;
        }

        #sale-tag{
            font-size: small;
            text-align: right;
            color: coral;
        }

        #b-button{
            border: 0;
            background-color: transparent;
            width: 100px;
            height: 48px;
            margin-left: 10px;
            background-color: coral;
            border-radius: 12px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        #car-price > a{
            margin-left: 30px;
            text-decoration: none;
            color: white;
        }

        #side-bar{
            text-align: center;
        }

        #rent-location{
            width: 100%;
            height: 70px;
            border-bottom: 1px solid black;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        #rent-date{
            width: 100%;
            height: 70px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-bottom: 1px solid black;
            text-decoration: none;
        }

        #rent-date > input[type="text"]{
            border: none;
            background-color: #ffffff;
            font-size: larger;
        }

        #rent-date > input:focus {
            outline: none;
        }

        #rent-btn{
            width: 100%;
            height: 70px;
            background-color: #9bb2ce;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 0 0 10px 10px;
        }

        #rent-location > select{
            margin-left: 10px;
            font-size: larger;
            font-weight: 600;
        }

    </style>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
</head>
<body>
	<%@include file="../common/header.jsp"%>
    <div class="rentcar-wrap">
        <div id="rentcar-area">
            <div id="car-container">
                <div id="car-area">
                    <div id="car-logo">
                        <img src="./pic/kialogo.png" alt="">
                        <p>기아자동차</p>
                        <h3>모닝</h3>
                    </div>
                    <div id="car-img">
                        <img src="./pic/kiamorning.png" alt="">
                    </div>
                </div>
                <div id="price-area">
                    <div id="car-name">
                        <div id="car-tag">제휴사차량</div>
                        <p>[제휴사 차량] 모닝 가솔린</p>
                        <span>21~24년식 5인승</span>
                    </div>
                    <div id="car-price">
                        <div id="price-text">
                            <div id="sale-tag">회원할인</div>
                            <span id="price-regular">403,500원</span>
                            <span id="price-sale">100,870원</span>
                        </div>
                        <a href="">
                            <div id="b-button">
                                예약
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <div id="car-container">
                <div id="car-area">
                    <div id="car-logo">
                        <img src="./pic/kialogo.png" alt="">
                        <p>기아자동차</p>
                        <h3>모닝</h3>
                    </div>
                    <div id="car-img">
                        <img src="./pic/kiamorning.png" alt="">
                    </div>
                </div>
                <div id="price-area">
                    <div id="car-name">
                        <div id="car-tag">제휴사차량</div>
                        <p>[제휴사 차량] 모닝 가솔린</p>
                        <span>21~24년식 5인승</span>
                    </div>
                    <div id="car-price">
                        <div id="price-text">
                            <div id="sale-tag">회원할인</div>
                            <span id="price-regular">403,500원</span>
                            <span id="price-sale">100,870원</span>
                        </div>
                        <a href="">
                            <div id="b-button">
                                예약
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <div id="car-container">
                <div id="car-area">
                    <div id="car-logo">
                        <img src="./pic/kialogo.png" alt="">
                        <p>기아자동차</p>
                        <h3>모닝</h3>
                    </div>
                    <div id="car-img">
                        <img src="./pic/kiamorning.png" alt="">
                    </div>
                </div>
                <div id="price-area">
                    <div id="car-name">
                        <div id="car-tag">제휴사차량</div>
                        <p>[제휴사 차량] 모닝 가솔린</p>
                        <span>21~24년식 5인승</span>
                    </div>
                    <div id="car-price">
                        <div id="price-text">
                            <div id="sale-tag">회원할인</div>
                            <span id="price-regular">403,500원</span>
                            <span id="price-sale">100,870원</span>
                        </div>
                        <a href="">
                            <div id="b-button">
                                예약
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <div id="car-container">
                <div id="car-area">
                    <div id="car-logo">
                        <img src="./pic/kialogo.png" alt="">
                        <p>기아자동차</p>
                        <h3>모닝</h3>
                    </div>
                    <div id="car-img">
                        <img src="./pic/kiamorning.png" alt="">
                    </div>
                </div>
                <div id="price-area">
                    <div id="car-name">
                        <div id="car-tag">제휴사차량</div>
                        <p>[제휴사 차량] 모닝 가솔린</p>
                        <span>21~24년식 5인승</span>
                    </div>
                    <div id="car-price">
                        <div id="price-text">
                            <div id="sale-tag">회원할인</div>
                            <span id="price-regular">403,500원</span>
                            <span id="price-sale">100,870원</span>
                        </div>
                        <a href="">
                            <div id="b-button">
                                예약
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <div id="car-container">
                <div id="car-area">
                    <div id="car-logo">
                        <img src="./pic/kialogo.png" alt="">
                        <p>기아자동차</p>
                        <h3>모닝</h3>
                    </div>
                    <div id="car-img">
                        <img src="./pic/kiamorning.png" alt="">
                    </div>
                </div>
                <div id="price-area">
                    <div id="car-name">
                        <div id="car-tag">제휴사차량</div>
                        <p>[제휴사 차량] 모닝 가솔린</p>
                        <span>21~24년식 5인승</span>
                    </div>
                    <div id="car-price">
                        <div id="price-text">
                            <div id="sale-tag">회원할인</div>
                            <span id="price-regular">403,500원</span>
                            <span id="price-sale">100,870원</span>
                        </div>
                        <div id="b-button">
                            <button type="submit" onclick="search()">재검색</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="rent-sidebar">
            <div id="side-bar">
                <h2>선택한 여정</h2>
                <div id="rent-location">
                    <h2>지점선택</h2>
                    <select name="rent-location" id="rent-select">
                        <option value="seoul">서울</option>
                        <option value="busan">부산</option>
                        <option value="daegu">대구</option>
                        <option value="incheon">인천</option>
                        <option value="daejeon">대전</option>
                        <option value="ulsan">울산</option>
                        <option value="jeju">제주</option>
                    </select>
                </div>
                <div id="rent-date">
                    <input type="text" id="demo">
                </div>
                <a href="">
                    <div id="rent-btn">
                        재검색
                    </div>
                </a>
            </div>
        </div>
    </div>
    <script>
        $('#demo').daterangepicker({
            "locale": {
                "format": "YYYY-MM-DD",
                "separator": " ~ ",
                "applyLabel": "확인",
                "cancelLabel": "취소",
                "fromLabel": "From",
                "toLabel": "To",
                "customRangeLabel": "Custom",
                "weekLabel": "W",
                "daysOfWeek": ["일", "월", "화", "수", "목", "금", "토"],
                "monthNames": ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
            },
            "startDate": new Date(),
            "endDate": new Date(),
            "drops": "auto"
        }, function search(start, end, label) {
            console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
        });
    </script>
	<%@include file="../common/footer.jsp"%>
</body>
</html>