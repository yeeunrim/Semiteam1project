// outtravel.html과 연결

// 지역, 나라별 메인 배경이미지 슬라이드
// 기준 배경img사이즈 : width 1440 / height 663 (Figma)
window.onload = function(){
    let picture = ["../images/swiss1.png", "../images/swiss2.png"];
    let picIdx = 0;

    showSlide();

    function showSlide(){
        // image의 경로 : src속성 사용
        document.getElementById("area_pic").src = picture[picIdx];
        picIdx += 1; // picIdx++; 와 동일 
        if(picIdx == picture.length){
            picIdx = 0;
        }
        setTimeout(showSlide, 2500); //3초에 한번씩 ,,
    }

}