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
	<h1>지원센터</h1>
	<hr>
	<div class="media">
	 <img src="${path1 }/resources/data/a-1.svg" class="mr-3" alt="...">  
	  <div class="media-body">
	    <h5 class="mt-0">제도안내</h5>
	    <p>
1. 우리 부에서는 적극행정 활성화를 위하여 과기정통부 본부 및 소속·산하기관 전 직원이 업무 추진 관련 내용을 자유롭게 컨설팅 받을 수 있는 적극행정 지원센터를 신설하였습니다.<br>
2. 적극행정 지원센터에서는 부서장 결재를 거친 기관장 명의 공문 시행 등의 형식적 요건 없이, 업무추진과정에서 발생하는 단순 문의사항을 포함하여 업무 전체에 대해 업무담당자가 자유롭게 컨설팅을 신청할 수 있도록 하였습니다.<br>
3. 다만, 사안이 복잡하거나 여러 기관이 관련되어 있는 등 정식 절차에 따른 사전컨설팅 신청이 필요하다고 판단되는 경우에는 신청인에게 별도 연락을 할 수 있음을 알려드립니다.<br>
4. 계속해서 신청을 하시려면 하단의 “신청하기＂를 누르시기 바랍니다.<br>
	    </p>
		<a class="btn btn-primary" href="https://www.msit.go.kr/user/ais/adstPubrg.do?sCode=user&mId=23&mPid=12&pageType=agree" role="button">신청하기</a>

	  </div>
	</div>
</div>

<footer id="footer">
	<!-- 푸터 부분 인클루드 -->
	<jsp:include page="../../WEB-INF/views/include/footer.jsp"></jsp:include>
</footer> 

</body>
</html>