<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Id 중복검사</title>
<script src="../resources/js/jquery-3.7.1.js"></script>
<script type="text/javascript">
	$(function(){
		$("h3").css("color", "red");
	});
	
	function checkId(){
		//alert("test...");
		//input의 선택자(id)의 값을 사용
		if($(t_id.value == "")){
			alert("아이디를 입력해주세요.");
			t_id.focus();
			return false;
		}
		
		$.ajax({
			type: "get",
			dateType: "text",
			url: "/test/checkid",	//http://localhost:8080/test/checkid
			data: {id: $("#t_id").val()},
			success: function(data){
				if(data == "usable"){
					$("#message").text("사용할 수 있는 ID입니다.");
				}else{	//data=="not_usable"
					$("#message").text("이미 가입된 ID입니다.");
				}
				
			},
			error: function(){
				alert("에러 발생!!");
			}
		});
		
	}

</script>
</head>
<body>
	<h3>ID 중복 검사</h3>
	<p><input type="text" id="t_id" name="id">
		<input type="button" value="ID 중복" onclick="checkId()"></p>
	<div id="message"></div>
	
</body>
</html>