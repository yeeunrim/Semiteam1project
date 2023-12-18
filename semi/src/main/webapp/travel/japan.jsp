<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일본 여행 상세 페이지</title>
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
            <div id="area_img"> 
                <img src="images/Japan/japan1_.png" alt="japang bg" id="area_pic">
            </div>
            
            <div id="area_text"> 
                <p>일본</p>
            </div>
        </div><!-- main -->

        <!-- 해외 지역 정보 -->
        <div id="infobox"> 
            <div id="infotext">
                오키나와에서 홋카이도까지 남과 북의 뚜렷한 기후 차로 아름다운 자연과 다양한 문화를 가지고 있다.
            </div>
        
            <ul style="list-style: none; font-size: 1.7vw; text-align: left;" >
                <li>💰 <b>환율&nbsp;&nbsp;</b>
                        <span id="lg">100JPY&nbsp;</span>
                        912.42원&nbsp;&nbsp; 
                </li>
                <li>🔌 <b>전압&nbsp;&nbsp;</b><span id="lg"> 정보 &nbsp;</span> 50Hz, 60HZ 100V</li>
                <li>📅 <b>추천 여행 기간&nbsp;&nbsp;</b>
                    <span id="lg">기준도시&nbsp;</span>&nbsp;도쿄 /
                    <span id="lg">추천기간&nbsp;</span>&nbsp;4 ~ 5월 , 10 ~ 11월
                </li>
                <li>💼 <b>비자&nbsp;&nbsp;</b><span id="lg"> 정보&nbsp;</span>90일 무비자
                    <small>(관광 목적으로 방문하는 경우, 무비자로 최대 90일간 머무를 수 있음)</small>
                </li>
                <li>📝 <b>출입국 신고서&nbsp;&nbsp;</b><span id="lg"> 정보&nbsp;</span>
                    입국 신고서 및 세관 신고서 작성 필요</li>
                <li>📞 <b>주요 연락처&nbsp;&nbsp;</b>
                    <span id="lg"> 응급전화&nbsp;</span>119 /
                    <span id="lg">경찰</span> 110
                </li>
                <li>🏛️ <b>한국 대사관 </b><small>(고베, 나고야, 니가타, 삿포로, 센다이, 오사카, 요코하마, 히로시마, 후쿠오카)</small>
                    <br><span id="lg">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;전화&nbsp;</span>+(81-3)3455-2601~3 / <span id="lg">긴급</span> (81-70) 2153-5454
                </li>
            </ul>

            <!-- ( Tip! 여행 기초 정보 더보기 > ) 버튼 -->
            <div id="tipbox"> 
                <p>
                    <a href="https://travel.naver.com/overseas/JP294232/country/summary" target="_blank">
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
                                        <p> 📍 &nbsp;기준 도시&nbsp;&nbsp;&nbsp;<span id="dg">도쿄</span></p>
                                        <p>🌞 &nbsp;평년 기온&nbsp;&nbsp;&nbsp;<span id="a">5.1</span> ~ <span id="b">12.4</span></p>
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
                    <img src="images/Japan/japan_location.png" alt="japan location" style="border: none;">
                    
                    <a href="https://www.google.com/maps/place/Japan/@31.64589,115.7661824,4z/data=!3m1!4b1!4m6!3m5!1s0x34674e0fd77f192f:0xf54275d47c665244!8m2!3d36.204824!4d138.252924!16zL20vMDNfM2Q?hl=en&entry=ttu"
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
            <h2>일본의 주요 관광지</h2> <!-- 지역 이름, 각 지역 상세 페이지마다 바꿔주기  -->
       
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
                    <p>오도리 공원</p>
                </div>
                <!-- 관광지 사진 -->
                <div class="attr_imgbox"> 
                    <img src="images/Japan/odori_park.png" alt="odori_park">
                </div>
                <!-- 관광지 상세 위치-->
                <div class="dot">
                    <i class="fa-solid fa-location-dot" style="color: rgb(239, 64, 64);"> 
                        <span class="dot_text">삿포로</span></i>
                </div>
            </div><!-- first_attr -->

            <!-- 두번째 관광지 -->
            <div class="attraction">
                <div class="attr_text">
                    <p>유니버설 스튜디오</p>
                </div>

                <div class="attr_imgbox">
                    <img src="images/Japan/universal_studio.png" alt="universal_studio">
                </div>

                <div class="dot">
                    <i class="fa-solid fa-location-dot" style="color: rgb(239, 64, 64);"> 
                        <span class="dot_text">오사카</span></i>
                </div>
            </div>
            
             <!-- 세번째 관광지 -->
            <div class="attraction">
                <div class="attr_text">
                    <p>도쿄타워</p>
                    
                </div>
                <div class="attr_imgbox">
                    <img src="images/Japan/dokyo_tower.png" alt="dokyo_tower">
                </div>

                <div class="dot">
                    <i class="fa-solid fa-location-dot" style="color: rgb(239, 64, 64);"> 
                        <span class="dot_text">도쿄</span></i>
                </div>
            </div>
        </div>

        <!-- 오늘의 큐레이션 -->
        <div id="todayCuration">
            <h2>오늘의 큐레이션</h2> 
        </div>

        <!-- 큐레이션 게시물 4개 -->
        <div id="curation_content">
            
            <a href="https://blog.naver.com/selly_1003/223292135900" target="_blank"
                class="curationBox"> 
                <div class="imgBox1"> 
                    <img class="img" src="images/Japan/gaeun_japan.png" alt="gaeun_japan">
                </div>

                <div class="textBox1"> 
                    <div class="Ctext1">
                        <p><br></p>
                        <p><small>일본 전통의상 체험,</small><br>기모노 대여 후기</small></p>
                    </div>
                    
                </div>
            </a>

            <a href="https://m.blog.naver.com/bada3347/223077113804" target="_blank"
                class="curationBox"> 
                <div class="imgBox2">
                    <img class="img" src="images/Japan/yeeun_japan2.jpg" alt="yeeun_japan2">
                </div>
                <div class="textBox2">
                    <div class="Ctext2">
                        <p>&nbsp;오사카 여행,<br><small>&nbsp;난바 야사카 신사 가는법</small></p>
                    </div>
                    
                </div>
            </a>
            
            <a href="https://blog.naver.com/feat_sr/223282389118" 
                target="_blank"  class="curationBox"> 
                <div class="imgBox3">
                    <img class="img" src="images/Japan/gaeun_japan2.png" alt="gaeun_japan2">
                </div>
                <div class="textBox3">
                    <div class="Ctext3">
                        <p><small>도톤보리 낮과밤,</small><br>글리코상 포토존</p>
                    </div>
                </div>
            </a>
            
            <a href="https://blog.naver.com/tourdesigner/223286716300?&isInf=true" target="_blank"
                class="curationBox"> 
                <div class="imgBox4">
                    <img class="img" src="images/Japan/spa.png" alt="spa">
                </div>
                <div class="textBox4">
                    <div class="Ctext4">
                         <p><small>다카야마에서 출발하는</small><br>히라유 일본 온천여행</p> 
                    </div>
                </div>
            </a>
        
        </div>
    </section>
    
    <script src="js/japan.js"></script>
    <script src="../resources/js/main.js"></script>
    
    <!-- footer 부분 -->
  	<jsp:include page="../footer.jsp" />
</body>
</html>