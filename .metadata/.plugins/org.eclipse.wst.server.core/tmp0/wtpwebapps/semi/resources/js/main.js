
/************* 가은 *************/

/* ==================================================================================================== */
/*                          header, footer                                                              */
/* ==================================================================================================== */

/* header의 메뉴 클릭 시, bottomMenu(회색배경, 하위카테고리) 나옴 */
$(document).ready(function() {
    // 메인 메뉴 항목에 마우스 오버 이벤트 추가
    $('#mainMenu ul li').mouseenter(function() {
        // 하위 메뉴 및 bottomMenu 보이기
        $(this).find('.test').css('display', 'block');
        $('#bottomMenu').css('display', 'block');

        // 배경색 변경
        $('#mainMenu, #sideMenu, #bottomMenu, #sideMenuIcon').css('background-color', 'rgba(255, 255, 255, 1)');
    }).mouseleave(function() {
        // 마우스가 벗어나면 하위 메뉴 및 bottomMenu 숨기기
        $(this).find('.test').css('display', 'none');
        $('#bottomMenu').css('display', 'none');

        // 배경색을 원래 상태로 복원 (원래 배경색에 맞게 조정 필요)
        $('#mainMenu, #sideMenu, #bottomMenu, #sideMenuIcon').css('background-color', ''); // 기본값 또는 원래 색상으로 변경
    });
});

/* 스크롤 40px기준으로, 상단문구 숨김 및 상단 메뉴 위치 조정  */
let lastScrollTop = 0;
const scrollThreshold = 40; // 스크롤이 이 값 이상으로 변화했을 때 동작을 변경하는 기준점

$(window).on('scroll', function() {
    let currentScroll = $(this).scrollTop();
    let welcomeHeight = $('#welcome').outerHeight();
    let topMenuHeight = $('#welcome').outerHeight()+$('#topMenu').outerHeight();

    if (currentScroll > lastScrollTop && currentScroll > scrollThreshold) { /* 현재스크롤 > 0 && 현재 스크롤 > 40*/
        // 아래로 40px 이상 스크롤
        $('#welcome').css('transform', 'translateY(-' + welcomeHeight + 'px)'); /* 상단 문구 height만큼 올라가면서 올라가는 모션을 주면서 숨겨짐 */
        $('#topMenu').css('top', '0');
        $('#bottomMenu').css('top', $('#topMenu').outerHeight() + 'px'); // topMenu 바로 아래에 bottomMenu 위치
    } else if (currentScroll < lastScrollTop && currentScroll < scrollThreshold) {
        // 위로 40px 이상 스크롤
        $('#welcome').css('transform', '');
        $('#topMenu').css('top', welcomeHeight + 'px');
        $('#bottomMenu').css('top', topMenuHeight + 'px'); // 원래 위치로 되돌리기
    }
    lastScrollTop = currentScroll; // 스크롤 위치 업데이트
});

/* 780px이하 모바일 기준 header 메뉴 */
document.addEventListener("DOMContentLoaded", function() {
    var sideMenuIcon = document.getElementById('sideMenuIcon');
    var mainMenu = document.getElementById('mainMenu');
    var sideMenu = document.getElementById('sideMenu');
    var topMenu = document.getElementById('topMenu'); // topMenu 요소 추가

    function adjustMenuDisplay() {
        if (window.innerWidth > 780) {
            // 781px 이상일 경우
            mainMenu.style.display = 'block'; 
            sideMenu.style.display = 'block';
            sideMenuIcon.style.display = 'none';
            topMenu.style.flexDirection = 'row';  /* row-reverse에서 원상복구 */
        } else {
            // 780px 이하일 경우
            sideMenuIcon.style.display = 'flex';
            sideMenu.style.display = 'none';
        }
    }
    sideMenuIcon.onclick = function() {
        if (mainMenu.style.display === 'none') {
            mainMenu.style.display = 'block';
            sideMenu.style.display = 'none';
            topMenu.style.flexDirection = 'row';
        } else {
            mainMenu.style.display = 'none';
            sideMenu.style.display = 'block';
            topMenu.style.flexDirection = 'row-reverse'; /* 'sideMenu -> 메뉴아이콘' 순서로 정렬되도록 반대정렬시켜줌 (원래 순서는 '메뉴아이콘 -> sideMenu') */
        }
    };

    window.addEventListener('resize', adjustMenuDisplay); // 창 크기 변경 감지

    adjustMenuDisplay(); // 초기 로드 시 메뉴 조정
});
    

/* ==================================================================================================== */
/*                          main                                                                        */
/* ==================================================================================================== */

/* 메인이미지 슬라이드 */
$(document).ready(function() {
    var images = ['resources/images/main_image01.png', 'resources/images/main_image02.png', 'resources/images/main_image03.png'];
    var currentIndex = 0;
    var imageInterval;

     function changeImage(index) {
		 // Dot 업데이트
    	updateDots(index);
		 
        var $currentImg = $('#main_img .img_current');
        var $nextImg = $('#main_img .img_next');

        // 다음 이미지 설정 및 투명도 초기화
        $nextImg.attr('src', images[index]).css('opacity', 0.02).show();

        // 현재 이미지 투명도 감소 및 다음 이미지 투명도 증가
        $currentImg.animate({ opacity: 0.2 }, 500);
        $nextImg.animate({ opacity: 1 }, 500, function() {
            // 현재 이미지 소스 변경 및 투명도 재설정
            $currentImg.attr('src', images[index]).css('opacity', 1);
            
            // 인덱스 업데이트
            currentIndex = index;
        });
    }

    function updateDots(index) {
        // 모든 dots에서 dot_active 클래스 제거
        $('#dots div').removeClass('dot_active').addClass('dot');

        // 현재 인덱스의 dot에 dot_active 클래스 추가
        $('#dots div').eq(index).removeClass('dot').addClass('dot_active');
    }

    // Dot 클릭 이벤트 핸들러
    $('#dots div').click(function() {
        var index = $(this).index(); // 클릭된 dot의 인덱스
        currentIndex = index;
        changeImage(index);
        restartInterval();
    });

    // 이미지 자동 변경 함수
    function startInterval() {
        imageInterval = setInterval(function() {
            currentIndex = (currentIndex + 1) % images.length;
            changeImage(currentIndex);
        }, 5000); // 5초 간격
    }

    // 인터벌 재시작 함수
    function restartInterval() {
        clearInterval(imageInterval);
        startInterval();
    }

    // 이미지 자동 변경 시작
    startInterval();
});

/* 여행지사진 슬라이드 : 마우스로 임의로 슬라이드 */
/*$(document).ready(function() {
    var isDown = false; // 마우스 버튼의 상태를 추적
    var startX;
    var scrollLeft;

    var slider = $('#main_pictures'); // 이미지의 컨테이너

    slider.mousedown(function(e) {
        isDown = true;
        slider.addClass('active');
        startX = e.pageX - slider.offset().left;
        scrollLeft = slider.scrollLeft();
    });

    $(document).mouseup(function() {
        isDown = false;
        slider.removeClass('active');
    });

    $(document).mouseleave(function() {
        isDown = false;
        slider.removeClass('active');
    });

    slider.mousemove(function(e) {
        if(!isDown) return;
        e.preventDefault();
        var x = e.pageX - slider.offset().left;
        var walk = (x - startX) * 1.2; // 스크롤 속도 인수 (* 3)
        slider.scrollLeft(scrollLeft - walk);
    });
});
*/

/* 여행지사진 슬라이드 : 사진 1장씩 슬라이드 */
$(document).ready(function() {
    var $mainPictures = $('#main_pictures');
    var $divs = $mainPictures.children('div');
    var divWidth = $divs.first().outerWidth(true);
    var totalWidth = divWidth * $divs.length;

    // 무한 루프를 위해 div 요소들을 복제하고 main_pictures에 추가
    $divs.clone().appendTo($mainPictures);

    // div들을 슬라이드하는 함수
    function slideDivs() {
        $mainPictures.animate({
            scrollLeft: '+=' + divWidth
        }, 1000, function() {
            // 첫 번째 세트의 div들의 끝에 도달했는지 확인
            if ($mainPictures.scrollLeft() >= totalWidth) {
                $mainPictures.scrollLeft(0);
            }
        });
    }

    // 슬라이드를 위한 인터벌 설정
    var slideInterval = setInterval(slideDivs, 3000);

    // 선택적: 마우스오버 시 슬라이드 일시정지
   /* $mainPictures.on('mouseover', function() {
        clearInterval(slideInterval);
    }).on('mouseout', function() {
        slideInterval = setInterval(slideDivs, 3000);
    });*/
});

/* 여행지사진 슬라이드 : 연속적으로 슬라이드 */
/*$(document).ready(function() {
    var $mainPictures = $('#main_pictures');
    var $divs = $mainPictures.children('div');
    var divWidth = $divs.width();
    var totalWidth = divWidth * $divs.length;

    // Div들을 복제하고 추가
    $divs.clone().appendTo($mainPictures);

    // 연속 슬라이드 함수
    function slideDivs() {
        var currentScroll = $mainPictures.scrollLeft();
        $mainPictures.animate({scrollLeft: currentScroll + totalWidth}, totalWidth * 10, 'linear', function() {
            $mainPictures.scrollLeft(0); totalWidth * 15 : 애니메이션의 총 지속 시간
            slideDivs();
        });
    }

    // 슬라이드 시작
    slideDivs();

    // 호버 시 일시정지
    $mainPictures.hover(
        function() { $mainPictures.stop(); },
        function() { slideDivs(); }
    );
});*/



/* ==================================================================================================== */
/*                          joinform01                                                                    */
/* ==================================================================================================== */

/* 체크박스 모두 체크*/
$(document).ready(function () {
    $('#all_agree').change(function () {
        $('#joinform01 input[type="checkbox"]').prop('checked', this.checked);
    });
});

/* ==================================================================================================== */
/*                          joinform02                                                                  */
/* ==================================================================================================== */

// 도메인 직접 입력 or domain option 선택 및 전체이메일 input #full-email에 값 넣기
$(document).ready(function() {
    // 도메인 목록 드롭다운의 변경사항을 감지하는 리스너 설정
    $('#domain-list').change(function() {
        var selectedValue = $(this).val();
        
        // '직접 입력' 옵션이 선택되었는지 확인
        if (selectedValue === 'type') {
            // 직접 입력을 위해 텍스트 입력 필드를 활성화
            $('#domain-txt').prop('readonly', false).val('').focus();
        } else {
            // 텍스트 입력 필드를 읽기 전용으로 설정하고 선택된 도메인으로 값 설정
            $('#domain-txt').prop('readonly', true).val(selectedValue);
        }
    });

    // 폼 제출 이벤트를 처리하는 부분
    $('form').on('submit', function(e) {
        // 이메일 로컬 부분과 도메인을 결합
        var emailLocalPart = $('#email').val();
        var emailDomainPart = $('#domain-txt').val();
        var fullEmail = emailLocalPart + '@' + emailDomainPart;
        
        // 전체 이메일 주소를 hidden input에 설정
        $('#full-email').val(fullEmail);
    });
});


// '출생 연도' 셀렉트 박스 option 목록 동적 생성
$(document).ready(function() {
    // 출생 연도 설정 (1940년부터 2023년까지)
    for (var year = 1940; year <= 2023; year++) {
        $('#birth-year').append($('<option>', {
            value: year,
            text: year
        }));
    }
    // 월 설정 (1월부터 12월까지)
    for (var month = 1; month <= 12; month++) {
        $('#birth-month').append($('<option>', {
            value: month,
            text: month
        }));
    }
    // 일 설정 (1일부터 31일까지)
    for (var day = 1; day <= 31; day++) {
        $('#birth-day').append($('<option>', {
            value: day,
            text: day
        }));
    }
});


/************* 채희 *************/

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
    let form = document.profile; 
    alert('프로필이 저장되었습니다.'); // 예시로 경고창을 띄우는 것입니다.
    form.submit();
    closeModal(); // 저장 후 모달 창 닫기
  }
  
  /**
 * 유효성 검사
 */
function checkMember(){
	//alert("test...");
	//input의 name 속성을 변수에 할당
	let form = document.setting;  //폼 이름
	let pw1 = form.passwd.value;
	let pw2 = form.passwd2.value;
	let tel = form.tel.value;
	
	//정규 표현식
	//비밀번호
	let regexPw1 = /[0-9]+/;      //숫자
	let regexPw2 = /[a-zA-Z]+/;   //영문자
	let regexPw3 = /[~!@#$%^&*()_+|]+/; //특수문자
	let regexPw4 = /^[0-9]{2,3}[0-9]{3,4}[0-9]{4}/ //전화번호
	
	if(pw1.length < 8 || !regexPw1.test(pw1) ||
				!regexPw2.test(pw1) || !regexPw3.test(pw1)){
		alert("비밀번호는 영문자, 숫자, 특수문자 포함 8자 이상 입력 가능");
		pw1.select();
		return false;
	}else if(pw1 != pw2){ //pw1과 pw2 문자열이 일치하지 않으면
		alert("비밀번호를 동일하게 입력");
		pw2.select();
		return false;
	}else if(!regexPw4.test(tel)){
		alert("전화번호는 '-'를 제외한 9자리~11자리로 입력");
		tel.select();
		return false;
	}else{
		form.submit();  //오류가 없으면 폼을 메인 컨트롤러로 전송
		alert("수정되었습니다.");
	}
}