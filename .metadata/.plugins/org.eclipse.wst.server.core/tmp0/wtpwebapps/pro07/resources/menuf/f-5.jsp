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
	<h1>오시는길</h1>
	<hr>
	
	<div class="media">
	  <div class="media-body">
	  	<img src="${path1 }/resources/data/local.svg" class="mr-3" alt="...">  	  
	   	<h5 class="mt-0">(30121) 세종특별자치시 가름로 194(어진동)</h5>
	    <img src="${path1 }/resources/data/f-5.svg" class="mr-3" alt="...">  	    
	    <p>대표전화 : 국번없이 (무료)1335(정부민원 110)</p>
	  </div>
	</div>	
		
	<div class="media">
	 <img src="${path1 }/resources/data/a-1.svg" class="mr-3" alt="...">  
	  <div class="media-body">
	    <h5 class="mt-0">기차를 이용하실 경우</h5>
	    <p>
◆ 대전역(예상 소요시간 : 약 85분)<br>
대전역 BRT 버스정류장 승차(B1번)→ 정부세종청사남측 정류장 하차→ 청사까지 약 702m 이동<br>
◆ 오송역(예상 소요시간 : 약 45분)<br>
오송역 BRT 버스정류장 승차(B1번, B2번, B3번)→ 정부세종청사남측 정류장 하차→ 청사까지 약 754m 이동<br>
◆ 조치원역(예상 소요시간 : 약 50분)<br>
- 조치원역 버스정류장 승차(601번, 991번, 500번, 550번, 551번, 502번)→ 정부세종청사남측 정류장 하차→ 청사까지 약 660m 이동<br>
- 조치원역 버스정류장 승차(1000번)→ 어진중학교(가재마을9단지) 정류장 하차→ 청사까지 약 640m 이동
</p>
	  </div>
	</div>
	
	<div class="media">
	 <div><img src="${path1 }/resources/data/a-1.svg" class="mr-3" alt="..."></div>  
	  <div class="media-body">
	    <h5 class="mt-0">시외버스를 이용하실 경우</h5>
	    <p>
◆ 세종고속시외버스터미널 (예상 소요시간 : 약 30분)<br>
- 세종터미널 정류장 승차(991번, B0번, B2번)→ 정부세종청사남측 정류장 하차→ 청사까지 약 754m 이동
- 세종터미널 정류장 승차(1000번, 430번) → 다정동(대성고등학교) 정류 하차→ 청사까지 약 820m 이동</p>
	  </div>
	</div>	
	


</div>

<footer id="footer">
	<!-- 푸터 부분 인클루드 -->
	<jsp:include page="../../WEB-INF/views/include/footer.jsp"></jsp:include>
</footer> 

</body>
</html>