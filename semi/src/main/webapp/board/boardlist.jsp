<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>여행 후기 - 여정담</title>
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
            <h3>여행 후기</h3>
            <p>게시판에 맞는 정보를 공유해주세요.</p>
        </div>
    </div>

  
      
     
    <!-- board list area -->
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
                  <tr class="medal1">
                      <td><i class="fa-solid fa-medal" style="color: #ffd500;"></i></td>
                      <td><a href="/boardview.do?bno=${l1.bno }">${l1.title }
					<c:if test="${l1.reply_count ne 0}">
						<small>[&nbsp;<c:out value="${l1.reply_count}"/>&nbsp;]</small>
					</c:if>
					</a></td>
                      <td>${l1.id }</td>
                      <td><c:choose>
							<c:when test="${not empty l1.modifyDate }">
								<fmt:formatDate value="${l1.modifyDate }" pattern="yyyy-MM-dd"/>
							</c:when>
							<c:otherwise>
								<fmt:formatDate value="${l1.createDate }" pattern="yyyy-MM-dd"/>
							</c:otherwise>
						</c:choose></td>
                      <td>${l1.hit }</td>
                  </tr>
  
                  <tr class="medal2">
                    <td><i class="fa-solid fa-medal" style="color: #dedede;"></i></td>
                      <td><a href="/boardview.do?bno=${l2.bno }">${l2.title }
					<c:if test="${l2.reply_count ne 0}">
						<small>[&nbsp;<c:out value="${l2.reply_count}"/>&nbsp;]</small>
					</c:if>
					</a></td>
                      <td>${l2.id }</td>
                      <td><c:choose>
							<c:when test="${not empty l2.modifyDate }">
								<fmt:formatDate value="${l2.modifyDate }" pattern="yyyy-MM-dd"/>
							</c:when>
							<c:otherwise>
								<fmt:formatDate value="${l2.createDate }" pattern="yyyy-MM-dd"/>
							</c:otherwise>
						</c:choose></td>
                      <td>${l2.hit }</td>
                  </tr>
  
                  <tr class="medal3">
                    <td><i class="fa-solid fa-medal" style="color: #a85a00;"></i></td>
                      <td><a href="/boardview.do?bno=${l3.bno }">${l3.title }
					<c:if test="${l3.reply_count ne 0}">
						<small>[&nbsp;<c:out value="${l3.reply_count}"/>&nbsp;]</small>
					</c:if>
					</a></td>
                      <td>${l3.id }</td>
                      <td><c:choose>
							<c:when test="${not empty l3.modifyDate }">
								<fmt:formatDate value="${l3.modifyDate }" pattern="yyyy-MM-dd"/>
							</c:when>
							<c:otherwise>
								<fmt:formatDate value="${l3.createDate }" pattern="yyyy-MM-dd"/>
							</c:otherwise>
						</c:choose></td>
                      <td>${l3.hit }</td>
                  </tr>
                  <c:forEach items="${boardList }" var="b">
                  <tr>
                      <td>${b.bno }</td>
                      <td><a href="/boardview.do?bno=${b.bno }">${b.title }
					<c:if test="${b.reply_count ne 0}">
						<small>[&nbsp;<c:out value="${b.reply_count}"/>&nbsp;]</small>
					</c:if>
					</a></td>
                      <td>${b.id }</td>
                      <td><c:choose>
							<c:when test="${not empty b.modifyDate }">
								<fmt:formatDate value="${b.modifyDate }" pattern="yyyy-MM-dd"/>
							</c:when>
							<c:otherwise>
								<fmt:formatDate value="${b.createDate }" pattern="yyyy-MM-dd"/>
							</c:otherwise>
						</c:choose></td>
                      <td>${b.hit }</td>
                  </tr>
                  </c:forEach>
                  </tbody>
              </table>
          </div>
      </div>
      
      <!-- 페이지 처리 영역 -->
     	<section id="bottomlist">
			<div class = "pagination">
				<a href="/boardlist.do?pageNum=1"><i class="fa-solid fa-forward fa-rotate-180"></i></a>
				<c:choose>
				<c:when test="${startPage > 1 }">
				<a href="/boardlist.do?pageNum=${startPage-1}"><i class="fa-solid fa-play fa-rotate-180"></i></a>
				</c:when>
				<c:otherwise>
				<a href=""><i class="fa-solid fa-play fa-rotate-180"></i></a>
				</c:otherwise>
				</c:choose>
				<!-- 페이지 리스트 -->
				<c:forEach var = "i" begin = "1" end = "${endPage}">
					<c:if test="${page == i}">
						<a href="/boardlist.do?pageNum=${i}"><b>${i}</b></a>
					</c:if>
					<c:if test="${page != i}">
						<a href="/boardlist.do?pageNum=${i}">${i}</a>
					</c:if>
				</c:forEach>
				<!-- 다음페이지 -->
				<c:choose>
				<c:when test="${endPage > startPage }">
				<a href="/boardlist.do?pageNum=${startPage+1}"><i class="fa-solid fa-play"></i></a>
				</c:when>
				<c:otherwise>
				<a href=""><i class="fa-solid fa-play"></i></a>
				</c:otherwise>
				</c:choose>
				<a href="/boardlist.do?pageNum=${endPage}"><i class="fa-solid fa-forward"></i></a>	
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
			    <a href="writeform.do"><input type="button" value="글쓰기" id="write"></a>
			</div>
	</section>
      
      
     </section>
     
  

  <jsp:include page="../footer.jsp"/>
</body>
</html>