<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>방구석 여행</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jua&family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../css/list.css">
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

    <!-- 서울 추천 여행지 섹션 -->
    <section>
        <h1>서울 추천 여행지</h1>
        <div class="gallery">
            <div>
                <img src="../pic/n.jpg" alt="N서울타워">
                <h3>N서울타워</h3>
                <p>서울특별시 용산구</p>
            </div>
            <div>
                <img src="../pic/C.jpg" alt="이랜드크루즈">
                <h3>이랜드크루즈</h3>
                <p>서울특별시 영등포구</p>
            </div>
            <div>
                <img src="../pic/s.jpg" alt="코엑스 아쿠아리움">
                <h3>코엑스 아쿠아리움</h3>
                <p>서울특별시 강남구</p>
            </div>
            <div>
                <img src="../pic/f.jpg" alt="낙산공원">
                <h3>낙산공원</h3>
                <p>서울특별시 종로구</p>
            </div>
        </div>
    </section>

    <!-- 서울 추천 맛집 섹션 -->
    <section class="sec">
        <h1>서울 추천 맛집</h1>
        <div class="food">
            <div>
                <img src="../pic/a1.jpg" alt="오레노라멘 본점">
                <h3>오레노라멘 본점</h3>
                <p>서울특별시 마포구</p>
            </div>
            <div>
                <img src="../pic/a2.jpg" alt="리틀넥 청담">
                <h3>리틀넥 청담</h3>
                <p>서울특별시 강남구</p>
            </div>
            <div>
                <img src="../pic/a3.jpg" alt="다올 숯불구이 명동점">
                <h3>다올 숮불구이 명동점</h3>
                <p>서울특별시 중구</p>
            </div>
            <div>
                <img src="../pic/a4.jpg" alt="코리코카페">
                <h3>코리코카페</h3>
                <p>서울특별시 종로구</p>
            </div>
        </div>
    </section>

    <!-- 행사 정보 섹션 -->
    <section>
        <div class="events">
            <div>
                <h2>행사</h2>
                <h3>잠수교 뚜벅뚜벅 축제</h3>
                <p>
                    한강에서 힐링 어때요?<br>
                    선선한 가을에 힐링 나들이 즐겨요
                </p>
                <button onclick="" onclick="location.href=''" class="but">자세히보기-></button>
            </div>
            <div>
                <h2>행사</h2>
                <h3>정원산업박람회</h3>
                <p>
                    활짝 핀 도심 정원<br>
                    서울국제정원 연계 행사 보러 오세요.
                </p>
                <button type="button" onclick="location.href=''" class="but">자세히보기-></button>
            </div>
            <div>
                <h2>행사</h2>
                <h3>서울패션위크</h3>
                <p>
                    K-패션의 축제<br>
                    수준 높은 트렌트를 확인할 수 있는 곳!
                </p>
                <button onclick="" onclick="location.href=''" class="but">자세히보기-></button>
            </div>
        </div>
    </section>

    <div id="footer_wrapper">
        <div class="footer" id="footer_wrapper1">
            <table align="center">
                <tr id="footer_left">
                    <th id="footer_logo_picture" rowspan="2" width="150px"><img src="images/logo.png" alt="logo" width="100px" height="80px"></th>
                    <td id="footer_logo_letter" rowspan="2" width="150px">방구석 여행</td>
                    <th>COMPANY</th>
                    <th>HELP CENTER</th>
                    <th>CONTACT INFO</th>
                    <th style="width: 50px;"></th>
                </tr>
                <tr>
                    <td>About Us</td>
                    <td>Find a Property</td>
                    <td>Phone: 1234567890</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td id="footer_left1" colspan="2" rowspan="3">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                    </td> 
                    <td>Legal Information</td>
                    <td>How To Host?</td>
                    <td>Email: company@email.com</td>
                    <td>&nbsp;</td>
                </tr>&nbsp
                <tr>
                    <td>Contact Us</td>
                    <td>Why Us?</td>
                    <td>Location: 100 Smart Street, LA, USA</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Blogs</td>
                    <td>FAQs</td>
                    <td rowspan="3">&nbsp;</td>
                </tr>
                <tr>
                    <th id="footer_store" rowspan="2" colspan="2">
                        <button style="border-radius: 5px;">PlayStore</button>
                        <button style="border-radius: 5px;">AppleStore</button>
                    </th>
                    <td>&nbsp;</td>
                    <td>Rental Guides</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <hr>
        </div>
        <div id="footer_wrapper2">
            <table align="center">
                <tr>
                    <td id="footer_bottom_left">
                        Copyright © 2024 Life Cloud | All Right Reserved
                    </td>
                    <td id="footer_bottom_middle"></td>
                    <td id="footer_bottom_right">
                        Created with LifeCloud
                    </td>
                </tr>
            </table>
        </div>
    </div>
    </footer>
</body>
</html>
