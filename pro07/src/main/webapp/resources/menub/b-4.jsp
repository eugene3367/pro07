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
	<h1>청렴도 측정 결과</h1>
	<hr>
	<div class="media">
	 <img src="${path1 }/resources/data/a-1.svg" class="mr-3" alt="...">  
	  <div class="media-body">
	    <h5 class="mt-0">2021년도 부패방지 시책평가 결과(권익위, '22.1.18.) : 3등급</h5>
	  </div>
	</div>	
	
	<div class="media">
	 <img src="${path1 }/resources/data/a-1.svg" class="mr-3" alt="...">  
	  <div class="media-body">
	    <h5 class="mt-0">2021년도 청렴도 측정 결과(권익위, ‘21.12. 8.)</h5>	    
	    <img src="${path1 }/resources/data/b-4-content.png/" class="mr-3" alt="...">	   
	    <p>
◆ 과기정통부 청렴도 결과(등급)
	    </p>		    
	    <img src="${path1 }/resources/data/b-4-content2.png/" class="mr-3" alt="...">		     
	  </div>
	</div>	
</div>

<footer id="footer">
	<!-- 푸터 부분 인클루드 -->
	<jsp:include page="../../WEB-INF/views/include/footer.jsp"></jsp:include>
</footer> 

</body>
</html>