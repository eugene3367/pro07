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
	<h1>소관업무</h1>
	<hr>
		
	<div class="media">
	 <img src="${path1 }/resources/data/a-1.svg" class="mr-3" alt="...">  
	  <div class="media-body">
	    <h5 class="mt-0">비전</h5>
	    <p>◆ 과학기술 ICT 혁신으로 열어가는 더불어 잘사는 미래<br></p>
	  </div>
	</div>
	
	<div class="media">
	 <img src="${path1 }/resources/data/a-1.svg" class="mr-3" alt="...">  
	  <div class="media-body">
	    <h5 class="mt-0">목표</h5>
	    <img src="${path1 }/resources/data/f-2-content.png" class="mr-3" alt="...">
	  </div>
	</div>
	
	<div class="media">
	 <img src="${path1 }/resources/data/a-1.svg" class="mr-3" alt="...">  
	  <div class="media-body">
	    <h5 class="mt-0">소관업무</h5>
	    <p>
◆ 과학기술정책의 수립·총괄·조정·평가 및 4차 산업혁명 정책 총괄<br>
◆ 국가연구개발사업 예산 심의·조정 및 성과평가<br>
◆ 과학기술의 연구개발·협력·진흥<br>
◆ 우주기술개발 및 진흥, 원자력 연구·개발·생산·이용<br>
◆ 과학기술인력 양성<br>
◆ 디지털뉴딜을 통한 지능정보화 및 디지털 대전환 선도<br>
◆ 안전하고 빠른 데이터 고속도로 구축<br>
◆ 디지털 미디어 및 온라인 플랫폼 성장기반 마련<br>
◆ 디지털 기반 비대면 산업 육성 및 디지털 포용사회 구현<br>
◆ 디지털 시대의 전파관리 및 우편·예금 및 보험사업<br>
	    </p>
	  </div>
	</div>

</div>

<footer id="footer">
	<!-- 푸터 부분 인클루드 -->
	<jsp:include page="../../WEB-INF/views/include/footer.jsp"></jsp:include>
</footer> 

</body>
</html>