<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숙소 / 교통</title>
<link rel="stylesheet" href="css/hotel_traffic.css">
<link rel="stylesheet" href="../../resources/css/style.css">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="../../resources/js/main.js"></script>
<script src="https://kit.fontawesome.com/aa24b12773.js" crossorigin="anonymous"></script>
</head>
<body>
	<!-- header -->
	<jsp:include page="../../header.jsp" />
	 <!-- body 부분 -->
  <section>
    <div id="hotel">
         <!-- <img src="images/jeju-winter.jpg" alt="메인 화면"> -->
         <div class="searchHotel">
             <p>숙소</p>
             <div class="clickbrand">
                <a href="https://www.agoda.com/" target="_blank" title="아고다">
                  <img src="images/hotel/agoda.png" alt="아고다">
                </a>
                <a href="https://www.airbnb.co.kr" target="_blank" title="에어비앤비">
                  <img src="images/hotel/airbnb.png" alt="에어비앤비">
                </a>
                <a href="https://www.yanolja.com/" target="_blank" title="야놀자">
                  <img src="images/hotel/yanolja.png" alt="야놀자">
                </a>
                <a href="https://www.yeogi.com" target="_blank" title="여기어때">
                  <img src="images/hotel/yeogieodae.jpeg" alt="여기어때">
                </a>
                <a href="https://kr.hotels.com/" target="_blank" title="호텔스닷컴">
                  <img src="images/hotel/hotelscom.png" alt="호텔스닷컴">
                </a>
             </div>
             <!-- <div class="clickbrand_add">
              <ul>
                <li><a href="https://www.expedia.co.kr/" target="_blank" title="익스피디아">Expedia</a></li>
                <li><a href="https://www.dailyhotel.com" target="_blank" title="데일리호텔">데일리호텔</a></li>
                <li><a href="https://www.trivago.co.kr/" target="_blank" title="트리바고">trivago</a></li>
                <li><a href="https://kr.trip.com/" target="_blank" title="트립닷컴">트립닷컴</a></li>
                <li><a href="https://www.hotelscombined.co.kr/" target="_blank" title="호텔스컴바인">호텔스컴바인</a></li>
                <li><a href="https://www.booking.com/" target="_blank" title="부킹닷컴">부킹닷컴</a></li>
              </ul>
             </div> -->
             <div class="btn">
              <button>
                <i class="fa-solid fa-chevron-down" style="color: #444444;"></i>
              </button>
             </div>
         </div>
    </div>
    
    <hr>
    
    <div id="traffic">
      <div class="searchTraffic">
             <p>교통</p>
             <div class="clickbrand">
              <a href="https://www.kobus.co.kr/mrs/rotinf.do" target="_blank" title="고속버스">
                <img src="images/traffic/fast-bus.jpeg" alt="고속버스">
              </a>
              <a href="https://www.bustago.or.kr/newweb/kr/index.do" target="_blank" title="시외버스">
                <img src="images/traffic/city-bus.png" alt="시외버스">
              </a>
              <a href="https://www.socar.kr" target="_blank" title="쏘카">
                <img src="images/traffic/socar.png" alt="쏘카">
              </a>
              <a href="https://www.letskorail.com/" target="_blank" title="카카오택시">
                <img src="images/traffic/kakaotaxi.png" alt="카카오택시">
              </a>
              <a href="https://www.letskorail.com/" target="_blank" title="코레일">
                <img src="images/traffic/korail.png" alt="코레일">
              </a>
             </div>
             <div class="btn">
              <button>
                <i class="fa-solid fa-chevron-down" style="color: #444444;"></i>
              </button>
             </div>
         </div>
    </div>
  </section>
  
  <!-- footer 부분 -->
  <jsp:include page="../../footer.jsp" />
</body>
</html>