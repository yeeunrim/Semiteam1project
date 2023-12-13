<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>국내여행 상세 페이지</title>
      <script src="../resources/js/trave.js"></script>
      <script src="https://kit.fontawesome.com/aa24b12773.js" crossorigin="anonymous"></script>
      <link rel="stylesheet" href="../resources/css/style.css">
   <script src="../resources/js/main.js"></script>
</head>
<body>
    <!-- ============== header ====================================== -->
    <jsp:include page="../header.jsp"/>
    <!-- ============== body ====================================== -->
    <section>
        <section class="main">
            <div class="area_img">
                <img src="../images/namsantower.jpg" alt="namsantower" id="pic">
            </div>

            <div class="area_text">
                <p class="area_en">Seoul</p>
                <p class="area_ko">서울특별시</p>
            </div>
        </section><!-- main -->
        
        <section class="infoToMap">
            <div class="info">
                <div class="infobox">
                </div>
                <div class="infotext">
                    과거와 현재가 공존하며 하루가 다르게 변화는 서울을 여행하는 일은 매일이 새롭다.<br>
                    도시 한복판에서 600년의 역사를 그대로 안고 있는 아름다운 고궁들과 더불어 대한민국의 트렌드를<br>
                    이끌어나가는 예술과 문화의 크고 작은 동네들을 둘러볼 수 있는 서울은 도시 여행에 최적화된 장소다.
                </div>

                <div class="tipbox">
                    <p><a href="https://www.visitseoul.net/index" target="_blank"> Tip! 관광 안내 홈페이지 
                        <i class="fa-solid fa-angle-right" id="angleright"></i></a>
                    </p>
                </div>
            </div> <!-- info -->
            
            <div class="left_box">
                <div class="T_weather">
                    <p>월간 날씨</p>
                </div>

                <div class="box_weather">
                    <div class="topM">
                        <p>December
                            <i class="fa-solid fa-angle-down" id="angledown"></i>
                        </p>
                    </div>
                    <div class="bottom_weather">
                        <p>평년 기온&nbsp;&nbsp;&nbsp;<span id="a">-1.1</span> ~ <span id="b">0.3</span></p>
                        <p>평년 강수&nbsp; 15.7 ~ 23.3mm</p>
                    </div>
                </div>
            </div><!-- left_weather -->

            <div class="rightbox">
                <div class="T_location">
                    <p>위치</p>
                </div>
                <div class="imgLocation">
                    <img src="../images/seoul.png" alt="seoul location">
                </div>
                
                <i class="fa-solid fa-circle-info" style="color: #7d7d7d;" id="circleinfo"></i>
            </div><!-- rightbox -->
        </section><!-- infoToMap -->
        
        <section class="attraction">
            <h2>서울의 주요 관광지</h2>
            <div class="searchWord">
                <label>
                  <input type="text" placeholder="Search...">
                    <button type="button">
                    <i class="fa-solid fa-magnifying-glass fa-lg" style="color: #606060;" id="glass"></i>
                    </button>
                </label>
              </div>
            <div class="first_attr">
                <div class="attr1T">
                    <p>경복궁
                        <i class="fa-solid fa-xmark" style="color: #404040;" id="xmark1"></i>
                    </p>
                </div>
                <div class="attr1">
                    <img src="../images/Gyeongbokgung.png" alt="Gyeongbokgung palace">
                </div>
            </div><!-- first_attr -->

            <div class="second_attr">
                <div class="attr2T">
                    <p>여의도 한강 공원
                        <i class="fa-solid fa-xmark" style="color: #404040;" id="xmark2"></i>
                    </p>
                </div>
                <div class="attr2">
                    <img src="../images/hankang.png" alt="hankang river">
                </div>
            </div><!-- second_attr -->

            <div class="third_attr">
                <div class="attr3T">
                    <p>롯데월드
                        <i class="fa-solid fa-xmark" style="color: #404040;" id="xmark3"></i>
                    </p>
                </div>
                <div class="attr3">
                    <img src="../images/lotteworld.png" alt="lotteworld">
                </div>
            </div><!-- third_attr -->
        </section><!-- attraction -->

        <section class="todayCuration">
            <h2>오늘의 큐레이션</h2>
            
            <div class="curationBox1"> <!--큰 박스 -->
                <div class="imgBox1">
                    <img src="../images/library.png" alt="recommend library">
                </div>
                <div class="textBox1">
                    <div class="Ctext1">
                        <p>책 읽기 좋은 서울<br>독서 공간 10곳</p>
                    </div>
                </div>
            </div>

            <div class="curationBox2"> 
                <div class="imgBox2">
                    <img src="../images/hanok.png" alt="traditional hanok">
                </div>
                <div class="textBox2">
                    <div class="Ctext2">
                        <p>도시와 한옥이 만났을 때,<br>서울 한옥카페 12곳</p>
                    </div>
                </div>
            </div>

            <div class="curationBox3"> 
                <div class="imgBox3">
                    <img src="../images/toast.png" alt="toast yummy">
                </div>
                <div class="textBox3">
                    <div class="Ctext3">
                        <p>서울 프렌치 토스트 맛집</p>
                    </div>
                </div>
            </div>
            
            <div class="curationBox4"> 
                <div class="imgBox4">
                    <img src="../images/seoulnight.png" alt="night">
                </div>
                <div class="textBox4">
                    <div class="Ctext4">
                        <p>서울이 한눈에 내려다<br>보이는 전망 좋은 곳</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- curation -->
    </section>
    <!-- ============= footer ================================= -->
    <jsp:include page="../footer.jsp"/>
    
   
</body>
</html>