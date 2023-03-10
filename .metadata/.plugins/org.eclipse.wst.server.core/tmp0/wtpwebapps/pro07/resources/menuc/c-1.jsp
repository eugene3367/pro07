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
	<h1>포토뉴스</h1>
	<hr>
	<div class="card-deck">
	  <div class="card">
	    <img src="${path1 }/resources/data/c-1-content.jfif/" class="card-img-top" alt="...">
	    <div class="card-body">
	      <h5 class="card-title">이종호 장관-루마니아 연구혁신디지털부 장관 면담</h5>	      
	    </div>
	    <div class="card-footer">
	      <small class="text-muted">2022-12-22</small>
	    </div>
	  </div>
	  <div class="card">
	    <img src="${path1 }/resources/data/c-1-content2.jfif/" class="card-img-top" alt="...">
	    <div class="card-body">
	      <h5 class="card-title">과학기술유공자 초청 간담회</h5>
	    </div>
	    <div class="card-footer">
	      <small class="text-muted">2022-12-21</small>
	    </div>
	  </div>
	  <div class="card">
	    <img src="${path1 }/resources/data/c-1-content3.jfif/" class="card-img-top" alt="...">
	    <div class="card-body">
	      <h5 class="card-title">5G 특화망 융합서비스 성과공유회</h5>	      
	    </div>
	    <div class="card-footer">
	      <small class="text-muted">2022-12-20</small>
	    </div>
	  </div>
	</div>	  
	  
	<div class="card-deck">	  	  
	  <div class="card">
	    <img src="${path1 }/resources/data/c-1-content4.jfif/" class="card-img-top" alt="...">
	    <div class="card-body">
	      <h5 class="card-title">제22회 국가우주위원회 관련 브리핑회</h5>	      
	    </div>
	    <div class="card-footer">
	      <small class="text-muted">2022-12-20</small>
	    </div>
	  </div>
	  
	  <div class="card">
	    <img src="${path1 }/resources/data/c-1-content5.jfif/" class="card-img-top" alt="...">
	    <div class="card-body">
	      <h5 class="card-title">정보통신기술(ICT) 수출 활성화를 위한 간담회</h5>	      
	    </div>
	    <div class="card-footer">
	      <small class="text-muted">2022-12-20</small>
	    </div>
	  </div>
	  
	  <div class="card">
	    <img src="${path1 }/resources/data/c-1-content6.jfif/" class="card-img-top" alt="...">
	    <div class="card-body">
	      <h5 class="card-title">과학기술정보통신부 기자간담회</h5>	      
	    </div>
	    <div class="card-footer">
	      <small class="text-muted">2022-12-19</small>
	    </div>
	  </div>	  	  
	  	  
	</div>
</div>

<footer id="footer">
	<!-- 푸터 부분 인클루드 -->
	<jsp:include page="../../WEB-INF/views/include/footer.jsp"></jsp:include>
</footer> 

</body>
</html>