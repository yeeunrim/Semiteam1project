<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호주 여행 상세 페이지</title>
<link rel="stylesheet" href="../resources/css/style.css">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="https://kit.fontawesome.com/aa24b12773.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/overseas.css">
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp" />
	
	  <section>
        <div id="main"> 
            <div id="area_img"> <!-- item1 -->
                <img src="images/Australia/australia1.png" id="area_pic">
            </div>
            
            <div id="area_text"> <!-- item2 -->
                <p>호주</p>
            </div>
        </div><!-- main -->

        <!-- 해외 지역 정보 -->
        <div id="infobox"> 
            <div id="infotext">
                대륙이 하나의 나라인 유일한 나라로 세련된 도시부터 천혜의 자연까지 모든 것이 있다.
            </div>
        
            <ul style="list-style: none; font-size: 1.7vw; text-align: left;" >
                <li>💰 <b>환율&nbsp;&nbsp;</b>
                        <span id="lg">1AUD&nbsp;</span>
                        868.83원&nbsp;&nbsp; 
                </li>
                <li>🔌 <b>전압&nbsp;&nbsp;</b><span id="lg"> 정보 &nbsp;</span> 50Hz 230V</li>
                <li>📅 <b>추천 여행 기간&nbsp;&nbsp;</b>
                    <span id="lg">기준도시&nbsp;</span>시드니 /
                    <span id="lg">추천기간</span>&nbsp;12월 ~ 2월
                </li>
                <li>💼 <b>비자&nbsp;&nbsp;</b><span id="lg"> 정보&nbsp;</span> ETA필요 <b>90일 무비자</b>
                    <small>(한국 여권 소지시 ETA 비자로 최대 3개월 체류 가능)</small>
                </li>
                <li>📝 <b>출입국 신고서&nbsp;&nbsp;</b><span id="lg"> 정보&nbsp;</span>
                    출입국 여객용 카드 작성 필요</li>
                <li>📞 <b>주요 연락처&nbsp;&nbsp;</b>
                    <span id="lg"> 응급전화&nbsp;</span>000 / 
                    <span id="lg">경찰</span> 131 444
                </li>
                <li>🏛️ <b>한국 대사관 </b><small>(멜번 / 호주 / 브리즈번 주재)</small>
                    <span id="lg">&nbsp; 
                        <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;전화&nbsp; </span> +61-2-9210-0200 <small>(근무시간)</small> 
                                                    / +61-403-546-058 <small>(근무시간 외/사건사고전용)</small>
                </li>
            </ul>

            <!-- ( Tip! 여행 기초 정보 더보기 > ) 버튼 -->
            <div id="tipbox"> 
                <p>
                    <a href="https://travel.naver.com/overseas/AU255055/country/summary" target="_blank">
                     Tip ! 여행 기초 정보 더보기 <i class="fa-solid fa-angle-right" id="angleright"></i>
                    </a>
                </p>
            </div>
        </div>
        
        <!-- 해외 날씨, 위치 -->
        <div id="weather_location">
            <!-- 날씨 -->
            <div id="weather_container">
                <div id="monthly_weather">
                    <p>월간 날씨</p>
                </div>
                <!-- 월(month) 선택 박스 -->
                <div id="box_weather">
                    <table>
                        <tr>
                            <td>
                                <div id="dropdown">
                                    <button id="dropbtn" class="dropbtn">
                                        <span id="dropdown_month"> 
                                            <p>December <!-- 현재 월 -->
                                            <span id="dropbtn_click" style="font-family: Material Icons; font-size : 3.4vw; color : #707070; float:right;"
                                                 onclick="dropdown()">arrow_drop_down</span>
                                            </p>
                                        </span>
                                    </button>
                                    
                                    <div class="dropdown-month">
                                        <a href="#"><div class="month">January</div> </a>
                                        <a href="#"><div class="month">February</div> </a>
                                        <a href="#"><div class="month">March</div> </a>
                                        <a href="#"><div class="month">April</div> </a>
                                        <a href="#"><div class="month">May</div> </a>
                                        <a href="#"><div class="month">Jun</div> </a>
                                        <a href="#"><div class="month">July</div> </a>
                                        <a href="#"><div class="month">August</div> </a>
                                        <a href="#"><div class="month">September</div> </a>
                                        <a href="#"><div class="month">October</div> </a>
                                        <a href="#"><div class="month">November</div> </a>
                                        <a href="#"><div class="month">December</div> </a>
                                    </div>
                                    <div id="bottom_weather">
                                        <p>&nbsp;📍 &nbsp; 기준 도시&nbsp;&nbsp;&nbsp;<span id="dg">시드니</span></p>
                                        <p>🌞 &nbsp;평년 기온&nbsp;&nbsp;&nbsp;<span id="a">17.5</span> ~ <span id="b">25.1</span></p>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>

            <!-- 위치 -->
            <div id="location_container">
                <div id="location_text">
                    <p>위치</p>
                </div>
                
                <div id="location_img">
                    <img src="images/Australia/australia_location.png" alt="australia_location" style="border: none;">
                    
                    <a href="https://www.google.com/maps/place/Australia/@-26.2412083,125.9560889,4z/data=!4m6!3m5!1s0x2b2bfd076787c5df:0x538267a1955b1352!8m2!3d-25.274398!4d133.775136!16zL20vMGNoZ2h5?hl=en&entry=ttu"
                        target="_blank">
                        <div id="circleinfo">
                            <p>
                                <i class="fa-solid fa-circle-info" style="color: #7d7d7d;"></i>
                            </p>
                        </div>
                    </a>
                </div>
            </div>
        </div>

        <!-- 해외 지역 주요 관광지 -->
        <div id="city_mainplace"> <!-- container -->
            <h2>호주의 주요 관광지</h2> <!-- 지역 이름, 각 지역 상세 페이지마다 바꿔주기  -->
       
            <div id="searchWord">
                <input type="text" placeholder="Search..." id="search_input">
                <button type="button" id="search_button">
                    <i class="fa-solid fa-magnifying-glass fa-lg" style="color: #606060;" id="glass"></i>
                </button>
            </div>
        </div> <!-- city_mainplace -->


        <!-- 주요 관광지 3곳 -->
        <div id="tourist_attraction">

            <!-- 첫번째 관광지 -->
            <div class="attraction"> 
                <div class="attr_text"> 
                    <p>오페라 하우스</p>
                </div>
                <!-- 관광지 사진 -->
                <div class="attr_imgbox"> 
                    <img src="images/Australia/sydney.png" alt="sydney">
                </div>
                <!-- 관광지 상세 위치-->
                <div class="dot">
                    <i class="fa-solid fa-location-dot" style="color: rgb(239, 64, 64);"> 
                        <span class="dot_text">시드니</span></i>
                </div>
            </div><!-- first_attr -->

            <!-- 두번째 관광지 -->
            <div class="attraction">
                <div class="attr_text">
                    <p>웰링턴 산</p>
                </div>

                <div class="attr_imgbox">
                    <img src="images/Australia/wellington_mount_.png" alt="wellington_mount">
                </div>

                <div class="dot">
                    <i class="fa-solid fa-location-dot" style="color: rgb(239, 64, 64);"> 
                        <span class="dot_text"><small>테즈메이니아</small></span></i>
                </div>
            </div>
            
             <!-- 세번째 관광지 -->
            <div class="attraction">
                <div class="attr_text">
                    <p>맨리 비치</p>
                    
                </div>
                <div class="attr_imgbox">
                    <img src="images/Australia/Manly_beach.png" alt="Manly_beach">
                </div>

                <div class="dot">
                    <i class="fa-solid fa-location-dot" style="color: rgb(239, 64, 64);"> 
                        <span class="dot_text">시드니</span></i>
                </div>
            </div>
        </div>

        <!-- 오늘의 큐레이션 -->
        <div id="todayCuration">
            <h2>오늘의 큐레이션</h2> 
        </div>

        <!-- 큐레이션 게시물 4개 -->
        <div id="curation_content">
            
            <a href="https://blog.naver.com/the_trip/223115303360" target="_blank"
                class="curationBox"> 
                <div class="imgBox1"> 
                    <img class="img" src="images/Australia/wine.png" alt="wine">
                </div>

                <div class="textBox1"> 
                    <div class="Ctext1">
                        <p><br></p>
                        <p>&nbsp;술이 술술 들어가는<br> &nbsp;브리즈번 술 모음집</p>
                    </div>
                    
                </div>
            </a>

            <a href="https://blog.naver.com/rina_1020/223271203089?&isInf=true" target="_blank"
                class="curationBox"> 
                <div class="imgBox2">
                    <img class="img" src="images/Australia/bombo_headland.png" alt="bombo_headland">
                </div>
                <div class="textBox2">
                    <div class="Ctext2">
                        <p>&nbsp;히든 여행지,<br>&nbsp;봄보 헤드랜드</p>
                    </div>
                    
                </div>
            </a>
            
            <a href="https://blog.naver.com/cvovz/223273976287?&isInf=true" 
                target="_blank"  class="curationBox"> 
                <div class="imgBox3">
                    <img class="img" src="images/Australia/coffee.png" alt="coffee">
                </div>
                <div class="textBox3">
                    <div class="Ctext3">
                        <p><small>호주 카페 커피 주문방법과</small><br>꿀팁까지!</p>
                    </div>
                </div>
            </a>
            
            <a href="https://blog.naver.com/gudth331/223270422124?&isInf=true" target="_blank"
                class="curationBox"> 
                <div class="imgBox4">
                    <img class="img" src="images/Australia/eta.png" alt="how to written eta">
                </div>
                <div class="textBox4">
                    <div class="Ctext4">
                         <p><small>호주 시드니 ETA 관광 비자</small>
                        <br> 발급 5분 컷 작성 방법!</p> 
                    </div>
                </div>
            </a>
        
        </div>
    </section>
    
    <script src="js/busan.js"></script>
    <script src="../resources/js/main.js"></script>
    
    <!-- footer 부분 -->
  	<jsp:include page="../footer.jsp" />
</body>
</html>