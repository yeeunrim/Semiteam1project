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
                <img src="images/UnitedKingdom/uk2.png" alt="uk bg" id="area_pic">
            </div>
            
            <div id="area_text"> <!-- item2 -->
                <p>영국</p>
            </div>
        </div><!-- main -->

        <!-- 해외 지역 정보 -->
        <div id="infobox"> 
            <div id="infotext">
                유럽 대륙 서북쪽에 자리한 섬나라로 우아한 왕실 문화와 신사적 이미지가 연상되는 나라
            </div>
        
            <ul style="list-style: none; font-size: 1.7vw; text-align: left;" >
                <li>💰 <b>환율&nbsp;&nbsp;</b>
                        <span id="lg">1GBP&nbsp;</span>
                        1,658.97원&nbsp;&nbsp; 
                </li>
                <li>🔌 <b>전압&nbsp;&nbsp;</b><span id="lg"> 정보 &nbsp;</span> 50Hz 230V</li>
                <li>📅 <b>추천 여행 기간&nbsp;&nbsp;</b>
                    <span id="lg">기준도시&nbsp;</span>런던 /
                    <span id="lg">추천기간</span>&nbsp;6월 ~ 7월
                </li>
                <li>💼 <b>비자&nbsp;&nbsp;</b><span id="lg"> 정보&nbsp;</span> 방문 시 최대 180일 무비자 체류 가능</li>
                <li>📝 <b>출입국 신고서&nbsp;&nbsp;</b><span id="lg"> 정보&nbsp;</span>
                    입국 심고서 작성 필요</li>
                <li>📞 <b>주요 연락처&nbsp;&nbsp;</b>
                    <span id="lg"> 응급전화&nbsp;</span>999 /
                    <span id="lg">경찰</span> 02
                </li>
                <li>🏛️ <b>한국 대사관 </b><small>(런던 주재)</small>
                    <br><span id="lg">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;전화&nbsp;</span>+44-20-7227-5500 / <span id="lg">긴급</span> +44-78-7650-6895
                </li>
            </ul>

            <!-- ( Tip! 여행 기초 정보 더보기 > ) 버튼 -->
            <div id="tipbox"> 
                <p>
                    <a href="https://travel.naver.com/overseas/GB186216/country/summary" target="_blank">
                     Tip ! 여행 기초 정보 더보기 <i class="fa-solid fa-angle-right" id="angleright"></i>
                    </a>
                </p>
            </div>
        </div>
        
        <!-- 국내 날씨, 위치 -->
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
                                        <p> 📍 &nbsp;기준 도시&nbsp;&nbsp;&nbsp;<span id="dg">런던</span></p>
                                        <p>🌞 &nbsp;평년 기온&nbsp;&nbsp;&nbsp;<span id="a">3.4</span> ~ <span id="b">8.2</span></p>
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
                    <img src="images/UnitedKingdom/uk_location.png" alt="UK location">
                    
                    <a href="https://www.google.com/maps/place/United+Kingdom/@54.5512799,-4.4737716,5z/data=!3m1!4b1!4m6!3m5!1s0x25a3b1142c791a9:0xc4f8a0433288257a!8m2!3d55.378051!4d-3.435973!16zL20vMDdzc2M?hl=en&entry=ttu"
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
            <h2>영국의 주요 관광지</h2> <!-- 지역 이름, 각 지역 상세 페이지마다 바꿔주기  -->
       
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
                    <p>에든버러 성</p>
                </div>
                <!-- 관광지 사진 -->
                <div class="attr_imgbox"> 
                    <img src="images/UnitedKingdom/Edinburgh_castle.png" alt="Edinburgh_castle">
                </div>
                <!-- 관광지 상세 위치-->
                <div class="dot">
                    <i class="fa-solid fa-location-dot" style="color: rgb(239, 64, 64);"> 
                        <span class="dot_text">에든버러</span></i>
                </div>
            </div><!-- first_attr -->

            <!-- 두번째 관광지 -->
            <div class="attraction">
                <div class="attr_text">
                    <p>더 샤드 전망대</p>
                </div>

                <div class="attr_imgbox">
                    <img src="images/UnitedKingdom/the_shard.png" alt="the_shard">
                </div>

                <div class="dot">
                    <i class="fa-solid fa-location-dot" style="color: rgb(239, 64, 64);"> 
                        <span class="dot_text">런던</span></i>
                </div>
            </div>
            
             <!-- 세번째 관광지 -->
            <div class="attraction">
                <div class="attr_text">
                    <p>리버풀 대성당</p>
                    
                </div>
                <div class="attr_imgbox">
                    <img src="images/UnitedKingdom/Liverpool.png" alt="Liverpool Cathedral">
                </div>

                <div class="dot">
                    <i class="fa-solid fa-location-dot" style="color: rgb(239, 64, 64);"> 
                        <span class="dot_text">리버풀</span></i>
                </div>
            </div>
        </div>

        <!-- 오늘의 큐레이션 -->
        <div id="todayCuration">
            <h2>오늘의 큐레이션</h2> 
        </div>

        <!-- 큐레이션 게시물 4개 -->
        <div id="curation_content">
            
            <a href="https://blog.naver.com/the_trip/222758124837" target="_blank"
                class="curationBox"> 
                <div class="imgBox1"> 
                    <img class="img" src="images/UnitedKingdom/yeeuny.png" alt="teamLeader yeeun :D">
                </div>

                <div class="textBox1"> 
                    <div class="Ctext1">
                        <p><br></p>
                        <p><small>북런던을 대표하는 축구<br>클럽과 홈구장 살펴보기</small></p>
                    </div>
                    
                </div>
            </a>

            <a href="https://post.naver.com/viewer/postView.nhn?memberNo=41466008&volumeNo=36714727" target="_blank"
                class="curationBox"> 
                <div class="imgBox2">
                    <img class="img" src="images/UnitedKingdom/manchester.png" alt="manchester">
                </div>
                <div class="textBox2">
                    <div class="Ctext2">
                        <p>다양성의 도시,<br>맨체스터 탐미</p>
                    </div>
                    
                </div>
            </a>
            
            <a href="https://post.naver.com/viewer/postView.nhn?memberNo=41739456&volumeNo=36308634" 
                target="_blank"  class="curationBox"> 
                <div class="imgBox3">
                    <img class="img" src="images/UnitedKingdom/Edinburgh.png" alt="Edinburgh trip">
                </div>
                <div class="textBox3">
                    <div class="Ctext3">
                        <p><small>거리마다 영화 같은 풍경들</small><br>에든버러 여행</p>
                    </div>
                </div>
            </a>
            
            <a href="https://post.naver.com/viewer/postView.nhn?memberNo=41466008&volumeNo=34438256" target="_blank"
                class="curationBox"> 
                <div class="imgBox4">
                    <img class="img" src="images/UnitedKingdom/Bristol.png" alt="Bristol">
                </div>
                <div class="textBox4">
                    <div class="Ctext4">
                         <p>웨스트컨트리의 여유,<br>브리스톨</p> 
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