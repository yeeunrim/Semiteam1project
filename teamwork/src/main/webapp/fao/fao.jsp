<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자주하는 질문</title>
<link rel="stylesheet" href="../resources/css/style.css">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="https://kit.fontawesome.com/69798321c6.js"></script>
<script src="../resources/js/main.js"></script>
</head>
<body>
	<jsp:include page="../header.jsp"/>
	<section class="question">
        <div class="question-title">
           <div class="board">
               <h1>자주하는 질문</h1>
           </div>
        </div>
        <div class="fao-travel">
            <h3>여행</h3>
            <div class="fao-section1">
                <div class="fao-menu1">
                    <input id="check-btn1" type="checkbox" />
                    <label for="check-btn1">해외여행 중 여권 분실 시 대처</label>
                    <ul class="menubars">
                        <li>여권 분실 시 순서로는<br>   1. 여권 분실 신고<br>
                        2. 현지 관광 경찰서 방문 - 분실 확인증 발급<br>
                        3. 현지 한국 대사관 방문으로 이뤄지며<br>
                        발급을 위해 신분증, 여권용 사진 2매, <br>
                        여권 발급시 수수료등이 필요합니다.</li>
                    </ul>
                </div>
                <div class="fao-menu2">
                    <input id="check-btn2" type="checkbox" />
                    <label for="check-btn2">해외여행 주의사항</label>
                    <ul class="menubars">
                        <li>각 나라별 비자, 입국심사 등을 확인해 즐거운 여행이 되시길 기원합니다.</li>
                    </ul>
                </div>
                <div class="fao-menu3">
                    <input id="check-btn3" type="checkbox" />
                    <label for="check-btn3">국내여행 주의사항</label>
                    <ul class="menubars">
                        <li>여행 중에 비상 상황에 대비하여 긴급 연락처와 응급처치를 위한 기본적인 의료용품을 <br>
                        	지참하시고, 여행 보험 가입 여부를 확인하며, 필요하다면 가입하세요.</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="fao-user">
            <h3>회원</h3>
            <div class="fao-section2">
                <div class="fao-menu4">
                    <input id="check-btn4" type="checkbox" />
                    <label for="check-btn4">회원 탈퇴를 하고 싶습니다.</label>
                    <ul class="menubars">
                        <li>[마이페이지>회원정보 수정>회원탈퇴] <br>메뉴에서 탈퇴를 선택하시고 
                            확인 버튼을 클릭하시면 탈퇴가 가능합니다.<br>
                            정보통신망법(정보통신망 이용촉진 및 정보보호 등에 관한 법률 제 29조)에<br> 
                            따라서, 수집목적이 완료된 회원의 정보는 파기하도록 되어 있습니다.</li>
                    </ul>
                </div>
                <div class="fao-menu5">
                    <input id="check-btn5" type="checkbox" />
                    <label for="check-btn5">내가 쓴 글을 수정,삭제하고싶어요.</label>
                    <ul class="menubars">
                        <li>로그인 후, [마이페이지] ->내가 쓴 글을 확인할 수 있으며, <br>
                            클릭하여 해당 글이 있는 페이지로 이동하시면 글 내용 하단에 <br>
                            삭제/수정 기능이 있습니다.</li>
                    </ul>
                </div>
                <div class="fao-menu6">
                    <input id="check-btn6" type="checkbox" />
                    <label for="check-btn6">아이디/비밀번호가 기억나지 않아요.</label>
                    <ul class="menubars">
                        <li>여정담 아이디 및 비밀번호 찾기는 로그인 페이지에서 <br>
                            [아이디/비밀번호 찾기]를 통해 가능합니다.<br>
                            [아이디/비밀번호 찾기] 통해 아이디 및 비밀번호 찾기를 진행해 주시기 바랍니다.</li>
                    </ul>
                </div>
            </div> 
        </div>
        <div class="fao-other">
           <h3>기타 문의사항</h3>
           <div class="fao-section3">
            <div class="fao-menu7">
                <input id="check-btn7" type="checkbox" />
                <label for="check-btn7">여정담은 언제 만들어졌나요?</label>
                <ul class="menubars">
                    <li>2023년 12월 15일 탄생했습니다.</li>
                </ul>
            </div>
            <div class="fao-menu8">
                <input id="check-btn8" type="checkbox" />
                <label for="check-btn8">여정담의 목표가 무엇인가요?</label>
                <ul class="menubars">
                    <li> 저희 여정담의 목표는<br>
                        전 세계 여행 정보 제공 및 공유 사이트입니다.</li>
                </ul>
            </div>
            <div class="fao-menu9">
                <input id="check-btn9" type="checkbox" />
                <label for="check-btn9">여정담은 누가 만든건가요?</label>
                <ul class="menubars">
                    <li>팀원 : 임예은(PL), 박채희, 서지훈, 이가은, 이나경, 이상현입니다.</li>
                </ul>
            </div>
        </div> 
        </div> 
   </section>
    <jsp:include page="../footer.jsp"/>
</body>
</html>