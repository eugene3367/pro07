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
	<h2 class="title">사업공고 목록</h2>
	<table class="table">
		<thead>
			<tr>
				<th>No</th><th>제목</th><th>작성일</th><th>조회수</th>
			</tr>
		</thead>
		<tbody>
      	<c:forEach items="${workList }" var="work" varStatus="status">
      		<tr>
      			<td>${status.count }</td>
      			<td><a href="${path1 }/work/detail.do?seq=${work.seq }">${work.title }</a></td>
      			<td>
     					<fmt:parseDate value="${work.regdate }" var="resdate" pattern="yyyy-MM-dd HH:mm:ss" />
     					<fmt:formatDate value="${resdate }" pattern="yyyy-MM-dd" />
      			</td>
      			<td>${work.visited }</td>
      		</tr>
      	</c:forEach>	
		</tbody>
	</table>
	<div class="btn-group">		
		<a href="${path1 }/work/insert.do" class="btn btn-info">글쓰기</a>
	</div>
</div>
<footer id="footer">
	<!-- 푸터 부분 인클루드 -->
	<jsp:include page="../include/footer.jsp"></jsp:include>
</footer> 

</body>
</html>