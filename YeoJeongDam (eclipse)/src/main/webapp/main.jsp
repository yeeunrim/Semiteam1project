<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>여정담</title>
	<link rel="stylesheet" href="resources/css/main.css">
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
	<script src="https://kit.fontawesome.com/630c352365.js" crossorigin="anonymous"></script>
	<script src="resources/js/main.js"></script>
</head>
<body>
	<jsp:include page="header.jsp" />
	
	<div id ="container">
		<section id="main">
			<div id="main_img">
				<img src="resources/images/train.png" alt="배경">
				
				<div id="dots">
					<div class="dot_active"></div>
					<div class="dot"></div>
					<div class="dot"></div>
				</div>
			</div>
		
		</section>
		
		<jsp:include page="footer.jsp" />
	</div> 
</body>
</html>