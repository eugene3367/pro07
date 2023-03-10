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


<jsp:include page="include/head.jsp"></jsp:include>
<!-- header css -->
<style>

</style>
<!-- header css end -->
</head>
<body>

<header id="header">
	<!-- 헤더 부분 인클루드 -->
	<jsp:include page="include/header.jsp"></jsp:include>
</header>

<div class="container-fluid">
<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="${path1 }/resources/data/main.jpg" class="d-block" alt="...">
    </div>
    <div class="carousel-item">
      <img src="${path1 }/resources/data/main2.png" class="d-block" alt="...">
    </div>
    <div class="carousel-item">
      <img src="${path1 }/resources/data/main3.png" class="d-block" alt="...">
    </div>
  </div>
 <button class="carousel-control-prev" type="button" data-target="#carouselExampleControls" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-target="#carouselExampleControls" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </button>
</div>

<div class="page2">
	<h4 class="page2-text">과기정통부 최근 소식</h4>
	<hr>

	<div class="card-deck">
	  <div class="card">
	    <img src="${path1 }/resources/data/c-1-content.jfif/" class="card-img-top" alt="...">
	    <div class="card-body">
	      <h5 class="card-title">이종호 장관-루마니아 연구혁신디지털부 장관 면담</h5>	
	      <p class="card-text">이종호 과학기술정보통신부 장관이 22일 오전 서울 종로구 세종문화회관에서 세바스티안-이오안 부르두자(Sebastian-Ioan BURDUJA) 루마니아 연구혁신디지털부 장관을 만나 악수하고 있다.</p>
	      <a href="${path1 }/resources/menuc/c-1.jsp" class="btn btn-primary">포토뉴스 더보기</a>	            
	    </div>
	    <div class="card-footer">
	      <small class="text-muted">2022-12-22</small>
	    </div>
	  </div>
	  <div class="card">
	    <img src="${path1 }/resources/data/c-2-content.jfif/" class="card-img-top" alt="...">
	    <div class="card-body">
	      <h5 class="card-title">2023년 과기정통부 업무보고</h5>
	      <a href="${path1 }/resources/menuc/c-2.jsp" class="btn btn-primary">카드뉴스 더보기</a>	     
	    </div>
	    <div class="card-footer">
	      <small class="text-muted">2022-12-21</small>
	    </div>
	  </div>
	  <div class="card">
	    <img src="${path1 }/resources/data/c-2-content2.jfif/" class="card-img-top" alt="...">
	    <div class="card-body">
	      <h5 class="card-title">2021년 추적조사 우수사례 - K 연구용 원자로</h5>	
	      <a href="${path1 }/resources/menuc/c-2.jsp" class="btn btn-primary">카드뉴스 더보기</a>	         
	    </div>
	    <div class="card-footer">
	      <small class="text-muted">2022-12-20</small>
	    </div>
	  </div>
	</div>	  
	
</div>
	  
	
</div>




<footer id="footer">
	<!-- 푸터 부분 인클루드 -->
	<jsp:include page="include/footer.jsp"></jsp:include>
</footer> 


</body>
</html>