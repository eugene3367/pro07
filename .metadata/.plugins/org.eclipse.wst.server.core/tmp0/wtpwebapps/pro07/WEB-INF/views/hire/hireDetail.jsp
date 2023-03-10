<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*, java.lang.*"%>
<%@ page import="java.text.*, java.net.InetAddress"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>과학기술정보통신부</title>


<jsp:include page="../include/head.jsp"></jsp:include>
<!-- header css -->
<style>

</style>
<!-- header css end -->
</head>
<body>

<header id="header">
	<!-- 헤더 부분 인클루드 -->
	<jsp:include page="../include/header.jsp"></jsp:include>
</header>
	
<div class="content container">
	<h2 class="title">모집채용 상세 보기</h2>
	<table class="table">
		<tbody>
      		<tr>
      			<th style="background-color:#dcdcdc">글 번호</th>
      			<td>${dto.seq }</td>
      		</tr>	
      		<tr>
      			<th style="background-color:#dcdcdc">글 제목</th>
      			<td>${dto.title }</td>
      		</tr>
      		<tr>
      			<th style="background-color:#dcdcdc">글 내용</th>
      			<td><p>${dto.content }</p></td>
      		</tr>
      		<tr>
      			<th style="background-color:#dcdcdc">작성자</th>
      			<td>${dto.nickname }</td>
      		</tr>
      		<tr>
      			<th style="background-color:#dcdcdc">작성일시</th>
      			<td>${dto.regdate }</td>
      		</tr>
      		<tr>
      			<th style="background-color:#dcdcdc">읽은 횟수</th>
      			<td>${dto.visited }</td>
      		</tr>
		</tbody>
	</table>
	<div class="btn-group">
		<a href="${path1 }/hire/list.do" class="btn btn-info">목록으로</a>
		<%-- <% if(sid.equals("admin")) { %> --%>
		<a href="${path1 }/hire/delete.do?seq=${dto.seq}" class="btn btn-info">글 삭제</a>
		<a href="${path1 }/hire/edit.do?seq=${dto.seq}" class="btn btn-info">글 수정</a>
		<%-- <% } %> --%>
	</div>
</div>
<footer id="footer">
	<!-- 푸터 부분 인클루드 -->
	<jsp:include page="../include/footer.jsp"></jsp:include>
</footer> 

</body>
</html>