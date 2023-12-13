/*======================================================*/
/* 채 */
/*======================================================*/

$(document).ready(function(){
    $(".my_container .select a").click(function(){
      $(this).toggleClass("selected");
    });
  });
// 모달 창 열기
function openModal() {
    document.getElementById('myModal').style.display = 'block';
  }
  
  // 모달 창 닫기
  function closeModal() {
    document.getElementById('myModal').style.display = 'none';
  }
  
  // 프로필 저장 (수정) 기능 - 원하는 동작으로 변경하세요
  function saveProfile() {
    // 여기에 프로필 저장 로직을 추가하세요
    alert('프로필이 저장되었습니다.'); // 예시로 경고창을 띄우는 것입니다.
    closeModal(); // 저장 후 모달 창 닫기
  }
  
  
  //계정 설정
  function check(){
 		if(document.fr.pass.value == ""){
 			alert("비밀번호를 입력하세요! ");
 			document.fr.pass.focus();
 			return false;
 		}
 	}