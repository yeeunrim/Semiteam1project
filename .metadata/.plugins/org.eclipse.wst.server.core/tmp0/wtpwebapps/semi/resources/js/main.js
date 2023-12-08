/* header의 메뉴 클릭 시, 회색 배경 생성 */
/* 하위 메뉴가 나와있는 경우 회색 배경이 나오도록 구현 */
$(document).ready(function() {
    $('#mainMenu ul li').mouseenter(function() {
        // 메인 메뉴에 마우스가 오버되었을 때
        var subMenu = $(this).children('ul');
        if (subMenu.length > 0) {
            // 하위 메뉴가 있는 경우
            $('#bottomMenu').show(); // 하단 카테고리 박스 표시
            $('#topMenu').css('background-color', 'rgba(238, 238, 238,0.8)'); // 배경색 변경
        }
    });

    $('#mainMenu ul li').mouseleave(function() {
        // 메인 메뉴에서 마우스가 벗어났을 때
        var subMenu = $(this).children('ul');
        if (!subMenu.is(':hover')) {
            // 하위 메뉴에 마우스가 없는 경우
            $('#bottomMenu').hide(); // 하단 카테고리 박스 숨기기
            $('#topMenu').css('background-color', ''); // 배경색 원래대로
        }
    });
});