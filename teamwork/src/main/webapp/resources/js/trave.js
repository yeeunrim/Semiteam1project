// travel.html과 연결
// bg img사이즈 : width 1440 / height 663
window.onload = function(){
    let picture = ["../resources/images/namsantower.jpg", "../resources/images/gwanghwamun.jpg"];
    let picIdx = 0;

    showSlide();
s
    function showSlide(){
        // image의 경로 : src속성 사용
        document.getElementById("pic").src = picture[picIdx];
        picIdx += 1; // picIdx++; 와 동일 
        if(picIdx == picture.length){
            picIdx = 0;
        }
        setTimeout(showSlide, 2500); //3초에 한번씩 ,,
    }
            

}