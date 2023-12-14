<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>해외 여행 | 메인</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/out_main.css">
<link rel="stylesheet" href="../../resources/css/style.css">
<script src="https://kit.fontawesome.com/aa24b12773.js" crossorigin="anonymous"></script>
</head>
<body>
	<!-- header -->
	<jsp:include page="../../header.jsp" />
	
	<section id="main_container">
	    <!-- body 부분 -->
	    <section>
	      <!-- 국가/도시 검색 창 영역 -->
	      <div id="mainPicture">
	        <img src="images/jeju-winter.jpg" alt="메인 화면">
	        <div class="searchTravel">
	          <p>어디로 여행가시나요?</p>
	          <div class="searchWord">
	            <label>
	              <input type="text" placeholder=" 국가명, 도시명으로 검색하세요. (추천 도시 : 홍콩, 뉴욕, 제주도)" size="45%">
	              <button type="button"><i class="fa-solid fa-magnifying-glass fa-lg" style="color: #606060;"></i></button>
	            </label>
	          </div>
	        </div>
	      </div>
  
	      <!-- 대한민국 도시 선택 창 영역 -->
	      <div id="searchCity">
	        <div class="searchCityBox">
	          <p>해외 여행지</p>
	          <table>
	            <tbody>
	              <!-- 첫번째 행 -->
	              <tr>
	                <td>주요 나라</td>
	                <td>일본</td>
	                <td>중국</td>
	                <td>태국</td>
	                <td>대만</td>
	                <td>영국</td>
	                <td>한국</td>
	              </tr>
	              
	              <!-- 두번째 행 -->
	              <tr>
	                <!-- 아시아 -->
	                <td>
	                  <div class="dropdown">
	                    <button id="dropbtn" class="dropbtn">
	                      <span class="dropbtn_content"><p>아시아</p></span>
	                      <span class="dropbtn_click" style="font-family: Material Icons; font-size : 20px; color : #707070; float:right;"
	                        onclick="dropdown()">arrow_drop_down</span>
	                    </button>
	                    <div class="dropdown-content">
	                      <a href="#"><div class="city">대한민국</div></a>
	                      <a href="#"><div class="city">북한</div></a>
	                      <a href="#"><div class="city">중국</div></a>
	                      <a href="#"><div class="city">마카오</div></a>
	                      <a href="#"><div class="city">홍콩</div></a>
	                      <a href="#"><div class="city">일본</div></a>
	                      <a href="#"><div class="city">대만</div></a>
	                      <a href="#"><div class="city">몽골</div></a>
	                      <a href="#"><div class="city">우즈베키스탄</div></a>
	                      <a href="#"><div class="city">카자흐스탄</div></a>
	                      <a href="#"><div class="city">키르기스스탄</div></a>
	                      <a href="#"><div class="city">타지키스탄</div></a>
	                      <a href="#"><div class="city">투르크메니스탄</div></a>
	                      <a href="#"><div class="city">동티모르</div></a>
	                      <a href="#"><div class="city">라오스</div></a>
	                      <a href="#"><div class="city">말레이시아</div></a>
	                      <a href="#"><div class="city">미얀마</div></a>
	                      <a href="#"><div class="city">베트남</div></a>
	                      <a href="#"><div class="city">브루나이</div></a>
	                      <a href="#"><div class="city">싱가포르</div></a>
	                      <a href="#"><div class="city">인도네시아</div></a>
	                      <a href="#"><div class="city">캄보디아</div></a>
	                      <a href="#"><div class="city">태국</div></a>
	                      <a href="#"><div class="city">필리핀</div></a>
	                      <a href="#"><div class="city">레바논</div></a>
	                      <a href="#"><div class="city">바레인</div></a>
	                      <a href="#"><div class="city">사우디아라비아</div></a>
	                      <a href="#"><div class="city">시리아</div></a>
	                      <a href="#"><div class="city">아랍에미리트</div></a>
	                      <a href="#"><div class="city">오만</div></a>
	                      <a href="#"><div class="city">요르단</div></a>
	                      <a href="#"><div class="city">이라크</div></a>
	                      <a href="#"><div class="city">이란</div></a>
	                      <a href="#"><div class="city">이스라엘</div></a>
	                      <a href="#"><div class="city">카타르</div></a>
	                      <a href="#"><div class="city">팔레스타인</div></a>
	                      <a href="#"><div class="city">네팔</div></a>
	                      <a href="#"><div class="city">몰디브</div></a>
	                      <a href="#"><div class="city">방글라데시</div></a>
	                      <a href="#"><div class="city">스리랑카</div></a>
	                      <a href="#"><div class="city">아프가니스탄</div></a>
	                      <a href="#"><div class="city">인도</div></a>
	                      <a href="#"><div class="city">파키스탄</div></a>
	                    </div>
	                  </div>
	                </td>
	
	                <!-- 유럽 -->
	                <td>
	                  <div class="dropdown">
	                    <button id="dropbtn2" class="dropbtn">
	                      <span id="dropbtn_content2" class="dropbtn_content"><p>유럽</p></span>
	                      <span class="dropbtn_click" style="font-family: Material Icons; font-size : 20px; color : #707070; float:right;"
	                        onclick="dropdown2()">arrow_drop_down</span>
	                    </button>
	                    <div id="dropdown-content2" class="dropdown-content">
	                      <a href="#"><div class="city2">독일</div></a>
	                      <a href="#"><div class="city2">영국</div></a>
	                      <a href="#"><div class="city2">프랑스</div></a>
	                      <a href="#"><div class="city2">이탈리아</div></a>
	                      <a href="#"><div class="city2">러시아</div></a>
	                      <a href="#"><div class="city2">스페인</div></a>
	                      <a href="#"><div class="city2">튀르키예</div></a>
	                      <a href="#"><div class="city2">네덜란드</div></a>
	                      <a href="#"><div class="city2">스위스</div></a>
	                      <a href="#"><div class="city2">폴란드</div></a>
	                      <a href="#"><div class="city2">스웨덴</div></a>
	                      <a href="#"><div class="city2">벨기에</div></a>
	                      <a href="#"><div class="city2">오스트리아</div></a>
	                      <a href="#"><div class="city2">아일랜드</div></a>
	                      <a href="#"><div class="city2">노르웨이</div></a>
	                      <a href="#"><div class="city2">덴마크</div></a>
	                      <a href="#"><div class="city2">핀란드</div></a>
	                      <a href="#"><div class="city2">루마니아</div></a>
	                      <a href="#"><div class="city2">체코</div></a>
	                      <a href="#"><div class="city2">포르투갈</div></a>
	                      <a href="#"><div class="city2">그리스</div></a>
	                      <a href="#"><div class="city2">헝가리</div></a>
	                      <a href="#"><div class="city2">우크라이나</div></a>
	                      <a href="#"><div class="city2">슬로바키아</div></a>
	                      <a href="#"><div class="city2">룩셈부르크</div></a>
	                      <a href="#"><div class="city2">불가리아</div></a>
	                      <a href="#"><div class="city2">크로아티아</div></a>
	                      <a href="#"><div class="city2">라투아니아</div></a>
	                      <a href="#"><div class="city2">벨라루스</div></a>
	                      <a href="#"><div class="city2">세르비아</div></a>
	                      <a href="#"><div class="city2">슬로베니아</div></a>
	                      <a href="#"><div class="city2">라트비아</div></a>
	                      <a href="#"><div class="city2">에스토니아</div></a>
	                      <a href="#"><div class="city2">키프로스</div></a>
	                      <a href="#"><div class="city2">아이슬란드</div></a>
	                      <a href="#"><div class="city2">보스니아</div></a>
	                      <a href="#"><div class="city2">알바니아</div></a>
	                      <a href="#"><div class="city2">몰타</div></a>
	                      <a href="#"><div class="city2">북마케도니아</div></a>
	                      <a href="#"><div class="city2">몰도바</div></a>
	                      <a href="#"><div class="city2">모나코</div></a>
	                      <a href="#"><div class="city2">리히텐슈타인</div></a>
	                      <a href="#"><div class="city2">몬테네그로</div></a>
	                      <a href="#"><div class="city2">안도라</div></a>
	                      <a href="#"><div class="city2">산마리노</div></a>
	                    </div>
	                  </div>
	                </td>
	
	                <!-- 북아메리카 -->
	                <td>
	                  <div class="dropdown">
	                    <button id="dropbtn3" class="dropbtn">
	                      <span id="dropbtn_content3" class="dropbtn_content"><p>북아메리카</p></span>
	                      <span class="dropbtn_click" style="font-family: Material Icons; font-size : 20px; color : #707070; float:right;"
	                        onclick="dropdown3()">arrow_drop_down</span>
	                    </button>
	                    <div id="dropdown-content3" class="dropdown-content">
	                      <a href="#"><div class="city2">캐나다</div></a>
	                      <a href="#"><div class="city2">미국</div></a>
	                      <a href="#"><div class="city2">멕시코</div></a>
	                      <a href="#"><div class="city2">벨리즈</div></a>
	                      <a href="#"><div class="city2">과테말라</div></a>
	                      <a href="#"><div class="city2">엘살바도르</div></a>
	                      <a href="#"><div class="city2">온두라스</div></a>
	                      <a href="#"><div class="city2">니카라과</div></a>
	                      <a href="#"><div class="city2">코스타리카</div></a>
	                      <a href="#"><div class="city2">파나마</div></a>
	                      <a href="#"><div class="city2">바하마</div></a>
	                      <a href="#"><div class="city2">쿠바</div></a>
	                      <a href="#"><div class="city2">자메이카</div></a>
	                      <a href="#"><div class="city2">아이티</div></a>
	                      <a href="#"><div class="city2">도미니카</div></a>    
	                    </div>
	                  </div>
	                </td>
	
	                <!-- 남아메리카 -->
	                <td>
	                  <div class="dropdown">
	                    <button id="dropbtn4" class="dropbtn">
	                      <span id="dropbtn_content4" class="dropbtn_content"><p>남아메리카</p></span>
	                      <span class="dropbtn_click" style="font-family: Material Icons; font-size : 20px; color : #707070; float:right;"
	                        onclick="dropdown4()">arrow_drop_down</span>
	                    </button>
	                    <div id="dropdown-content4" class="dropdown-content">
	                      <a href="#"><div class="city2">가이아나</div></a>
	                      <a href="#"><div class="city2">베네수엘라</div></a>
	                      <a href="#"><div class="city2">볼리비아</div></a>
	                      <a href="#"><div class="city2">브라질</div></a>
	                      <a href="#"><div class="city2">수리남</div></a>
	                      <a href="#"><div class="city2">아르헨티나</div></a>
	                      <a href="#"><div class="city2">에콰도르</div></a>
	                      <a href="#"><div class="city2">우루과이</div></a>
	                      <a href="#"><div class="city2">칠레</div></a>
	                      <a href="#"><div class="city2">콜롬비아</div></a>
	                      <a href="#"><div class="city2">파라과이</div></a>
	                      <a href="#"><div class="city2">페루</div></a>
	                    </div>
	                  </div>
	                </td>
	
	                <!-- 아프리카 -->
	                 <td>
	                  <div class="dropdown">
	                    <button id="dropbtn5" class="dropbtn">
	                      <span id="dropbtn_content5" class="dropbtn_content"><p>아프리카</p></span>
	                      <span class="dropbtn_click" style="font-family: Material Icons; font-size : 20px; color : #707070; float:right;"
	                        onclick="dropdown5()">arrow_drop_down</span>
	                    </button>
	                    <div id="dropdown-content5" class="dropdown-content">
	                      <a href="#"><div class="city2">모로코</div></a>
	                      <a href="#"><div class="city2">알제리</div></a>
	                      <a href="#"><div class="city2">튀니지</div></a>
	                      <a href="#"><div class="city2">리비아</div></a>
	                      <a href="#"><div class="city2">이집트</div></a>
	                      <a href="#"><div class="city2">소말리아</div></a>
	                      <a href="#"><div class="city2">에티오피아</div></a>
	                      <a href="#"><div class="city2">남수단</div></a>
	                      <a href="#"><div class="city2">우간다</div></a>
	                      <a href="#"><div class="city2">르완도</div></a>
	                      <a href="#"><div class="city2">케냐</div></a>
	                      <a href="#"><div class="city2">탄자니아</div></a>
	                      <a href="#"><div class="city2">잠비아</div></a>
	                      <a href="#"><div class="city2">짐바브웨</div></a>
	                      <a href="#"><div class="city2">마다가스카르</div></a>
	                      <a href="#"><div class="city2">남아공</div></a>
	                      <a href="#"><div class="city2">콩고</div></a>
	                      <a href="#"><div class="city2">가봉</div></a>
	                      <a href="#"><div class="city2">적도기니</div></a>
	                      <a href="#"><div class="city2">카메룬</div></a>
	                      <a href="#"><div class="city2">나이지리아</div></a>
	                      <a href="#"><div class="city2">가나</div></a>
	                      <a href="#"><div class="city2">토고</div></a>
	                      <a href="#"><div class="city2">코트니부아르</div></a>
	                      <a href="#"><div class="city2">세네갈</div></a>
	                      <a href="#"><div class="city2">말리</div></a>
	                      <a href="#"><div class="city2">기니</div></a>
	                      <a href="#"><div class="city2">감비아</div></a>
	                    </div>
	                  </div>
	                </td>
	                
	                <!-- 오스트레일리아 -->
	                <td>
	                  <div class="dropdown">
	                    <button id="dropbtn6" class="dropbtn">
	                      <span id="dropbtn_content6" class="dropbtn_content"><p>오세아니아</p></span>
	                      <span class="dropbtn_click" style="font-family: Material Icons; font-size : 20px; color : #707070; float:right;"
	                        onclick="dropdown6()">arrow_drop_down</span>
	                    </button>
	                    <div id="dropdown-content6" class="dropdown-content">
	                      <a href="#"><div class="city2">호주</div></a>
	                      <a href="#"><div class="city2">뉴질랜드</div></a>
	                      <a href="#"><div class="city2">멜라네시아</div></a>
	                      <a href="#"><div class="city2">미크로네시아</div></a>
	                      <a href="#"><div class="city2">폴리네시아</div></a>
	                    </div>
	                  </div>
	                </td>
	                
	                <!-- 남극 -->
	                <td>
	                  <div class="dropdown">
	                    <button id="dropbtn7" class="dropbtn">
	                      <span id="dropbtn_content7" class="dropbtn_content"><p>남극</p></span>
	                      <span class="dropbtn_click" style="font-family: Material Icons; font-size : 20px; color : #707070; float:right;"
	                        onclick="dropdown7()">arrow_drop_down</span>
	                    </button>
	                    <div id="dropdown-content7" class="dropdown-content">
	                      <a href="#"><div class="city2">남극기지</div></a>
	                    </div>
	                  </div>
	                </td>
	              </tr>
	            </tbody>
	          </table>
	        </div>
	      </div>

      <!-- 요즘 많이 찾는 지역 -> 상세보기 이동 영역 -->
      <div id="visitCity">
        <p>요즘 많이 찾는 지역</p>
        
        <div id="visitCity_image"> 
          <div class="image_datail">
            <a href="#"><img src="images/gangneung.png" alt="강릉">
            <p>영국<br>상세보기</a></p>
          </div>

          <div class="image_datail">
            <a href="#"><img src="images/seoul.png" alt="서울">
            <p>스위스<br>상세보기</a></p>
          </div>

          <div class="image_datail">
            <a href="#"><img src="images/jeju.png" alt="제주">
            <p>일본<br>상세보기</a></p>
          </div>

          <div class="image_datail">
            <a href="#"><img src="images/busan.png" alt="부산" class="image4">
            <p>호주<br>상세보기</a></p>
          </div>
        </div>
      </div>

      <!-- 요즘 인기 있는 공간 : 롤링배너 -->
      <div id="popularCity">
        <p>요즘 인기 있는 공간</p>
        <!-- 스토리 형식 : 10개로 고정 -->
        <!-- 사진 클릭 시, 여행 후기 카데고리로 이동 후 내용 확인 가능 -->
        <div class="rollingbanner">
          <div class="slide"> <!-- 배너 표시 영역 -->
            <div class="roller"> <!-- 원본 배너 -->
              <ul> <!-- 배너 데이터 -->
                <li class="slide_image">
                  <a href="#"><img id="image1" src="images/pohang-homigot.png" alt="호미곶"></a>
                </li>
                <li class="slide_image">
                  <a href="#"><img id="image2" src="images/woman-flower.jpg" alt="사진찍는여성"></a>
                </li>
                <li class="slide_image">
                  <a href="#"><img id="image3" src="images/lotte-tower.jpg" alt="롯데타워"></a>
                </li>
                <li class="slide_image">
                  <a href="#"><img id="image4" src="images/Daegwallyeong.jpg" alt="대관령"></a>
                </li>
                <li class="slide_image">
                  <a href="#"><img id="image5" src="images/gyeongbokgung-palace.jpg" alt="경복궁"></a>
                </li>
                <li class="slide_image">
                  <a href="#"><img id="image6" src="images/damyang-metasequoia.jpg" alt="담양의 메타세콰이어길"></a>
                </li>
                <li class="slide_image">
                  <a href="#"><img id="image7" src="images/busan-train.jpg" alt="부산레일기차"></a>
                </li>
                <li class="slide_image">
                  <a href="#"><img id="image8" src="images/choenjiyeon-falls.jpg" alt="천지연폭포"></a>
                </li>
                <li class="slide_image">
                  <a href="#"><img id="image9" src="images/incheon-bridge.jpg" alt="인천대교"></a>
                </li>
                <li class="slide_image">
                  <a href="#"><img id="image10" src="images/gyeongju.jpg" alt="경주"></a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div> 

      <!-- 다가오는 행사 및 전시회 -->
      <div id="comingup">
        <span class="comingup-title"><p>다가오는 행사 및 전시회</p></span>

        <div id="comingupbox">
          <div id="calendarbox">
            <div class="calendar-wrap">
              <h2 class="month-year">DEC.</h2>
              <h2 class="month-year2">DECEMBER</h2>
            
              <table class="calendar">
                <thead>
                  <tr>
                    <th class="day-title" scope="col">Sun</th>
                    <th class="day-title" scope="col">Mon</th>
                    <th class="day-title" scope="col">Tue</th>
                    <th class="day-title" scope="col">Wed</th>
                    <th class="day-title" scope="col">Thu</th>
                    <th class="day-title" scope="col">Fri</th>
                    <th class="day-title" scope="col">Sat</th>
                  </tr>
                </thead>
                <tbody>
                  <tr class="week">
                    <td class="day prev-mon" tabindex="0"><span class="day-number">27</span></td>
                    <td class="day prev-mon" tabindex="0"><span class="day-number">28</span></td>
                    <td class="day prev-mon" tabindex="0"><span class="day-number">29</span></td>
                    <td class="day prev-mon" tabindex="0"><span class="day-number">30</span></td>
                    <td class="day" tabindex="0"><span class="day-number">1</span></td>
                    <td class="day" tabindex="0"><span class="day-number">2</span></td>
                    <td class="day" tabindex="0"><span class="day-number">3</span></td>
                  </tr>
                  <tr class="week">
                    <td class="day" tabindex="0"><span class="day-number">4</span></td>
                    <td class="day" tabindex="0"><span class="day-number">5</span></td>
                    <td class="day" tabindex="0"><span class="day-number">6</span></td>
                    <td class="day" tabindex="0"><span class="day-number">7</span></td>
                    <td class="day" tabindex="0"><span class="day-number">8</span></td>
                    <td class="day" tabindex="0"><span class="day-number">9</span></td>
                    <td class="day" tabindex="0"><span class="day-number">10</span></td>
                  </tr>
                  <tr class="week">
                    <td class="day" tabindex="0"><span class="day-number">11</span></td>
                    <td class="day" tabindex="0"><span class="day-number">12</span></td>
                    <td class="day" tabindex="0"><span class="day-number">13</span></td>
                    <td class="day" tabindex="0"><span class="day-number">14</span></td>
                    <td class="day" tabindex="0"><span class="day-number">15</span></td>
                    <td class="day" tabindex="0"><span class="day-number">16</span></td>
                    <td class="day" tabindex="0"><span class="day-number">17</span></td>
                  </tr>
                  <tr class="week">
                    <td class="day today" tabindex="0"><span class="day-number">18</span></td>
                    <td class="day" tabindex="0"><span class="day-number">19</span></td>
                    <td class="day" tabindex="0"><span class="day-number">20</span></td>
                    <td class="day" tabindex="0"><span class="day-number">21</span></td>
                    <td class="day" tabindex="0"><span class="day-number">22</span></td>
                    <td class="day" tabindex="0"><span class="day-number">23</span></td>
                    <td class="day" tabindex="0"><span class="day-number">24</span></td>
                  </tr>
                  <tr class="week">
                    <td class="day" tabindex="0"><span class="day-number">25</span></td>
                    <td class="day" tabindex="0"><span class="day-number">26</span></td>
                    <td class="day" tabindex="0"><span class="day-number">27</span></td>
                    <td class="day" tabindex="0"><span class="day-number">28</span></td>
                    <td class="day" tabindex="0"><span class="day-number">29</span></td>
                    <td class="day" tabindex="0"><span class="day-number">30</span></td>
                    <td class="day" tabindex="0"><span class="day-number">31</span></td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
  
  
  
          <div id="eventlist">
            <div class="eventlist-wrap">

              <!-- 날짜 미선택 시, 보이는 화면 -->
              <div class="slider_daypickno">
                <span class="daypick"><p>원하는 날짜를 클릭해주세요.</p></span>
                <div class="slider_btn">
                  <button class="prev"><i id="prev" class="fa-solid fa-chevron-left" style="color: #444444;"></i></button>
                  <button class="next"><i id="next" class="fa-solid fa-chevron-right" style="color: #444444;"></i></button>
                </div>
              </div>


              <!-- 날짜 선택 시, 보이는 화면 -->
              <!-- 버튼을 누르면 이전,다음 행사/전시회 슬라이드로 확인 -->
              <div class="slider_wrap">
                <div class="slider_img">
                  <div class="slider_inner">

                    <div class="card mb-3" style="max-width: 600px;">
                      <div class="row g-0">
                        <div class="col-md-4">
                          <img src="images/festival/불빛동화축제.jpeg" class="img-fluid rounded-start" alt="불빛동화축제">
                        </div>
                        <div class="col-md-8">
                          <div class="card-body">
                            <h5 class="card-title">허브아일랜드 불빛동화축제</h5>
                            <hr>
                            <p class="card-text">기간 : 2023.02.01 (수) ~ 2023.12.31 (일)</p>
                            <p class="card-text">시간 : 10:00 ~ 21:00</p>
                            <p class="card-text">장소 : 허브아일랜드</p>
                            <p class="card-text">요금 : 유료</p>
                          </div>
                        </div>
                      </div>
                    </div>
      
                    <div class="card mb-3" style="max-width: 600px;">
                      <div class="row g-0">
                        <div class="col-md-4">
                          <img src="images/festival/해운대빛축제.jpeg" class="img-fluid rounded-start" alt="해운대빛축제">
                        </div>
                        <div class="col-md-8">
                          <div class="card-body">
                            <h5 class="card-title">해운대 빛축제</h5>
                            <hr>
                            <p class="card-text">기간 : 2023.12.02 (토) ~ 2024.01.31 (수)</p>
                            <p class="card-text">장소 : 해운대해수욕장, 해운대광장, 해운대시장, 온천길 일원</p>
                            <p class="card-text">요금 : 무료</p>
                          </div>
                        </div>
                      </div>
                    </div>
      
                    <div class="card mb-3" style="max-width: 600px;">
                      <div class="row g-0">
                        <div class="col-md-4">
                          <img src="images/festival/광화문광장마켓.jpeg" class="img-fluid rounded-start" alt="광화문광장마켓">
                        </div>
                        <div class="col-md-8">
                          <div class="card-body">
                            <h5 class="card-title">광화문광장 마켓</h5>
                            <hr>
                            <p class="card-text">기간 : 2023.12.15 (금) ~ 2024.01.21 (일)</p>
                            <p class="card-text">시간 : 18:00 ~ 22:00</p>
                            <p class="card-text">장소 : 광화문광장, 세종로공원</p>
                            <p class="card-text">요금 : 무료</p>
                          </div>
                        </div>
                      </div>
                    </div>
      
                    <div class="card mb-3" style="max-width: 600px;">
                      <div class="row g-0">
                        <div class="col-md-4">
                          <img src="images/festival/만수천빛의거리.jpeg" class="img-fluid rounded-start" alt="만수천빛의거리">
                        </div>
                        <div class="col-md-8">
                          <div class="card-body">
                            <h5 class="card-title">만수천 빛의거리</h5>
                            <hr>
                            <p class="card-text">기간 : 2023.12.08 (금) ~ 2024.01.31 (일)</p>
                            <p class="card-text">시간 : 17:00 ~ 22:00</p>
                            <p class="card-text">장소 : 만수복개천 공영주차장 일원</p>
                            <p class="card-text">요금 : 무료</p>
                          </div>
                        </div>
                      </div>
                    </div>
      
                    <div class="card mb-3" style="max-width: 600px;">
                      <div class="row g-0">
                        <div class="col-md-4">
                          <img src="images/festival/간절곶 해맞이.jpeg" class="img-fluid rounded-start" alt="간절곶 해맞이">
                        </div>
                        <div class="col-md-8">
                          <div class="card-body">
                            <h5 class="card-title">간절곶 해맞이</h5>
                            <hr>
                            <p class="card-text">기간 : 2023.12.31 (일) ~ 2024.01.01 (월)</p>
                            <p class="card-text">장소 : 울주군 간절곶 공원</p>
                            <p class="card-text">요금 : 무료</p>
                          </div>
                        </div>
                      </div>
                    </div>
      
                    <div class="card mb-3" style="max-width: 600px;">
                      <div class="row g-0">
                        <div class="col-md-4">
                          <img src="images/festival/스노우 페스티벌.jpeg" class="img-fluid rounded-start" alt="스노우 페스티벌">
                        </div>
                        <div class="col-md-8">
                          <div class="card-body">
                            <h5 class="card-title">씨파크 스노우 페스티벌</h5>
                            <hr>
                            <p class="card-text">기간 : 2023.12.23 (토) ~ 2024.02.28 (수)</p>
                            <p class="card-text">시간 : 10:00 ~ 17:00</p>
                            <p class="card-text">장소 : 합천 씨파크, 카페모토라드 합천</p>
                            <p class="card-text">요금 : 유료</p>
                          </div>
                        </div>
                      </div>
                    </div>
      
                    <div class="card mb-3" style="max-width: 600px;">
                      <div class="row g-0">
                        <div class="col-md-4">
                          <img src="images/festival/겨울, 청계천의 빛.jpeg" class="img-fluid rounded-start" alt="겨울, 청계천의 빛">
                        </div>
                        <div class="col-md-8">
                          <div class="card-body">
                            <h5 class="card-title">겨울, 청계천의 빛</h5>
                            <hr>
                            <p class="card-text">기간 : 2023.12.15 (금) ~ 2023.12.31 (일)</p>
                            <p class="card-text">장소 : 청계광장</p>
                            <p class="card-text">요금 : 무료</p>
                          </div>
                        </div>
                      </div>
                    </div>

                  </div> <!-- slider_inner -->
                </div> <!-- slider_img -->
              </div> <!-- slider_wrap -->

            </div> <!-- eventlist-wrap-->
          </div> <!-- eventlist -->
        </div> <!-- comingupbox -->
        
      </div> <!-- comingup -->
    </section>

    <script src="js/in_main.js"></script>

  </section> <!-- main_container -->
  
  <!-- footer 부분 -->
  <jsp:include page="../../footer.jsp" />
</body>
</html>
</html>