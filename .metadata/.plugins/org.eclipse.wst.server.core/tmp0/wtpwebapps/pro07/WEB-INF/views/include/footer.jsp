<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*, java.lang.*"%>
<%@ page import="java.text.*, java.net.InetAddress"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />

<footer class="footer-container-fluid " id="footer">
	<div class="in_container">
		<nav class="nav">
			<div class="btn-group dropup">
			  <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
			    유관기관
			  </button>
			  <div class="dropdown-menu">
			    <!-- Dropdown menu links -->
			    <a class="dropdown-item" href="#">우정사업본부</a>
			    <a class="dropdown-item" href="#">국립중앙과학관</a>
			    <a class="dropdown-item" href="#">국립과천과학관</a>
			    <a class="dropdown-item" href="#">국립전파연구원</a>	
			    <a class="dropdown-item" href="#">중앙전파관리소</a>				    
			  </div>
			</div>		
			<div class="btn-group dropup">				  
			  <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
			    관련사이트
			  </button>
			  <div class="dropdown-menu">
			    <!-- Dropdown menu links -->
			    <a class="dropdown-item" href="#">과기정통부 도서관</a>
			    <a class="dropdown-item" href="#">대한민국 과학기술 유공자</a>
			    <a class="dropdown-item" href="#">국가과학기술자문회의</a>
			    <a class="dropdown-item" href="#">사이언스올</a>	
			    <a class="dropdown-item" href="#">국제협력지식마루</a>				    
			  </div>
			</div>		
			<div class="btn-group dropup">				  		
			  <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
			    중앙행정기관
			  </button>
			  <div class="dropdown-menu">
			    <!-- Dropdown menu links -->
			    <a class="dropdown-item" href="#">기획재정부</a>
			    <a class="dropdown-item" href="#">교육부</a>
			    <a class="dropdown-item" href="#">과학기술정보통신부</a>
			    <a class="dropdown-item" href="#">외교부</a>	
			    <a class="dropdown-item" href="#">통일부</a>		
			    <a class="dropdown-item" href="#">법무부</a>	
			    <a class="dropdown-item" href="#">국방부</a>			    
			  </div>
			</div>	  

		</nav>		
		<div class="card" id="footercard">
		<nav class="nav">
		  <a class="nav-link active" href="#">개인정보처리방침</a>
		  <a class="nav-link" href="#">저작권 정책</a>
		  <a class="nav-link" href="#">RSS이용안내</a>
		  <a class="nav-link" href="#">오시는길</a>
		  <a class="nav-link" href="#">RSS과기정통부 도서관</a>
		  
		  <ul class="nav justify-content-end">
		  <li class="nav-item">
		    <a class="nav-link active" href="#"><img alt="" src="${path1 }/resources/data/facebook.svg"></a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="#"><img alt="" src="${path1 }/resources/data/instagram.svg"></a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="#"><img alt="" src="${path1 }/resources/data/twitter.svg"></a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="#"><img alt="" src="${path1 }/resources/data/naverblog.svg"></a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="#"><img alt="" src="${path1 }/resources/data/youtube.svg"></a>
		  </li>
		  </ul>		  
		</nav>		  
				  

		
		  <div class="card-body" id="footercardbody">
			<div class="media">
			  <img src="${path1 }/resources/data/foot_logo.svg" class="mr-3" alt="...">
			  <div class="media-body">
			    <p>
			    (30121) 세종특별자치시 가름로 194(어진동)<br>
대표전화  국번없이 (무료)1335 (정부민원 110)   /   야간 044-202-4180~1(당직실)   /    팩스 02-2110-0671<br><br>
Copyright © Ministry of Science and ICT. All Rights Reserved.
			    </p>
			  </div>
			</div>		  
		  </div>
		</div>	
	</div>
</footer>