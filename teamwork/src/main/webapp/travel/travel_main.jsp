<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="../../resources/css/style.css">
<link rel="stylesheet" href="css/korea_main.css">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="../../resources/js/main.js"></script>
<script src="https://kit.fontawesome.com/aa24b12773.js" crossorigin="anonymous"></script>
</head>
<body>
	
    <!-- body 부분 -->
    <jsp:include page="../../header.jsp" />
    <div id="container">
    <section>
  
      <!-- 국가/도시 검색 창 영역 -->
      <div id="mainPicture">
        <img src="images/jeju-winter.jpg" alt="메인 화면">
        <div class="searchTravel">
          <h3>어디로 여행가시나요?</h3>
          <div class="searchWord">
            <label>
              <input type="text" placeholder=" 국가명, 도시명으로 검색하세요. (추천 도시 : 홍콩, 뉴욕, 제주도)" size="60%">
              <!-- <button type="button"><i class="fa-solid fa-magnifying-glass fa-lg" style="color: #606060;"></i></button> -->
            </label>
          </div>
        </div>
      </div>
  
      <!-- 대한민국 도시 선택 창 영역 -->
      <div id="searchCity">
        <div class="searchCityBox">
          <p>국내 여행지</p>
          <table>
            <tbody>
              <!-- 첫번째 행 -->
              <tr>
                <td>주요 도시</td>
                <td>서울</td>
                <td>제주</td>
                <td>강릉</td>
                <td>부산</td>
                <td>포항</td>
                <td>춘천</td>
                <td>속초</td>
              </tr>
              
              <!-- 두번째 행 -->
              <tr>
                <!-- 강원도 -->
                <td>
                  <div class="dropdown">
                    <button id="dropbtn" class="dropbtn">
                      <span class="dropbtn_content"><p>강원도</p></span>
                      <span class="dropbtn_click" style="font-family: Material Icons; font-size : 20px; color : #707070; float:right;"
                        onclick="dropdown()">arrow_drop_down</span>
                    </button>
                    <div class="dropdown-content">
                      <a href="#"><div class="city">원주</div></a>
                      <a href="#"><div class="city">춘천</div></a>
                      <a href="#"><div class="city">강릉</div></a>
                      <a href="#"><div class="city">동해</div></a>
                      <a href="#"><div class="city">속초</div></a>
                      <a href="#"><div class="city">삼척</div></a>
                      <a href="#"><div class="city">태백</div></a>
                      <a href="#"><div class="city">홍천</div></a>
                      <a href="#"><div class="city">철원</div></a>
                      <a href="#"><div class="city">횡성</div></a>
                      <a href="#"><div class="city">평창</div></a>
                      <a href="#"><div class="city">정선</div></a>
                      <a href="#"><div class="city">영월</div></a>
                      <a href="#"><div class="city">인제</div></a>
                      <a href="#"><div class="city">고성</div></a>
                      <a href="#"><div class="city">양양</div></a>
                      <a href="#"><div class="city">화천</div></a>
                      <a href="#"><div class="city">양구</div></a>
                    </div>
                  </div>
                </td>

                <!-- 경기도 -->
                <td>
                  <div class="dropdown">
                    <button id="dropbtn2" class="dropbtn">
                      <span id="dropbtn_content2" class="dropbtn_content"><p>경기도</p></span>
                      <span class="dropbtn_click" style="font-family: Material Icons; font-size : 20px; color : #707070; float:right;"
                        onclick="dropdown2()">arrow_drop_down</span>
                    </button>
                    <div id="dropdown-content2" class="dropdown-content">
                      <a href="#"><div class="city2">수원</div></a>
                      <a href="#"><div class="city2">용인</div></a>
                      <a href="#"><div class="city2">고양</div></a>
                      <a href="#"><div class="city2">성남</div></a>
                      <a href="#"><div class="city2">화성</div></a>
                      <a href="#"><div class="city2">부천</div></a>
                      <a href="#"><div class="city2">남양주</div></a>
                      <a href="#"><div class="city2">안산</div></a>
                      <a href="#"><div class="city2">평택</div></a>
                      <a href="#"><div class="city2">안양</div></a>
                      <a href="#"><div class="city2">시흥</div></a>
                      <a href="#"><div class="city2">파주</div></a>
                      <a href="#"><div class="city2">김포</div></a>
                      <a href="#"><div class="city2">의정부</div></a>
                      <a href="#"><div class="city2">광주</div></a>
                      <a href="#"><div class="city2">하남</div></a>
                      <a href="#"><div class="city2">광명</div></a>
                      <a href="#"><div class="city2">군포</div></a>
                      <a href="#"><div class="city2">양주</div></a>
                      <a href="#"><div class="city2">오산</div></a>
                      <a href="#"><div class="city2">이천</div></a>
                      <a href="#"><div class="city2">안산</div></a>
                      <a href="#"><div class="city2">구리</div></a>
                      <a href="#"><div class="city2">의왕</div></a>
                      <a href="#"><div class="city2">포천</div></a>
                      <a href="#"><div class="city2">여주</div></a>
                      <a href="#"><div class="city2">과천</div></a>
                      <a href="#"><div class="city2">양평</div></a>
                      <a href="#"><div class="city2">가평</div></a>
                      <a href="#"><div class="city2">연천</div></a>
                    </div>
                  </div>
                </td>

                <!-- 서울 -->
                <td>서울</td>

                <!-- 인천 -->
                <td>인천</td>

                <!-- 대전 -->
                <td>대전</td>

                <!-- 충청남도 -->
                <td>
                  <div class="dropdown">
                    <button id="dropbtn3" class="dropbtn">
                      <span id="dropbtn_content3" class="dropbtn_content"><p>충청남도</p></span>
                      <span class="dropbtn_click" style="font-family: Material Icons; font-size : 20px; color : #707070; float:right;"
                        onclick="dropdown3()">arrow_drop_down</span>
                    </button>
                    <div id="dropdown-content3" class="dropdown-content">
                      <a href="#"><div class="city2">천안</div></a>
                      <a href="#"><div class="city2">공주</div></a>
                      <a href="#"><div class="city2">보령</div></a>
                      <a href="#"><div class="city2">아산</div></a>
                      <a href="#"><div class="city2">서산</div></a>
                      <a href="#"><div class="city2">논산</div></a>
                      <a href="#"><div class="city2">계룡</div></a>
                      <a href="#"><div class="city2">당진</div></a>
                      <a href="#"><div class="city2">금산</div></a>
                      <a href="#"><div class="city2">부여</div></a>
                      <a href="#"><div class="city2">서천</div></a>
                      <a href="#"><div class="city2">청양</div></a>
                      <a href="#"><div class="city2">홍성</div></a>
                      <a href="#"><div class="city2">예산</div></a>
                      <a href="#"><div class="city2">태안</div></a>
                    </div>
                  </div>
                </td>

                <!-- 충청북도 -->
                <td>
                  <div class="dropdown">
                    <button id="dropbtn4" class="dropbtn">
                      <span id="dropbtn_content4" class="dropbtn_content"><p>충청북도</p></span>
                      <span class="dropbtn_click" style="font-family: Material Icons; font-size : 20px; color : #707070; float:right;"
                        onclick="dropdown4()">arrow_drop_down</span>
                    </button>
                    <div id="dropdown-content4" class="dropdown-content">
                      <a href="#"><div class="city2">청주</div></a>
                      <a href="#"><div class="city2">충주</div></a>
                      <a href="#"><div class="city2">제천</div></a>
                      <a href="#"><div class="city2">보은</div></a>
                      <a href="#"><div class="city2">옥천</div></a>
                      <a href="#"><div class="city2">영동</div></a>
                      <a href="#"><div class="city2">증평</div></a>
                      <a href="#"><div class="city2">진천</div></a>
                      <a href="#"><div class="city2">괴산</div></a>
                      <a href="#"><div class="city2">음성</div></a>
                      <a href="#"><div class="city2">단양</div></a>
                    </div>
                  </div>
                </td>

                <!-- 제주 -->
                <td>제주</td>
              </tr>

              <!-- 마지막 행 -->
              <tr>
                <!-- 전라북도 -->
                <td>
                  <div class="dropdown">
                    <button id="dropbtn5" class="dropbtn">
                      <span id="dropbtn_content5" class="dropbtn_content"><p>전라남도</p></span>
                      <span class="dropbtn_click" style="font-family: Material Icons; font-size : 20px; color : #707070; float:right;"
                        onclick="dropdown5()">arrow_drop_down</span>
                    </button>
                    <div id="dropdown-content5" class="dropdown-content">
                      <a href="#"><div class="city2">전주</div></a>
                      <a href="#"><div class="city2">익산</div></a>
                      <a href="#"><div class="city2">군산</div></a>
                      <a href="#"><div class="city2">정읍</div></a>
                      <a href="#"><div class="city2">남원</div></a>
                      <a href="#"><div class="city2">김제</div></a>
                      <a href="#"><div class="city2">무주</div></a>
                      <a href="#"><div class="city2">완주</div></a>
                      <a href="#"><div class="city2">부안</div></a>
                      <a href="#"><div class="city2">고창</div></a>
                      <a href="#"><div class="city2">임실</div></a>
                      <a href="#"><div class="city2">순창</div></a>
                      <a href="#"><div class="city2">진안</div></a>
                      <a href="#"><div class="city2">장수</div></a>
                    </div>
                  </div>
                </td>

                <!-- 전라남도 -->
                <td>
                  <div class="dropdown">
                    <button id="dropbtn6" class="dropbtn">
                      <span id="dropbtn_content6" class="dropbtn_content"><p>전라북도</p></span>
                      <span class="dropbtn_click" style="font-family: Material Icons; font-size : 20px; color : #707070; float:right;"
                        onclick="dropdown6()">arrow_drop_down</span>
                    </button>
                    <div id="dropdown-content6" class="dropdown-content">
                      <a href="#"><div class="city2">목포</div></a>
                      <a href="#"><div class="city2">여수</div></a>
                      <a href="#"><div class="city2">순천</div></a>
                      <a href="#"><div class="city2">나주</div></a>
                      <a href="#"><div class="city2">광양</div></a>
                      <a href="#"><div class="city2">담양</div></a>
                      <a href="#"><div class="city2">곡성</div></a>
                      <a href="#"><div class="city2">구례</div></a>
                      <a href="#"><div class="city2">고흥</div></a>
                      <a href="#"><div class="city2">보성</div></a>
                      <a href="#"><div class="city2">화순</div></a>
                      <a href="#"><div class="city2">장흥</div></a>
                      <a href="#"><div class="city2">강진</div></a>
                      <a href="#"><div class="city2">해남</div></a>
                      <a href="#"><div class="city2">영암</div></a>
                      <a href="#"><div class="city2">무안</div></a>
                      <a href="#"><div class="city2">함평</div></a>
                      <a href="#"><div class="city2">영광</div></a>
                      <a href="#"><div class="city2">장성</div></a>
                      <a href="#"><div class="city2">완도</div></a>
                      <a href="#"><div class="city2">진도</div></a>
                      <a href="#"><div class="city2">신안</div></a>
                    </div>
                  </div>
                </td>

                <!-- 광주 -->
                <td>광주</td>

                <!-- 울산 -->
                <td>울산</td>

                <!-- 경상남도 -->
                <td>
                  <div class="dropdown">
                    <button id="dropbtn7" class="dropbtn">
                      <span id="dropbtn_content7" class="dropbtn_content"><p>경상남도</p></span>
                      <span class="dropbtn_click" style="font-family: Material Icons; font-size : 20px; color : #707070; float:right;"
                        onclick="dropdown7()">arrow_drop_down</span>
                    </button>
                    <div id="dropdown-content7" class="dropdown-content">
                      <a href="#"><div class="city2">창원</div></a>
                      <a href="#"><div class="city2">김해</div></a>
                      <a href="#"><div class="city2">양산</div></a>
                      <a href="#"><div class="city2">진주</div></a>
                      <a href="#"><div class="city2">거제</div></a>
                      <a href="#"><div class="city2">통영</div></a>
                      <a href="#"><div class="city2">사천</div></a>
                      <a href="#"><div class="city2">밀양</div></a>
                      <a href="#"><div class="city2">함안</div></a>
                      <a href="#"><div class="city2">거창</div></a>
                      <a href="#"><div class="city2">창녕</div></a>
                      <a href="#"><div class="city2">고산</div></a>
                      <a href="#"><div class="city2">창년</div></a>
                      <a href="#"><div class="city2">하동</div></a>
                      <a href="#"><div class="city2">합천</div></a>
                      <a href="#"><div class="city2">남해</div></a>
                      <a href="#"><div class="city2">함양</div></a>
                      <a href="#"><div class="city2">산청</div></a>
                      <a href="#"><div class="city2">의령</div></a>
                    </div>
                  </div>
                </td>

                <!-- 경상북도 -->
                <td>
                  <div class="dropdown">
                    <button id="dropbtn8" class="dropbtn">
                      <span id="dropbtn_content8" class="dropbtn_content"><p>경상북도</p></span>
                      <span class="dropbtn_click" style="font-family: Material Icons; font-size : 20px; color : #707070; float:right;"
                        onclick="dropdown8()">arrow_drop_down</span>
                    </button>
                    <div id="dropdown-content8" class="dropdown-content">
                      <a href="#"><div class="city2">포항</div></a>
                      <a href="#"><div class="city2">경주</div></a>
                      <a href="#"><div class="city2">김천</div></a>
                      <a href="#"><div class="city2">안동</div></a>
                      <a href="#"><div class="city2">구미</div></a>
                      <a href="#"><div class="city2">영주</div></a>
                      <a href="#"><div class="city2">영천</div></a>
                      <a href="#"><div class="city2">상주</div></a>
                      <a href="#"><div class="city2">문경</div></a>
                      <a href="#"><div class="city2">경신</div></a>
                      <a href="#"><div class="city2">의성</div></a>
                      <a href="#"><div class="city2">청송</div></a>
                      <a href="#"><div class="city2">영양</div></a>
                      <a href="#"><div class="city2">영덕</div></a>
                      <a href="#"><div class="city2">청도</div></a>
                      <a href="#"><div class="city2">고령</div></a>
                      <a href="#"><div class="city2">성주</div></a>
                      <a href="#"><div class="city2">칠곡</div></a>
                      <a href="#"><div class="city2">예천</div></a>
                      <a href="#"><div class="city2">봉화</div></a>
                      <a href="#"><div class="city2">울진</div></a>
                      <a href="#"><div class="city2">울릉</div></a>
                    </div>
                  </div>
                </td>

                <!-- 부산 -->
                <td>부산</td>

                <!-- 대구 -->
                <td>대구</td>
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
            <img src="images/gangneung.png" alt="강릉">
            <p>강릉<br>상세보기</p>
          </div>

          <div class="image_datail">
            <img src="images/seoul_1.png" alt="서울">
            <p><a href="http://localhost:8080/desktop/travel/intravel.jsp">서울<br>상세보기</a></p>
          </div>

          <div class="image_datail">
            <img src="images/jeju.png" alt="제주">
            <p>제주<br>상세보기</p>
          </div>

          <div class="image_datail">
            <img src="images/busan.png" alt="부산">
            <p>부산<br>상세보기</p>
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
                  <div class="image1"><span>CLICK<br>AND<br>DETAIL</span></div>
                </li>
                <li class="slide_image">
                  <a href="#"><img id="image2" src="images/woman-flower.jpg" alt="사진찍는여성"></a>
                  <div class="image2"><span>CLICK<br>AND<br>DETAIL</span></div>
                </li>
                <li class="slide_image">
                  <a href="#"><img id="image3" src="images/lotte-tower.jpg" alt="롯데타워"></a>
                  <div class="image3"><span>CLICK<br>AND<br>DETAIL</span></div>
                </li>
                <li class="slide_image">
                  <a href="#"><img id="image4" src="images/Daegwallyeong.jpg" alt="대관령"></a>
                  <div class="image4"><span>CLICK<br>AND<br>DETAIL</span></div>
                </li>
                <li class="slide_image">
                  <a href="#"><img id="image5" src="images/gyeongbokgung-palace.jpg" alt="경복궁"></a>
                  <div class="image5"><span>CLICK<br>AND<br>DETAIL</span></div>
                </li>
                <li class="slide_image">
                  <a href="#"><img id="image6" src="images/damyang-metasequoia.jpg" alt="담양의 메타세콰이어길"></a>
                  <div class="image6"><span>CLICK<br>AND<br>DETAIL</span></div>
                </li>
                <li class="slide_image">
                  <a href="#"><img id="image7" src="images/busan-train.jpg" alt="부산레일기차"></a>
                  <div class="image7"><span>CLICK<br>AND<br>DETAIL</span></div>
                </li>
                <li class="slide_image">
                  <a href="#"><img id="image8" src="images/choenjiyeon-falls.jpg" alt="천지연폭포"></a>
                  <div class="image8"><span>CLICK<br>AND<br>DETAIL</span></div>
                </li>
                <li class="slide_image">
                  <a href="#"><img id="image9" src="images/incheon-bridge.jpg" alt="인천대교"></a>
                  <div class="image9"><span>CLICK<br>AND<br>DETAIL</span></div>
                </li>
                <li class="slide_image">
                  <a href="#"><img id="image10" src="images/gyeongju.jpg" alt="경주"></a>
                  <div class="image10"><span>CLICK<br>AND<br>DETAIL</span></div>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div> 

      <!-- 다가오는 행사 및 전시회 -->
      <div id="comingup">
        <div id="calendar">
         
        </div>
      </div>
  
    </section>
    </div>
   
   	<script src="js/koreamain.js"></script>
   	<jsp:include page="../../footer.jsp" />
</body>
</html>