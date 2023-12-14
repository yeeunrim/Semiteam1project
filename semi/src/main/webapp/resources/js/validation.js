/**
 * 회원 가입 폼 유효성 검사
 */
function checkUser(){
	alert("test...");
	//input의 name 속성을 변수에 할당
	let form = document.users;  //폼 이름
	/*let id = form.id.value;     //id - name 속성, id 속성도 허용
	let pw1 = form.pw.value;
	let pw2 = form.pw2.value;
	let btnChk = form.btnChk.value;
	
	//정규 표현식
	//비밀번호
	let regexPw1 = /[0-9]+/;      //숫자
	let regexPw2 = /[a-zA-Z]+/;   //영문자
	let regexPw3 = /[~!@#$%^&*()_+|]+/; //특수문자
	//이름
	let regexName = /^[가-힣]+$/;  //한글만
	
	if(id.length < 4 || id.length > 15){
		alert("아이디는 4~15자까지 입력 가능합니다.");
		id.select();
		return false;
	}else if(pw1.length < 8 || !regexPw1.test(pw1) ||
				!regexPw2.test(pw1) || !regexPw3.test(pw1)){
		alert("비밀번호는 영문자, 숫자, 특수문자 포함 8자 이상 입력 가능");
		pw1.select();
		return false;
	}else if(pw1 != pw2){ //pw1과 pw2 문자열이 일치하지 않으면
		alert("비밀번호를 동일하게 입력해 주세요");
		pw2.select();
		return false;
	}else if(btnChk == 'N'){
		alert("ID 중복 버튼을 눌러주세요");
		return false;
	}else{*/
		form.submit();  //오류가 없으면 폼을 메인 컨트롤러로 전송
	}
/*}*/

/* 아이디 중복 검사 */
/*function checkId(){
	//alert("test...");
	//input의 선택자(id)의 값을 사용
	if(t_id.value == ""){
		alert("아이디를 입력해주세요");
		t_id.focus();
		return false;
	}
	
	$.ajax({
		type: "get",
		dataType: "text",
		url: "/member/checkid", //http://localhost:8080/member/checkid
		data: {id: $("#t_id").val()}, //id 속성이 서버로 전달됨
		success: function(data){
			if(data == "usable"){
				$("#btnChk").attr("value", "Y");  //버튼 value값을 'Y'로 설정
				$("#message").text("사용할 수 있는 ID입니다.");
			}else{ //data == "not_usable"
				$("#message").text("이미 가입된 ID입니다.");
			}
		},
		error: function(){
			alert("에러 발생!!")
		}
	});
}*/




/* 프로필 변경 유효성 검사 */
/*function saveProfile(){
	alert("test...");
	
	let form = document.profile; 
	
	form.submit();
	
};*/
	