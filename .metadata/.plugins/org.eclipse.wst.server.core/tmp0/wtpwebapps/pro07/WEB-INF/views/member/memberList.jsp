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
	
<div class="container-fluid" id="content">
<div class="row" id="content_row">
    <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
		<h2 class="title">회원 목록</h2>
		<table class="table">
			<thead>
				<tr>
					<th>No</th><th>아이디</th><th>이름</th><th>가입일</th><th>포인트</th>
				</tr>
			</thead>
			<tbody>
      	<c:forEach items="${memberList }" var="mem" varStatus="status">
      		<tr>
      			<td>${status.count }</td>
      			<td><a href="${path1 }/member/getMember.do?id=${mem.id }">${mem.id }</a></td>
      			<td>${mem.name }</td>
      			<td>${mem.regdate }</td>
      			<td>${mem.pt }</td>
      		</tr>
      	</c:forEach>	
			</tbody>
		</table>
    </main>
  </div>
</div>

<footer id="footer">
	<!-- 푸터 부분 인클루드 -->
	<jsp:include page="../include/footer.jsp"></jsp:include>
</footer> 

</body>
</html>