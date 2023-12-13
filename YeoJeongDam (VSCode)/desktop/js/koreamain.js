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


//  //DOM 생성 후
//  var originalID, cloneID; //인터벌 포인터

//  window.addEventListener('DOMContentLoaded', function(){
//   //롤링 배너 복제본 생성
//   let roller = document.querySelector('.roller');
//   roller.id = 'roller1';
 
//   // cloneNode : 노드 복제. 기본값은 false. 자식 노드까지 복제를 원하면 true 사용
//   let clone = roller.cloneNode(true);
//   clone.id = 'roller2';
//   document.querySelector('.slide').appendChild(clone); //부착

//   //원본, 복제본 배너 위치 지정
//   document.querySelector('#roller1').style.left = '0px';
//   document.querySelector('#roller2').style.left = document.querySelector('.roller ul').offsetWidth+'px';

//   //클래스 할당
//   roller.classList.add('original');
//   clone.classList.add('clone');

//   //인터벌 메서드로 애니메이션 생성
//   let rollerWidth = document.querySelector('.roller').offsetWidth;//회전 배너 너비값
//   let betweenDistance = 1;//이동 크기 - 정수여야 함

//   //롤링 시작
//   function startRoller(){
//     originalID = window.setInterval(betweenRollCallback, parseInt(1000/100), betweenDistance, document.querySelector('#roller1'));
//     cloneID = window.setInterval(betweenRollCallback, parseInt(1000/100), betweenDistance, document.querySelector('#roller2'));
//   }

//   //롤링 정지
//   function stopRoller(){
//     clearInterval(originalID);
//     clearInterval(cloneID);
//   }

//   //마우스 호버시 롤링이 멈추었다 벗어나면 다시 롤링이 되도록 처리
//   document.getElementById('roller1').addEventListener('mouseover',()=>{stopRoller()});
//   document.getElementById('roller2').addEventListener('mouseover',()=>{stopRoller()});
//   document.getElementById('roller1').addEventListener('mouseout',()=>{startRoller()});
//   document.getElementById('roller2').addEventListener('mouseout',()=>{startRoller()});

//   //인터벌 애니메이션 함수(공용)
//   function betweenRollCallback(d, roller){
//     let left = parseInt(roller.style.left);
//     roller.style.left = (left - d)+'px';//이동
//     //조건부 위치 리셋
//     if(rollerWidth + (left - d) <= 0){
//       roller.style.left = rollerWidth+'px';
//     }
//   }

//   startRoller();//롤링 초기화
// });


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
  clone.style.left = roller.offsetWidth + 'px'; // 원본 뒤에 배치

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
