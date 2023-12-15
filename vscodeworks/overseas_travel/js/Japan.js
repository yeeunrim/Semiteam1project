// outtravel.html과 연결

// 지역, 나라별 메인 배경이미지 슬라이드
// 기준 배경img사이즈 : width 1440 / height 663 (Figma)
window.onload = function(){
    let picture = ["#", "#"];
    
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

// month선택, 드롭다운
function dropdown() {
    var v = document.querySelector('.dropdown-month');
    var dropbtn = document.querySelector('.dropbtn')
    v.classList.toggle('show');
    dropbtn.style.borderColor = 'rgb(94, 94, 94)';
  }
  function dropdown2() {
    var v = document.querySelector('#dropdown-month2');
    var dropbtn = document.querySelector('#dropbtn2')
    v.classList.toggle('show');
    dropbtn.style.borderColor = 'rgb(94, 94, 94)';
  }
  function dropdown3() {
    var v = document.querySelector('#dropdown-month3');
    var dropbtn = document.querySelector('#dropbtn3')
    v.classList.toggle('show');
    dropbtn.style.borderColor = 'rgb(94, 94, 94)';
  }
  function dropdown4() {
    var v = document.querySelector('#dropdown-month4');
    var dropbtn = document.querySelector('#dropbtn4')
    v.classList.toggle('show');
    dropbtn.style.borderColor = 'rgb(94, 94, 94)';
  }
  function dropdown5() {
    var v = document.querySelector('#dropdown-month5');
    var dropbtn = document.querySelector('#dropbtn5')
    v.classList.toggle('show');
    dropbtn.style.borderColor = 'rgb(94, 94, 94)';
  }
  function dropdown6() {
    var v = document.querySelector('#dropdown-month6');
    var dropbtn = document.querySelector('#dropbtn6')
    v.classList.toggle('show');
    dropbtn.style.borderColor = 'rgb(94, 94, 94)';
  }
  function dropdown7() {
    var v = document.querySelector('#dropdown-month7');
    var dropbtn = document.querySelector('#dropbtn7')
    v.classList.toggle('show');
    dropbtn.style.borderColor = 'rgb(94, 94, 94)';
  }
  function dropdown7() {
    var v = document.querySelector('#dropdown-month8');
    var dropbtn = document.querySelector('#dropbtn8')
    v.classList.toggle('show');
    dropbtn.style.borderColor = 'rgb(94, 94, 94)';
  }
  function dropdown7() {
    var v = document.querySelector('#dropdown-month9');
    var dropbtn = document.querySelector('#dropbtn9')
    v.classList.toggle('show');
    dropbtn.style.borderColor = 'rgb(94, 94, 94)';
  }
  function dropdown7() {
    var v = document.querySelector('#dropdown-month10');
    var dropbtn = document.querySelector('#dropbtn10')
    v.classList.toggle('show');
    dropbtn.style.borderColor = 'rgb(94, 94, 94)';
  }
  function dropdown7() {
    var v = document.querySelector('#dropdown-month11');
    var dropbtn = document.querySelector('#dropbtn11')
    v.classList.toggle('show');
    dropbtn.style.borderColor = 'rgb(94, 94, 94)';
  }
  function dropdown7() {
    var v = document.querySelector('#dropdown-month12');
    var dropbtn = document.querySelector('#dropbtn12')
    v.classList.toggle('show');
    dropbtn.style.borderColor = 'rgb(94, 94, 94)';
  }
