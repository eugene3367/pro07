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
	
<div class="content container" id="content">
   	<c:if test="${sid=='admin' }">
	<h2 class="page_tit">회원 정보 수정</h2>
	</c:if>
	<c:if test="${sid!='admin' }">
	<h2 class="page_tit">마이 페이지</h2>
	</c:if>
	<form name="frm1" id="frm1" action="${path1 }/member/update.do" method="post" onsubmit="return joinCheck(this)">
		<table class="table">
			<tbody>
				<tr>
					<th><label for="id">아이디</label></th>
					<td>
						<div class="form-row">
							<input type="text" name="id" id="id" class="form-control" value="${member.id }" readonly required />						
						</div>
					</td>
				</tr>
				<tr>
					<th><label for="pw">비밀번호</label></th>
					<td><input type="password" name="pw" id="pw" class="form-control" value="${member.pw }" required /></td>
				</tr>
				<tr>
					<th><label for="pw2">비밀번호 확인</label></th>
					<td><input type="password" name="pw2" id="pw2" class="form-control" value="${member.pw }" required /></td>
				</tr>
				<tr>
					<th><label for="name">이름</label></th>
					<td><input type="text" name="name" id="name" class="form-control" value="${member.name }" required /></td>
				</tr>
				<tr>
					<th><label for="email">이메일</label></th>
					<td><input type="email" name="email" id="email" class="form-control" value="${member.email }" required /></td>
				</tr>	
				<tr>
					<th><label for="tel">전화번호</label></th>
					<td><input type="tel" name="tel" id="tel" class="form-control" value="${member.tel }" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{3,4}" required /></td>
				</tr>												
				<tr>
					<th><label for="" onclick="findAddr()">주소</label></th>
					<td>
						<input type="text" name="addr1" id="addr1" class="form-control" value="${member.addr1 }" required /><br>
						<input type="text" name="addr2" id="addr2" class="form-control" value="${member.addr2 }" required /><br>
						<input type="text" name="postcode" id="postcode" style="width:160px;float:left;margin-right:20px;" class="form-control" value="${member.postcode }">				
						<button id="isAddrBtn" onclick="findAddr()" class="btn btn-primary">주소 찾기</button>
					</td>
				</tr>
				<tr>
					<th><label for="birth">생년월일</label></th>					
					<td>
					<fmt:parseDate value="${member.birth }" var="birth" pattern="yyyy-MM-dd" />
	      			<span style="display:none"><fmt:formatDate var="br" value="${birth }" pattern="yyyy-MM-dd" /></span>					
					<input type="date" name="birth" id="birth" value="${br }" class="form-control" required /></td>
				</tr>					
			</tbody>
		</table>
		<div class="btn-group">
			<input type="submit" name="submit-btn" class="btn btn-info" value="회원정보수정">
			<input type="reset" name="reset-btn" class="btn btn-info" value="취소">
			<c:if test="${sid=='admin' }">
			<a href="${path1 }/member/delete2.do?id=${member.id }" class="btn btn-primary">직권 강퇴</a>
			</c:if>
			<c:if test="${sid!='admin' }">
			<a href="${path1 }/member/delete.do?id=${sid }" class="btn btn-primary">회원 탈퇴</a>
			</c:if>
			<c:if test="${sid=='admin' }">
			<a href="${path1 }/member/list.do" class="btn btn-primary">회원 목록</a>
			</c:if>			
		</div>
	</form>	
	<script>
	function updateCheck(f){
		if(f.userpw.value!=f.userpw2.value){
			alert("비밀번호와 비밀번호 확인이 서로 다릅니다.");
			return false;
		}
	}
	</script>
	<script>
	function findAddr() {
		new daum.Postcode({
			oncomplete: function(data) {
				console.log(data);
				var roadAddr = data.roadAddress;
				var jibunAddr = data.jibunAddress;
				document.getElementById("postcode").value = data.zonecode;
				if(roadAddr !== '') {
					document.getElementById("addr1").value = roadAddr;				
				} else if(jibunAddr !== ''){
					document.getElementById("addr1").value = jibunAddr;
				}
			}
		}).open();
	}
	</script>
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</div>	

<footer id="footer">
	<!-- 푸터 부분 인클루드 -->
	<jsp:include page="../include/footer.jsp"></jsp:include>
</footer> 

</body>
</html>