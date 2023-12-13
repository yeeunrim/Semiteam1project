<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
  <link rel="stylesheet" href="../resources/css/style.css">
  <script src="https://kit.fontawesome.com/d591ef8969.js" crossorigin="anonymous"></script>
  <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
  <script src="../resource/js/a.js"></script>
  <script src="../resources/js/main.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>
<body>
	<jsp:include page="../header.jsp" />
	<div id=mmm>
  <section class="my_container">
    <div class="profile">
      <img src="../resources/images/page.png" alt="�����ʻ���">
      <div id="my_an">
        <h3>���� ������</h3>
        <p><br>�г��� : ${sessionId}</p>
        <p><br>�Ұ����� �Է����ּ���</p>
      </div>
      
      <!-- ������ ���� -->
      <div id="myModal" class="modal">
        <div class="modal-content">
          <span class="close" onclick="closeModal()">&times;</span>
          
          <!-- ������ ���� ���� �� �κ� -->
          <form id="profileForm" action="/editprofile.do" method="post" name="profile">
            <img src="../resources/images/page.png" alt="�����ʻ���">
            <!-- ������ ���� ���� �Է� �� ���� �߰��ϼ��� -->
            <div id="my_p">
              <p>���� ������</p>
              <hr>
              <p><label for="nic">�г���</label>
                <input type="text" id="id" name="id"></p>
              <p><label for="long">�� �� �Ұ�</label>
                <input type="textarea" id="introduction" name="introduction"></p>
              
              <button type="button" onclick="saveProfile()">������� ����</button>
            </div>
          </form>
        </div>
      </div>
      <button id="modify" onclick="openModal()"><i class="fa-solid fa-pen"></i></button>
      <button id="modify2"><a href="setting.jsp"><i class="fa-solid fa-gear"></i></a></button>
    </div>
    <div class="select">
      <a href="#" class="toggle-link">�� �Խù� </a>
      <a href="#" class="toggle-link">�� ��� </a>
      <a href="#" class="toggle-link">�� </a>
    </div>
    <div class="box">
      <div id="box1">
        <div class="title"><a href="">����</a></div>
        <div class="con">�۳���</div>
        <div class="like">
          <a href=""> �� 0 </a>
          <a href=""> ��� 0 </a>
        </div>
      </div>
      <div id="box1">
        <div class="title"><a href="">����</a></div>
        <div class="con">�۳���</div>
        <div class="like">
          <a href=""> �� 0 </a>
          <a href=""> ��� 0 </a>
        </div>
      </div>
      <div id="box1">
        <div class="title"><a href="">����</a></div>
        <div class="con">�۳���</div>
        <div class="like">
          <a href=""> �� 0 </a>
          <a href=""> ��� 0 </a>
        </div>
      </div>
      <div id="box1">
        <div class="title"><a href="">����</a></div>
        <div class="con">�۳���</div>
        <div class="like">
          <a href=""> �� 0 </a>
          <a href=""> ��� 0 </a>
        </div>
      </div>
    </div>
    <div class="more">
        <a href="">+ MORE</a>
    </div>
  </section>
  </div>
  <jsp:include page="../footer.jsp" />
</body>
</html>