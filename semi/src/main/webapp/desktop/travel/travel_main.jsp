<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="../../resources/css/style.css">
<link rel="stylesheet" href="css/korea_main.css">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="../../resources/js/main.js"></script>
<script src="https://kit.fontawesome.com/aa24b12773.js" crossorigin="anonymous"></script>
</head>
<body>
	
    <!-- body �κ� -->
    <jsp:include page="../../header.jsp" />
    <div id="container">
    <section>
  
      <!-- ����/���� �˻� â ���� -->
      <div id="mainPicture">
        <img src="images/jeju-winter.jpg" alt="���� ȭ��">
        <div class="searchTravel">
          <h3>���� ���డ�ó���?</h3>
          <div class="searchWord">
            <label>
              <input type="text" placeholder=" ������, ���ø����� �˻��ϼ���. (��õ ���� : ȫ��, ����, ���ֵ�)" size="60%">
              <!-- <button type="button"><i class="fa-solid fa-magnifying-glass fa-lg" style="color: #606060;"></i></button> -->
            </label>
          </div>
        </div>
      </div>
  
      <!-- ���ѹα� ���� ���� â ���� -->
      <div id="searchCity">
        <div class="searchCityBox">
          <p>���� ������</p>
          <table>
            <tbody>
              <!-- ù��° �� -->
              <tr>
                <td>�ֿ� ����</td>
                <td>����</td>
                <td>����</td>
                <td>����</td>
                <td>�λ�</td>
                <td>����</td>
                <td>��õ</td>
                <td>����</td>
              </tr>
              
              <!-- �ι�° �� -->
              <tr>
                <!-- ������ -->
                <td>
                  <div class="dropdown">
                    <button id="dropbtn" class="dropbtn">
                      <span class="dropbtn_content"><p>������</p></span>
                      <span class="dropbtn_click" style="font-family: Material Icons; font-size : 20px; color : #707070; float:right;"
                        onclick="dropdown()">arrow_drop_down</span>
                    </button>
                    <div class="dropdown-content">
                      <a href="#"><div class="city">����</div></a>
                      <a href="#"><div class="city">��õ</div></a>
                      <a href="#"><div class="city">����</div></a>
                      <a href="#"><div class="city">����</div></a>
                      <a href="#"><div class="city">����</div></a>
                      <a href="#"><div class="city">��ô</div></a>
                      <a href="#"><div class="city">�¹�</div></a>
                      <a href="#"><div class="city">ȫõ</div></a>
                      <a href="#"><div class="city">ö��</div></a>
                      <a href="#"><div class="city">Ⱦ��</div></a>
                      <a href="#"><div class="city">��â</div></a>
                      <a href="#"><div class="city">����</div></a>
                      <a href="#"><div class="city">����</div></a>
                      <a href="#"><div class="city">����</div></a>
                      <a href="#"><div class="city">��</div></a>
                      <a href="#"><div class="city">���</div></a>
                      <a href="#"><div class="city">ȭõ</div></a>
                      <a href="#"><div class="city">�籸</div></a>
                    </div>
                  </div>
                </td>

                <!-- ��⵵ -->
                <td>
                  <div class="dropdown">
                    <button id="dropbtn2" class="dropbtn">
                      <span id="dropbtn_content2" class="dropbtn_content"><p>��⵵</p></span>
                      <span class="dropbtn_click" style="font-family: Material Icons; font-size : 20px; color : #707070; float:right;"
                        onclick="dropdown2()">arrow_drop_down</span>
                    </button>
                    <div id="dropdown-content2" class="dropdown-content">
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">���</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">ȭ��</div></a>
                      <a href="#"><div class="city2">��õ</div></a>
                      <a href="#"><div class="city2">������</div></a>
                      <a href="#"><div class="city2">�Ȼ�</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">�Ⱦ�</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">������</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">�ϳ�</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">��õ</div></a>
                      <a href="#"><div class="city2">�Ȼ�</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">�ǿ�</div></a>
                      <a href="#"><div class="city2">��õ</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">��õ</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">��õ</div></a>
                    </div>
                  </div>
                </td>

                <!-- ���� -->
                <td>����</td>

                <!-- ��õ -->
                <td>��õ</td>

                <!-- ���� -->
                <td>����</td>

                <!-- ��û���� -->
                <td>
                  <div class="dropdown">
                    <button id="dropbtn3" class="dropbtn">
                      <span id="dropbtn_content3" class="dropbtn_content"><p>��û����</p></span>
                      <span class="dropbtn_click" style="font-family: Material Icons; font-size : 20px; color : #707070; float:right;"
                        onclick="dropdown3()">arrow_drop_down</span>
                    </button>
                    <div id="dropdown-content3" class="dropdown-content">
                      <a href="#"><div class="city2">õ��</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">�ƻ�</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">���</div></a>
                      <a href="#"><div class="city2">���</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">�ݻ�</div></a>
                      <a href="#"><div class="city2">�ο�</div></a>
                      <a href="#"><div class="city2">��õ</div></a>
                      <a href="#"><div class="city2">û��</div></a>
                      <a href="#"><div class="city2">ȫ��</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">�¾�</div></a>
                    </div>
                  </div>
                </td>

                <!-- ��û�ϵ� -->
                <td>
                  <div class="dropdown">
                    <button id="dropbtn4" class="dropbtn">
                      <span id="dropbtn_content4" class="dropbtn_content"><p>��û�ϵ�</p></span>
                      <span class="dropbtn_click" style="font-family: Material Icons; font-size : 20px; color : #707070; float:right;"
                        onclick="dropdown4()">arrow_drop_down</span>
                    </button>
                    <div id="dropdown-content4" class="dropdown-content">
                      <a href="#"><div class="city2">û��</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">��õ</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">��õ</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">��õ</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">�ܾ�</div></a>
                    </div>
                  </div>
                </td>

                <!-- ���� -->
                <td>����</td>
              </tr>

              <!-- ������ �� -->
              <tr>
                <!-- ����ϵ� -->
                <td>
                  <div class="dropdown">
                    <button id="dropbtn5" class="dropbtn">
                      <span id="dropbtn_content5" class="dropbtn_content"><p>���󳲵�</p></span>
                      <span class="dropbtn_click" style="font-family: Material Icons; font-size : 20px; color : #707070; float:right;"
                        onclick="dropdown5()">arrow_drop_down</span>
                    </button>
                    <div id="dropdown-content5" class="dropdown-content">
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">�ͻ�</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">�ξ�</div></a>
                      <a href="#"><div class="city2">��â</div></a>
                      <a href="#"><div class="city2">�ӽ�</div></a>
                      <a href="#"><div class="city2">��â</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">���</div></a>
                    </div>
                  </div>
                </td>

                <!-- ���󳲵� -->
                <td>
                  <div class="dropdown">
                    <button id="dropbtn6" class="dropbtn">
                      <span id="dropbtn_content6" class="dropbtn_content"><p>����ϵ�</p></span>
                      <span class="dropbtn_click" style="font-family: Material Icons; font-size : 20px; color : #707070; float:right;"
                        onclick="dropdown6()">arrow_drop_down</span>
                    </button>
                    <div id="dropdown-content6" class="dropdown-content">
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">��õ</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">���</div></a>
                      <a href="#"><div class="city2">�</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">ȭ��</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">�س�</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">�强</div></a>
                      <a href="#"><div class="city2">�ϵ�</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">�ž�</div></a>
                    </div>
                  </div>
                </td>

                <!-- ���� -->
                <td>����</td>

                <!-- ��� -->
                <td>���</td>

                <!-- ��󳲵� -->
                <td>
                  <div class="dropdown">
                    <button id="dropbtn7" class="dropbtn">
                      <span id="dropbtn_content7" class="dropbtn_content"><p>��󳲵�</p></span>
                      <span class="dropbtn_click" style="font-family: Material Icons; font-size : 20px; color : #707070; float:right;"
                        onclick="dropdown7()">arrow_drop_down</span>
                    </button>
                    <div id="dropdown-content7" class="dropdown-content">
                      <a href="#"><div class="city2">â��</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">���</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">�뿵</div></a>
                      <a href="#"><div class="city2">��õ</div></a>
                      <a href="#"><div class="city2">�о�</div></a>
                      <a href="#"><div class="city2">�Ծ�</div></a>
                      <a href="#"><div class="city2">��â</div></a>
                      <a href="#"><div class="city2">â��</div></a>
                      <a href="#"><div class="city2">���</div></a>
                      <a href="#"><div class="city2">â��</div></a>
                      <a href="#"><div class="city2">�ϵ�</div></a>
                      <a href="#"><div class="city2">��õ</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">�Ծ�</div></a>
                      <a href="#"><div class="city2">��û</div></a>
                      <a href="#"><div class="city2">�Ƿ�</div></a>
                    </div>
                  </div>
                </td>

                <!-- ���ϵ� -->
                <td>
                  <div class="dropdown">
                    <button id="dropbtn8" class="dropbtn">
                      <span id="dropbtn_content8" class="dropbtn_content"><p>���ϵ�</p></span>
                      <span class="dropbtn_click" style="font-family: Material Icons; font-size : 20px; color : #707070; float:right;"
                        onclick="dropdown8()">arrow_drop_down</span>
                    </button>
                    <div id="dropdown-content8" class="dropdown-content">
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">��õ</div></a>
                      <a href="#"><div class="city2">�ȵ�</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">��õ</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">���</div></a>
                      <a href="#"><div class="city2">�Ǽ�</div></a>
                      <a href="#"><div class="city2">û��</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">û��</div></a>
                      <a href="#"><div class="city2">���</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">ĥ��</div></a>
                      <a href="#"><div class="city2">��õ</div></a>
                      <a href="#"><div class="city2">��ȭ</div></a>
                      <a href="#"><div class="city2">����</div></a>
                      <a href="#"><div class="city2">�︪</div></a>
                    </div>
                  </div>
                </td>

                <!-- �λ� -->
                <td>�λ�</td>

                <!-- �뱸 -->
                <td>�뱸</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>

      <!-- ���� ���� ã�� ���� -> �󼼺��� �̵� ���� -->
      <div id="visitCity">
        <p>���� ���� ã�� ����</p>
        
        <div id="visitCity_image"> 
          <div class="image_datail">
            <img src="images/gangneung.png" alt="����">
            <p>����<br>�󼼺���</p>
          </div>

          <div class="image_datail">
            <img src="images/seoul_1.png" alt="����">
            <p><a href="http://localhost:8080/desktop/travel/intravel.jsp">����<br>�󼼺���</a></p>
          </div>

          <div class="image_datail">
            <img src="images/jeju.png" alt="����">
            <p>����<br>�󼼺���</p>
          </div>

          <div class="image_datail">
            <img src="images/busan.png" alt="�λ�">
            <p>�λ�<br>�󼼺���</p>
          </div>
        </div>
      </div>

      <!-- ���� �α� �ִ� ���� : �Ѹ���� -->
      <div id="popularCity">
        <p>���� �α� �ִ� ����</p>
        <!-- ���丮 ���� : 10���� ���� -->
        <!-- ���� Ŭ�� ��, ���� �ı� ī������ �̵� �� ���� Ȯ�� ���� -->
        <div class="rollingbanner">
          <div class="slide"> <!-- ��� ǥ�� ���� -->
            <div class="roller"> <!-- ���� ��� -->
              <ul> <!-- ��� ������ -->
                <li class="slide_image">
                  <a href="#"><img id="image1" src="images/pohang-homigot.png" alt="ȣ�̰�"></a>
                  <div class="image1"><span>CLICK<br>AND<br>DETAIL</span></div>
                </li>
                <li class="slide_image">
                  <a href="#"><img id="image2" src="images/woman-flower.jpg" alt="������¿���"></a>
                  <div class="image2"><span>CLICK<br>AND<br>DETAIL</span></div>
                </li>
                <li class="slide_image">
                  <a href="#"><img id="image3" src="images/lotte-tower.jpg" alt="�Ե�Ÿ��"></a>
                  <div class="image3"><span>CLICK<br>AND<br>DETAIL</span></div>
                </li>
                <li class="slide_image">
                  <a href="#"><img id="image4" src="images/Daegwallyeong.jpg" alt="�����"></a>
                  <div class="image4"><span>CLICK<br>AND<br>DETAIL</span></div>
                </li>
                <li class="slide_image">
                  <a href="#"><img id="image5" src="images/gyeongbokgung-palace.jpg" alt="�溹��"></a>
                  <div class="image5"><span>CLICK<br>AND<br>DETAIL</span></div>
                </li>
                <li class="slide_image">
                  <a href="#"><img id="image6" src="images/damyang-metasequoia.jpg" alt="����� ��Ÿ�����̾��"></a>
                  <div class="image6"><span>CLICK<br>AND<br>DETAIL</span></div>
                </li>
                <li class="slide_image">
                  <a href="#"><img id="image7" src="images/busan-train.jpg" alt="�λ극�ϱ���"></a>
                  <div class="image7"><span>CLICK<br>AND<br>DETAIL</span></div>
                </li>
                <li class="slide_image">
                  <a href="#"><img id="image8" src="images/choenjiyeon-falls.jpg" alt="õ��������"></a>
                  <div class="image8"><span>CLICK<br>AND<br>DETAIL</span></div>
                </li>
                <li class="slide_image">
                  <a href="#"><img id="image9" src="images/incheon-bridge.jpg" alt="��õ�뱳"></a>
                  <div class="image9"><span>CLICK<br>AND<br>DETAIL</span></div>
                </li>
                <li class="slide_image">
                  <a href="#"><img id="image10" src="images/gyeongju.jpg" alt="����"></a>
                  <div class="image10"><span>CLICK<br>AND<br>DETAIL</span></div>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div> 

      <!-- �ٰ����� ��� �� ����ȸ -->
      <div id="comingup">
        <div id="calendar">
         
        </div>
      </div>
  
    </section>
    </div>
   
   	<script src="js/koreamain.js"></script>
   	<jsp:include page="../../footer.jsp" />
</body>
</html>