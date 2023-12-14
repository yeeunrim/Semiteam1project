<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숙소 / 교통</title>
<link rel="stylesheet" href="css/hotel_traffic.css">
<link rel="stylesheet" href="../../resources/css/style.css">
</head>
<body>
	<!-- header -->
	<jsp:include page="../../header.jsp" /> 
	
	<section id="main_container">
		 <!-- body 부분 -->
		 <section>
		 	<div id="hotel">
	        	<!-- <img src="images/jeju-winter.jpg" alt="메인 화면"> -->
        		<div class="searchHotel">
          			<p>숙소</p>
	          		<div class="searchWord">
	           
	          		</div>
        		</div>
		 	</div>
		 	
		 	<hr>
		 	
		 	<div id="traffic">
		 		<div class="searchTraffic">
          			<p>교통</p>
	          		<div class="searchWord">
	           
	          		</div>
        		</div>
		 	</div>
		 </section>
	</section>
	
	<!-- footer 부분 -->
  	<jsp:include page="../../footer.jsp" />
</body>
</html>