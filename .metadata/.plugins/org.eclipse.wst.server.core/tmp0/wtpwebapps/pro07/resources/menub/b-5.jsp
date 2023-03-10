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
	<h1>공공데이터 개요</h1>
	<hr>
	<div class="media">
	 <img src="${path1 }/resources/data/a-1.svg" class="mr-3" alt="...">  
	  <div class="media-body">
	    <h5 class="mt-0">공공데이터 정의</h5>
	    <p>
공공기관이 직무상 전자적 방식으로 처리 · 작성 · 취득해 관리하고 있는, 부호 · 문자 · 음성 · 음향 · 영상 등으로 표현된 모든 종류의 데이터
	    </p>	    
	  </div>
	</div>	
	
	<div class="media">
	 <img src="${path1 }/resources/data/a-1.svg" class="mr-3" alt="...">  
	  <div class="media-body">
	    <h5 class="mt-0">제공의 의미</h5>	    	   
	    <p>
공공기관이 이용자에 ① 정보를 재활용할 수 있도록 제공하고, 제공받은 정보를 ② 영리· 비영리적으로 이용할 권한을 부여하는 것
	    </p>		         
	  </div>
	</div>	
	
	<div class="media">
	 <img src="${path1 }/resources/data/a-1.svg" class="mr-3" alt="...">  
	  <div class="media-body">
	    <h5 class="mt-0">정보공개와 공공데이터 개방의 차이</h5>	    
	    <img src="${path1 }/resources/data/b-5-content.png/" class="mr-3" alt="...">
	    <a class="btn btn-primary" href="https://www.msit.go.kr/ssm/file/contentsFileDown.do?seqEncpt=11" role="button">공공데이터 관련 법</a>	   	         
	  </div>
	</div>	
	<br>	
	
	<div class="media">
	 <img src="${path1 }/resources/data/a-1.svg" class="mr-3" alt="...">  
	  <div class="media-body">
	    <h5 class="mt-0">공공데이터제공책임관 및 실무담당자 지정</h5>	   
	    <img src="${path1 }/resources/data/b-5-content2.png/" class="mr-3" alt="...">	   
	         
	  </div>
	</div>		
</div>

<footer id="footer">
	<!-- 푸터 부분 인클루드 -->
	<jsp:include page="../../WEB-INF/views/include/footer.jsp"></jsp:include>
</footer> 

</body>
</html>