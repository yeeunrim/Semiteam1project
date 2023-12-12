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
    }).mouseleave(function() {
        // 마우스가 벗어나면 하위 메뉴 및 bottomMenu 숨기기
        $(this).find('.test').css('display', 'none');
        $('#bottomMenu').css('display', 'none');
    });
});

/* 스크롤 40px기준으로, 상단문구 숨김 및 상단 메뉴 위치 조정  */
let lastScrollTop = 0;
const scrollThreshold = 40; // 스크롤이 이 값 이상으로 변화했을 때 동작을 변경하는 기준점

$(window).on('scroll', function() {
    let currentScroll = $(this).scrollTop();
    let welcomeHeight = $('#welcome').outerHeight();

    if (currentScroll > lastScrollTop && currentScroll > scrollThreshold) {
        // 아래로 40px 이상 스크롤
        $('#welcome').css('transform', 'translateY(-' + welcomeHeight + 'px)');
        $('#topMenu').css('top', '0');
        $('#bottomMenu').css('top', '0'); // topMenu 바로 아래에 bottomMenu 위치
    } else if (currentScroll < lastScrollTop && currentScroll < scrollThreshold) {
        // 위로 40px 이상 스크롤
        $('#welcome').css('transform', '');
        $('#topMenu').css('top', welcomeHeight + 'px');
        $('#bottomMenu').css('top', welcomeHeight + 'px'); // 원래 위치로 되돌리기
    }
    lastScrollTop = currentScroll; // 스크롤 위치 업데이트
});

/* ==================================================================================================== */
/*                          joinform                                                                    */
/* ==================================================================================================== */
/* 체크박스 모두 체크*/
$(document).ready(function () {
    $('#all_agree').change(function () {
        $('#joinform01 input[type="checkbox"]').prop('checked', this.checked);
    });
});

/* ==================================================================================================== */
/*                          main                                                                        */
/* ==================================================================================================== */
/* 사진 슬라이드 */
$(document).ready(function() {
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