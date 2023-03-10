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
	<h2 class="title">회원가입</h2>
	<form name="frm1" id="frm1" action="${path1 }/member/insert.do" method="post" onsubmit="return joinCheck(this)">
		<table class="table">
			<tbody>
				<tr>
					<th>아이디</th>
					<td>
						<div class="form-row">
							<input type="text" name="id" id="id" placeholder="아이디 입력" class="form-control" autofocus required />
							<input type="button" class="btn btn-primary" id="idCkBtn" value="아이디 중복 확인" onclick="idCheck()">
							<input type="hidden" name="idck" id="idck" value="no">
							<c:if test="${empty qid }">
								<p id="msg" style="padding-left:0.5rem">아직 아이디 중복 체크를 하지 않으셨습니다.</p>
							</c:if>
							<c:if test="${not empty qid }">
								<p id="msg" style="padding-left:0.5rem">아이디 중복 체크후 수정하였습니다.</p>
							</c:if>							
						</div>
					</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="pw" id="pw" placeholder="비밀번호 입력" class="form-control" required /></td>
				</tr>
				<tr>
					<th>비밀번호 확인</th>
					<td><input type="password" name="pw2" id="pw2" placeholder="비밀번호 입력" class="form-control" required /></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" name="name" id="name" placeholder="이름 입력" class="form-control" required /></td>
				</tr>
				<tr>
					<th>생년월일</th>
					<td><input type="date" name="birth" id="birth" placeholder="생년월일 입력" class="form-control" required /></td>
				</tr>	
				<tr>
					<th>이메일</th>
					<td><input type="email" name="email" id="email" placeholder="이메일 입력" class="form-control" required /></td>
				</tr>	
				<tr>
					<th>전화번호</th>
					<td><input type="tel" name="tel" id="tel" placeholder="전화번호 입력" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{3,4}" maxlength="19" class="form-control" required /></td>
				</tr>												
				<tr>
					<th>주소</th>
					<td><input type="text" name="addr1" id="addr1" placeholder="기본 주소 입력" class="form-control" required /><br>
					<input type="text" name="addr2" id="addr2" placeholder="상세 주소 입력" class="form-control" required /><br>
					<input type="text" name="postcode" id="postcode" style="width:160px;float:left;margin-right:20px;" placeholder="우편번호" class="form-control">				
					<button id="isAddrBtn" onclick="findAddr()" class="btn btn-primary">우편번호 검색</button>
					<input type="hidden" name="addrck" id="addrck" value="no"/>
					</td>
				</tr>
			</tbody>
		</table>
		<div class="btn-group">
			<input type="submit" name="submit-btn" class="btn btn-info" value="회원가입">
			<input type="reset" name="reset-btn" class="btn btn-info" value="취소">
		</div>
	</form>	
	<script>
	$(document).ready(function(){
		$("#id").keyup(function(){
			$("#idck").val("no");
			if($(this).val()!=""){
				$("#msg").html("<strong>아이디 입력중입니다.</strong>");
			} else {
				$("#msg").html("아직 아이디 중복 체크를 하지 않으셨습니다.");
			}
		});
	});
	</script>
	<script>
	function idCheck(){
		if($("#id").val()==""){
			alert("아이디를 입력하지 않으셨습니다.");
			$("#id").focus();
			return;
		} 
		var params = {	id : $("#id").val()	} //전송되어질 데이터를 객체로 묶음
		$.ajax({
			url:"${path1 }/member/idCheck.do",	//아이디가 전송되어질 곳
			type:"post",		//전송방식
			dataType:"json",	//데이터 반환 방식
			data:params,		//전송방식이 post인 경우 객체로 묶어서 전송
			success:function(result){
				console.log(result.result);
				var idChk = result.result;	//true 또는 false를 받음
				if(idChk==false){	//사용할 수 없는 아이디
					$("#idck").val("no");
					$("#msg").html("<strong style='color:red'>기존에 사용되고 있는 아이디 입니다. 다시 입력하시기 바랍니다.</strong>");
					$("#id").focus();
				} else if(idChk==true){	//사용 가능한 아이디
					$("#idck").val("yes");
					$("#msg").html("<strong style='color:blue'>사용가능한 아이디 입니다.</strong>");
				} else if(idck==""){
					$("#msg").html("<strong>아이디가 확인되지 않았습니다. 다시 시도해주시기 바랍니다.</strong>");
				}
			}
		});
	}
	function joinCheck(f){
		if(f.pw.value!=f.pw2.value){
			alert("비밀번호와 비밀번호 확인이 서로 다릅니다.");
			f.pw.focus();
			return false;
		}
		if(f.idck.value!="yes"){
			alert("아이디 중복 체크를 하지 않으셨습니다.");
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
				document.getElementById("addr2").focus();
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