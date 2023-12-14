<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../resources/css/style.css">
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="https://kit.fontawesome.com/69798321c6.js"></script>
    <script src="../resources/js/main.js"></script>
</head>
<body>

    <jsp:include page="../header.jsp"/>
	<section class="notice">
    <div class="board-title">
        <div class="board">
            <h3>공지 사항</h3>
            <p>공지사항을 숙지하시길 바랍니다.</p>
        </div>
    </div>

  
      
     
    <!-- notice list area -->
      <div id="board-list">
          <div class="board">
              <table class="board-table">
                  <thead>
                  <tr>
                        <th class="th-num">번호</th>
                        <th class="th-title">제목</th>
                        <th class="th-id">작성자</th>
                        <th class="th-date">작성일</th>
                        <th class="th-hit">조회수</th>
                  </tr>
                  </thead>
                  <tbody>
                  <c:forEach items="${noticeList }" var="n">
                  <tr>
                      <td>${n.nno }</td>
                      <td><a href="/noticeview.do?nno=${n.nno }">${n.ntitle }
					<c:if test="${n.nreply_count ne 0}">
						<small>[&nbsp;<c:out value="${n.nreply_count}"/>&nbsp;]</small>
					</c:if>
					</a></td>
                      <td>관리자</td>
                      <td><c:choose>
							<c:when test="${not empty n.nmodifyDate }">
								<fmt:formatDate value="${n.nmodifyDate }" pattern="yyyy-MM-dd"/>
							</c:when>
							<c:otherwise>
								<fmt:formatDate value="${n.ncreateDate }" pattern="yyyy-MM-dd"/>
							</c:otherwise>
						</c:choose></td>
                      <td>${n.nhit }</td>
                  </tr>
                  </c:forEach>
                  </tbody>
              </table>
          </div>
      </div>
     </section>
     <!-- 페이지 처리 영역 -->
     	<section id="bottomlist">
				<div class = "pagination">
					<a href="/noticelist.do?pageNum=1"><i class="fa-solid fa-forward fa-rotate-180"></i></a>
					<c:choose>
					<c:when test="${startPage > 1 }">
					<a href="/noticelist.do?pageNum=${startPage-1}"><i class="fa-solid fa-play fa-rotate-180"></i></a>
					</c:when>
					<c:otherwise>
					<a href=""><i class="fa-solid fa-play fa-rotate-180"></i></a>
					</c:otherwise>
					</c:choose>
					<!-- 페이지 리스트 -->
					<c:forEach var = "i" begin = "1" end = "${endPage}">
						<c:if test="${page == i}">
							<a href="/noticelist.do?pageNum=${i}"><b>${i}</b></a>
						</c:if>
						<c:if test="${page != i}">
							<a href="/noticelist.do?pageNum=${i}">${i}</a>
						</c:if>
					</c:forEach>
					<!-- 다음페이지 -->
					<c:choose>
					<c:when test="${endPage > startPage }">
					<a href="/noticelist.do?pageNum=${startPage+1}"><i class="fa-solid fa-play"></i></a>
					</c:when>
					<c:otherwise>
					<a href=""><i class="fa-solid fa-play"></i></a>
					</c:otherwise>
					</c:choose>
					<a href="/noticelist.do?pageNum=${endPage}"><i class="fa-solid fa-forward"></i></a>	
				</div>
	<!-- 검색 -->
	<div class="search-container">
		<form action="" method="get">
	    <div class="input-wrapper">
	        <select name="field" id="search-select">
	            <option value="title" ${(field eq "title") ? "selected" : "" }>제목</option>
				<option value="content" ${(field eq "content") ? "selected" : "" }>내용</option>
				<option value="id" ${(field eq "id") ? "selected" : "" }>작성자</option>
	        </select>
	        <input type="text" id="search-input" placeholder="검색어를 입력하세요." name="kw" value="${kw }" size="30%">
	     <button type="submit" id="search-button">검색</button>
	    </div>
	    </form>
	    <a href="noticewriteform.do"><input type="button" value="글쓰기" id="write"></a>
	</div>
	</section>

  

  <jsp:include page="../footer.jsp"/>
</body>
</html>