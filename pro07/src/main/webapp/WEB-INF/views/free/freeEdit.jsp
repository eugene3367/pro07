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
<script type="text/javascript" src="${path1 }/resources/ckeditor/ckeditor.js"></script>
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
	
<div class="container">
	<h1>민원신고 수정하기</h1>
	<hr>
	<form name="frm1" id="frm1" action="${path1 }/free/edit.do" method="post">
		<table class="table">
			<tbody>
				<tr>
					<th style="background-color:#dcdcdc">글 제목</th>
					<td>
						<input type="hidden" name="bno" id="bno" value="${dto.bno }" required/>
						<input type="text" name="title" id="title" placeholder="제목 입력" class="form-control" value="${dto.title }" maxlength="98" autofocus required />						
					</td>
				</tr>
				<tr>
					<th style="background-color:#dcdcdc">글 내용</th>
					<td><textarea cols="8" cols="100" name="content" id="content" class="form-control" required >${dto.content }</textarea></td>
				</tr>
				<tr>
					<th>작성자</th>
					<td><input type="text" name="author" id="author" value="admin" class="form-control" readonly>
      				<script>
      				CKEDITOR.replace('content',	{filebrowserUploadUrl:'${path1 }/free/imageUpload.do'});
      				</script>					
					</td>
				</tr>
			</tbody>
		</table>
		<div class="btn-group">
			<input type="submit" name="submit-btn" class="btn btn-info" value="글 수정">
			<input type="reset" name="reset-btn" class="btn btn-info" value="취소">
			<a href="${path1 }/free/list.do" class="btn btn-danger">목록으로</a>
		</div>
	</form>	
</div>
<footer id="footer">
	<!-- 푸터 부분 인클루드 -->
	<jsp:include page="../include/footer.jsp"></jsp:include>
</footer> 

</body>
</html>