<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>����������</title>
  <link rel="stylesheet" href="../resources/css/style.css">
  <script src="../resources/js/a.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

</head>
<body>
  <div class="container">
    <div class="profile">
      <img src="resource/images/dog.PNG" alt="�����ʻ���">
      <div id="my_an">
        <p>���� ������</p>
        <p><br>�г���</p>
        <p>�ּ�</p>
        <p><br>�ȳ��ϼ���</p>
      </div>
      <div id="myModal" class="modal">
        <div class="modal-content">
          <span class="close" onclick="closeModal()">&times;</span>
          <!-- ������ ���� ���� �� �κ� -->
          <form id="profileForm">
            <img src="resource/images/dog.PNG" alt="�����ʻ���">
            <!-- ������ ���� ���� �Է� �� ���� �߰��ϼ��� -->
            <div id="my_p">
              <p>���� ������</p>
              <hr>
              <p><label for="nic">�г���</label>
                <input type="text" id="nic" name="nic"></p>
              <p><label for="addr">�ּ�</label>
                <input type="text" id="addr" name="addr"></p>
              <p><label for="long">�� �� �Ұ�</label>
                <input type="text" id="long" name="long"></p>
              
              <button type="button" onclick="saveProfile()">������� ����</button>
            </div>
          </form>
        </div>
      </div>
      <button id="modify" onclick="openModal()">������ ����</button>
      <button id="modify2"><a href="��������.html">����</a></button>
    </div>
    <div class="select">
      <a href="#" class="toggle-link">�� �Խù� </a>
      <a href="#" class="toggle-link">�� ��� </a>
      <a href="#" class="toggle-link">�� </a>
      <a href="#" class="toggle-link">���ƿ� </a>
    </div>
    <div class="box">
      <div id="box1">
        <div class="title">����</div>
        <div class="con">�۳���</div>
        <div class="like">
          <a href=""> �� 0 </a>
          <a href=""> ��� 0 </a>
        </div>
      </div>
      <div id="box1">
        <div class="title">����</div>
        <div class="con">�۳���</div>
        <div class="like">
          <a href=""> �� 0 </a>
          <a href=""> ��� 0 </a>
        </div>
      </div>
      <div id="box1">
        <div class="title">����</div>
        <div class="con">�۳���</div>
        <div class="like">
          <a href=""> �� 0 </a>
          <a href=""> ��� 0 </a>
        </div>
      </div>
      <div id="box1">
        <div class="title">����</div>
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
  </div>
</body>
</html>