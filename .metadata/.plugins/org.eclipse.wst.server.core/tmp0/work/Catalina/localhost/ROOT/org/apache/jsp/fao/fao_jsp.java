/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.83
 * Generated at: 2023-12-14 08:31:00 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.fao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class fao_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>자주하는 질문</title>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"../resources/css/style.css\">\r\n");
      out.write("<script src=\"https://code.jquery.com/jquery-3.7.1.min.js\"></script>\r\n");
      out.write("<script src=\"https://kit.fontawesome.com/69798321c6.js\"></script>\r\n");
      out.write("<script src=\"../resources/js/main.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("	");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../header.jsp", out, false);
      out.write("\r\n");
      out.write("	<section class=\"question\">\r\n");
      out.write("        <div class=\"question-title\">\r\n");
      out.write("           <div class=\"board\">\r\n");
      out.write("               <h1>자주하는 질문</h1>\r\n");
      out.write("           </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"fao-travel\">\r\n");
      out.write("            <h3>여행</h3>\r\n");
      out.write("            <div class=\"fao-section1\">\r\n");
      out.write("                <div class=\"fao-menu1\">\r\n");
      out.write("                    <input id=\"check-btn1\" type=\"checkbox\" />\r\n");
      out.write("                    <label for=\"check-btn1\">해외여행 중 여권 분실 시 대처</label>\r\n");
      out.write("                    <ul class=\"menubars\">\r\n");
      out.write("                        <li>여권 분실 시 순서로는<br>   1. 여권 분실 신고<br>\r\n");
      out.write("                        2. 현지 관광 경찰서 방문 - 분실 확인증 발급<br>\r\n");
      out.write("                        3. 현지 한국 대사관 방문으로 이뤄지며<br>\r\n");
      out.write("                        발급을 위해 신분증, 여권용 사진 2매, <br>\r\n");
      out.write("                        여권 발급시 수수료등이 필요합니다.</li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"fao-menu2\">\r\n");
      out.write("                    <input id=\"check-btn2\" type=\"checkbox\" />\r\n");
      out.write("                    <label for=\"check-btn2\">해외여행 주의사항</label>\r\n");
      out.write("                    <ul class=\"menubars\">\r\n");
      out.write("                        <li>각 나라별 비자, 입국심사 등을 확인해 즐거운 여행이 되시길 기원합니다.</li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"fao-menu3\">\r\n");
      out.write("                    <input id=\"check-btn3\" type=\"checkbox\" />\r\n");
      out.write("                    <label for=\"check-btn3\">국내여행 주의사항</label>\r\n");
      out.write("                    <ul class=\"menubars\">\r\n");
      out.write("                        <li>국내에선 무엇을 주의하죠?</li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"fao-user\">\r\n");
      out.write("            <h3>회원</h3>\r\n");
      out.write("            <div class=\"fao-section2\">\r\n");
      out.write("                <div class=\"fao-menu4\">\r\n");
      out.write("                    <input id=\"check-btn4\" type=\"checkbox\" />\r\n");
      out.write("                    <label for=\"check-btn4\">회원 탈퇴를 하고 싶습니다.</label>\r\n");
      out.write("                    <ul class=\"menubars\">\r\n");
      out.write("                        <li>[마이페이지>회원정보 수정>회원탈퇴] <br>메뉴에서 탈퇴를 선택하시고 \r\n");
      out.write("                            확인 버튼을 클릭하시면 탈퇴가 가능합니다.<br>\r\n");
      out.write("                            정보통신망법(정보통신망 이용촉진 및 정보보호 등에 관한 법률 제 29조)에<br> \r\n");
      out.write("                            따라서, 수집목적이 완료된 회원의 정보는 파기하도록 되어 있습니다.</li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"fao-menu5\">\r\n");
      out.write("                    <input id=\"check-btn5\" type=\"checkbox\" />\r\n");
      out.write("                    <label for=\"check-btn5\">내가 쓴 글을 수정,삭제하고싶어요.</label>\r\n");
      out.write("                    <ul class=\"menubars\">\r\n");
      out.write("                        <li>로그인 후, [마이페이지] ->내가 쓴 글을 확인할 수 있으며, <br>\r\n");
      out.write("                            클릭하여 해당 글이 있는 페이지로 이동하시면 글 내용 하단에 <br>\r\n");
      out.write("                            삭제/수정 기능이 있습니다.</li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"fao-menu6\">\r\n");
      out.write("                    <input id=\"check-btn6\" type=\"checkbox\" />\r\n");
      out.write("                    <label for=\"check-btn6\">아이디/비밀번호가 기억나지 않아요.</label>\r\n");
      out.write("                    <ul class=\"menubars\">\r\n");
      out.write("                        <li>여정담 아이디 및 비밀번호 찾기는 로그인 페이지에서 <br>\r\n");
      out.write("                            [아이디/비밀번호 찾기]를 통해 가능합니다.<br>\r\n");
      out.write("                            [아이디/비밀번호 찾기] 통해 아이디 및 비밀번호 찾기를 진행해 주시기 바랍니다.</li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div> \r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"fao-other\">\r\n");
      out.write("           <h3>기타 문의사항</h3>\r\n");
      out.write("           <div class=\"fao-section3\">\r\n");
      out.write("            <div class=\"fao-menu7\">\r\n");
      out.write("                <input id=\"check-btn7\" type=\"checkbox\" />\r\n");
      out.write("                <label for=\"check-btn7\">여정담은 언제 만들어졌나요?</label>\r\n");
      out.write("                <ul class=\"menubars\">\r\n");
      out.write("                    <li>2023년 12월 15일 탄생했습니다.</li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"fao-menu8\">\r\n");
      out.write("                <input id=\"check-btn8\" type=\"checkbox\" />\r\n");
      out.write("                <label for=\"check-btn8\">여정담의 목표가 무엇인가요?</label>\r\n");
      out.write("                <ul class=\"menubars\">\r\n");
      out.write("                    <li> 저희 여정담의 목표는<br>\r\n");
      out.write("                        전 세계 여행 정보 제공 및 공유 사이트입니다.</li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"fao-menu9\">\r\n");
      out.write("                <input id=\"check-btn9\" type=\"checkbox\" />\r\n");
      out.write("                <label for=\"check-btn9\">여정담은 누가 만든건가요?</label>\r\n");
      out.write("                <ul class=\"menubars\">\r\n");
      out.write("                    <li>팀원 : 임예은(PL), 박채희, 서지훈, 이가은, 이나경, 이상현입니다.</li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div> \r\n");
      out.write("        </div> \r\n");
      out.write("   </section>\r\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../footer.jsp", out, false);
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
