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


<jsp:include page="../../WEB-INF/views/include/head.jsp"></jsp:include>
<!-- header css -->
<style>

</style>
<!-- header css end -->
</head>
<body>

<header id="header">
	<!-- 헤더 부분 인클루드 -->
	<jsp:include page="../../WEB-INF/views/include/header.jsp"></jsp:include>
</header>

<div class="container">
	<h1>정보공개제도란</h1>
	<hr>
	<div class="media">
	 <img src="${path1 }/resources/data/a-1.svg" class="mr-3" alt="...">  
	  <div class="media-body">
	    <h5 class="mt-0">정보공개제도란</h5>
	    <p>
「정보공개제도」란 공공기관이 직무상 작성 또는 취득하여 관리하고 있는 정보를 수요자인 국민의 청구에 의하여 열람·사본·복제 등의 형태로 청구인에게 공개하거나<br>
 공공기관이 자발적으로 또는 법령 등의 규정에 의하여 의무적으로 보유하고 있는 정보를 배포 또는 공표 등의 형태로 제공하는 제도를 말합니다.<br>
	    </p>	    
	  </div>
	</div>
	
	<div class="media">
	 <img src="${path1 }/resources/data/a-1.svg" class="mr-3" alt="...">  
	  <div class="media-body">
	    <h5 class="mt-0">정보공개 책임관 및 담당자</h5>
	    <img src="${path1 }/resources/data/b-1-content.png" class="mr-3" alt="...">
	  </div>
	</div>
	
	<div class="media">
	 <img src="${path1 }/resources/data/a-1.svg" class="mr-3" alt="...">  
	  <div class="media-body">
	    <h5 class="mt-0">공개형태</h5>
	    <p>
◆ 청구공개<br>
- 공공기관이 직무상 작성 또는 취득하여 관리하고 있는 정보를 청구인의 청구에 의하여 공개하는 제도입니다.
- 정부공문서의 열람·복사청구 등<br><br>
◆ 정보공개<br>
- 공공기관이 자발적으로 또는 법령 등의 규정에 의하여 의무적으로 보유하고 있는 정보를 배포 또는 공표 등의 형태로 제공하는 제도입니다.
	    </p>
	    <img src="${path1 }/resources/data/b-1-content2.png" class="mr-3" alt="...">
	  </div>
	</div>

</div>




<footer id="footer">
	<!-- 푸터 부분 인클루드 -->
	<jsp:include page="../../WEB-INF/views/include/footer.jsp"></jsp:include>
</footer> 

</body>
</html>