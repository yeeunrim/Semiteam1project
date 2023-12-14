<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�������� �� ������</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="../../resources/js/main.js"></script>
<script src="../js/trave.js"></script>
<script src="https://kit.fontawesome.com/aa24b12773.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="../../resources/css/style.css">
<link rel="stylesheet" href="css/travel.css">
</head>
<body>
	<jsp:include page="../../header.jsp" />
	<!-- ============== body ====================================== -->
    <section>
        <section class="main">
            <div class="area_img">
                <img src="images/namsantower.jpg" alt="namsantower" id="pic">
            </div>

            <div class="area_text">
                <p class="area_en">Seoul</p>
                <p class="area_ko">����Ư����</p>
            </div>
        </section><!-- main -->
        
        <section class="infoToMap">
            <div class="info">
                <div class="infobox">
                </div>
                <div class="infotext">
                    ���ſ� ���簡 �����ϸ� �Ϸ簡 �ٸ��� ��ȭ�� ������ �����ϴ� ���� ������ ���Ӵ�.<br>
                    ���� �Ѻ��ǿ��� 600���� ���縦 �״�� �Ȱ� �ִ� �Ƹ��ٿ� ��õ�� ���Ҿ� ���ѹα��� Ʈ���带<br>
                    �̲������ ������ ��ȭ�� ũ�� ���� ���׵��� �ѷ��� �� �ִ� ������ ���� ���࿡ ����ȭ�� ��Ҵ�.
                </div>

                <div class="tipbox">
                    <p><a href="https://www.visitseoul.net/index" target="_blank"> Tip! ���� �ȳ� Ȩ������ 
                        <i class="fa-solid fa-angle-right" id="angleright"></i></a>
                    </p>
                </div>
            </div> <!-- info -->
            
            <div class="left_box">
                <div class="T_weather">
                    <p>���� ����</p>
                </div>

                <div class="box_weather">
                    <div class="topM">
                        <p>December
                            <i class="fa-solid fa-angle-down" id="angledown"></i>
                        </p>
                    </div>
                    <div class="bottom_weather">
                        <p>��� ���&nbsp;&nbsp;&nbsp;<span id="a">-1.1</span> ~ <span id="b">0.3</span></p>
                        <p>��� ����&nbsp; 15.7 ~ 23.3mm</p>
                    </div>
                </div>
            </div><!-- left_weather -->

            <div class="rightbox">
                <div class="T_location">
                    <p>��ġ</p>
                </div>
                <div class="imgLocation">
                    <img src="images/seoul.png" alt="seoul location">
                </div>
                
                <i class="fa-solid fa-circle-info" style="color: #7d7d7d;" id="circleinfo"></i>
            </div><!-- rightbox -->
        </section><!-- infoToMap -->
        
        <section class="attraction">
            <h2>������ �ֿ� ������</h2>
            <div class="searchWord">
                <label>
                  <input type="text" placeholder="Search...">
                    <button type="button">
                    <i class="fa-solid fa-magnifying-glass fa-lg" style="color: #606060;" id="glass"></i>
                    </button>
                </label>
              </div>
            <div class="first_attr">
                <div class="attr1T">
                    <p>�溹��
                        <i class="fa-solid fa-xmark" style="color: #404040;" id="xmark1"></i>
                    </p>
                </div>
                <div class="attr1">
                    <img src="images/Gyeongbokgung.png" alt="Gyeongbokgung palace">
                </div>
            </div><!-- first_attr -->

            <div class="second_attr">
                <div class="attr2T">
                    <p>���ǵ� �Ѱ� ����
                        <i class="fa-solid fa-xmark" style="color: #404040;" id="xmark2"></i>
                    </p>
                </div>
                <div class="attr2">
                    <img src="images/hankang.png" alt="hankang river">
                </div>
            </div><!-- second_attr -->

            <div class="third_attr">
                <div class="attr3T">
                    <p>�Ե�����
                        <i class="fa-solid fa-xmark" style="color: #404040;" id="xmark3"></i>
                    </p>
                </div>
                <div class="attr3">
                    <img src="images/lotteworld.png" alt="lotteworld">
                </div>
            </div><!-- third_attr -->
        </section><!-- attraction -->

        <section class="todayCuration">
            <h2>������ ť���̼�</h2>
            
            <div class="curationBox1"> <!--ū �ڽ� -->
                <div class="imgBox1">
                    <img src="images/library.png" alt="recommend library">
                </div>
                <div class="textBox1">
                    <div class="Ctext1">
                        <p>å �б� ���� ����<br>���� ���� 10��</p>
                    </div>
                </div>
            </div>

            <div class="curationBox2"> 
                <div class="imgBox2">
                    <img src="images/hanok.png" alt="traditional hanok">
                </div>
                <div class="textBox2">
                    <div class="Ctext2">
                        <p>���ÿ� �ѿ��� ������ ��,<br>���� �ѿ�ī�� 12��</p>
                    </div>
                </div>
            </div>

            <div class="curationBox3"> 
                <div class="imgBox3">
                    <img src="images/toast.png" alt="toast yummy">
                </div>
                <div class="textBox3">
                    <div class="Ctext3">
                        <p>���� ����ġ �佺Ʈ ����</p>
                    </div>
                </div>
            </div>
            
            <div class="curationBox4"> 
                <div class="imgBox4">
                    <img src="images/seoulnight.png" alt="night">
                </div>
                <div class="textBox4">
                    <div class="Ctext4">
                        <p>������ �Ѵ��� ������<br>���̴� ���� ���� ��</p>
                    </div>
                </div>
            </div>
        </section><!-- curation -->
    </section>
    <jsp:include page="../../footer.jsp" />
</body>
</html>