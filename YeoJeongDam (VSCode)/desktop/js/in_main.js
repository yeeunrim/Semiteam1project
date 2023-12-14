// 지역 선택 - 드롭다운
function dropdown() {
  var v = document.querySelector('.dropdown-content');
  var dropbtn = document.querySelector('.dropbtn')
  v.classList.toggle('show');
  dropbtn.style.borderColor = 'rgb(94, 94, 94)';
}

function dropdown2() {
  var v = document.querySelector('#dropdown-content2');
  var dropbtn = document.querySelector('#dropbtn2')
  v.classList.toggle('show');
  dropbtn.style.borderColor = 'rgb(94, 94, 94)';
}

function dropdown3() {
  var v = document.querySelector('#dropdown-content3');
  var dropbtn = document.querySelector('#dropbtn3')
  v.classList.toggle('show');
  dropbtn.style.borderColor = 'rgb(94, 94, 94)';
}

function dropdown4() {
  var v = document.querySelector('#dropdown-content4');
  var dropbtn = document.querySelector('#dropbtn4')
  v.classList.toggle('show');
  dropbtn.style.borderColor = 'rgb(94, 94, 94)';
}

function dropdown5() {
  var v = document.querySelector('#dropdown-content5');
  var dropbtn = document.querySelector('#dropbtn5')
  v.classList.toggle('show');
  dropbtn.style.borderColor = 'rgb(94, 94, 94)';
}

function dropdown6() {
  var v = document.querySelector('#dropdown-content6');
  var dropbtn = document.querySelector('#dropbtn6')
  v.classList.toggle('show');
  dropbtn.style.borderColor = 'rgb(94, 94, 94)';
}

function dropdown7() {
  var v = document.querySelector('#dropdown-content7');
  var dropbtn = document.querySelector('#dropbtn7')
  v.classList.toggle('show');
  dropbtn.style.borderColor = 'rgb(94, 94, 94)';
}

function dropdown8() {
  var v = document.querySelector('#dropdown-content8');
  var dropbtn = document.querySelector('#dropbtn8')
  v.classList.toggle('show');
  dropbtn.style.borderColor = 'rgb(94, 94, 94)';
}




// 롤링배너
// DOM 생성 후
var originalID, cloneID; // 인터벌 포인터

window.addEventListener('DOMContentLoaded', function () {
  // 롤링 배너 원본과 복제본 생성
  let roller = document.querySelector('.roller');
  roller.id = 'roller1';

  let clone = roller.cloneNode(true);
  clone.id = 'roller2';

  // 원본, 복제본 배너 위치 지정
  roller.style.left = '0px';
  clone.style.left = '0px'; // 원본 뒤에 배치

  // 클래스 할당
  roller.classList.add('original');
  clone.classList.add('clone');

  // 부모 노드에 복제본 바로 뒤에 추가
  roller.parentNode.appendChild(clone);

  // 인터벌 메서드로 애니메이션 생성
  let rollerWidth = roller.offsetWidth; // 회전 배너 너비값
  let betweenDistance = 1; // 이동 크기 - 정수여야 함

  // 롤링 시작
  function startRoller() {
    originalID = window.setInterval(
      () => betweenRollCallback(betweenDistance, roller),
      parseInt(1000 / 100)
    );
    cloneID = window.setInterval(
      () => betweenRollCallback(betweenDistance, clone),
      parseInt(1000 / 100)
    );
  }

  // 롤링 정지
  function stopRoller() {
    clearInterval(originalID);
    clearInterval(cloneID);
  }

  // 마우스 호버시 롤링이 멈추었다 벗어나면 다시 롤링이 되도록 처리
  roller.addEventListener('mouseover', stopRoller);
  clone.addEventListener('mouseover', stopRoller);
  roller.addEventListener('mouseout', startRoller);
  clone.addEventListener('mouseout', startRoller);

  // 인터벌 애니메이션 함수(공용)
  function betweenRollCallback(d, roller) {
    let left = parseInt(roller.style.left);
    roller.style.left = left - d + 'px'; // 이동

    // 롤링이 한 바퀴 돌았을 때, 처음으로 이동
    if (left - d <= -rollerWidth) {
      roller.style.left = '0px';
    }
  }

  startRoller(); // 롤링 초기화
});

// 롤링 정지
function stopRoller() {
  clearInterval(originalID);
  clearInterval(cloneID);
}



// 달력 JAVASCRIPT
// 화면에 표시된 각 날짜를 나타내는 요소들의 NodeList.
var dragging = false;
var days = document.querySelectorAll('.day');

function clearActiveDays() {
  var activeAItem = document.querySelector('.active-a');
  var activeBItem = document.querySelector('.active-b');

  if (activeAItem) activeAItem.classList.remove('active-a');
  if (activeBItem) activeBItem.classList.remove('active-b');
}

function clearRange() {
  days.forEach(item => {
    item.classList.remove('range');
  });
}

function startMove(item) {
  dragging = true;

  clearActiveDays();
  clearRange();

  var activeAItem = document.querySelector('.active-a');
  var activeBItem = document.querySelector('.active-b');

  if (!activeBItem && activeAItem) {
    item.classList.add('active-b');
  } else {
    item.classList.add('active-a');
  }
}

function move(item) {
  if (dragging) {
    var activeA = document.querySelector('.active-a');
    var prevActiveB = document.querySelector('.active-b');

    clearRange();

    if (prevActiveB) prevActiveB.classList.remove('active-b');
    if (!item.classList.contains('active-a')) item.classList.add('active-b');

    var activeB = document.querySelector('.active-b');
  }
}

function endMove(item) {
  dragging = false;
}

days.forEach((item, index) => {
  var dayNumber = item.querySelector('.day-number').innerHTML;

  item.addEventListener('mousedown', e => {
    startMove(item);
    document.querySelector('.slider_wrap').style.display = "block";
    document.querySelector('.daypick').style.display = "none";
  });

  item.addEventListener('mousemove', e => {
    move(item);
  });

  item.addEventListener('mouseup', e => {
    endMove(item);
  });
});

document.addEventListener('mouseup', e => {
  dragging = false;
});


// 행사 및 전시회 슬라이드
const sliderImg = document.querySelector(".slider_img");        // 보여지는 영역
const sliderInner = document.querySelector(".slider_inner");    // 움직이는 영역
const slider = document.querySelectorAll(".slider");            // 이미지

let currentIndex = 0;                      // 현재 이미지
let sliderCount = 7;                       // 이미지 갯수
let sliderWidth = 600;   // 이미지 가로값

function gotoSlider(num) {
  sliderInner.style.transition = "all 400ms";
  sliderInner.style.transform = "translateX(" + -sliderWidth * num + "px)";
  currentIndex = num;
}

document.querySelectorAll(".slider_btn button").forEach((btn, index) => {
  btn.addEventListener("click", () => {
    // 이미지 총 갯수에서 하나를 뺀 값을 currentIndex에 더하고 
    // 다시 이미지 총 갯수로 나눠 prevIndex 값을 설정
    let prevIndex = (currentIndex + (sliderCount - 1)) % sliderCount;
    // currentIndex 값에 1을 더한 값을 이미지 갯수로 나누어 
    // nextIndex 값을 설정한 후, 그 값을 움직이는 영역에 대입시켜 넘어가도록 설정
    let nextIndex = (currentIndex + 1) % sliderCount;

    if (btn.classList.contains("prev")) {
      currentIndex = prevIndex;
    } else {
      currentIndex = nextIndex;
    }

    gotoSlider(currentIndex);
  });
});
