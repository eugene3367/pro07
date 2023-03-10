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
	<h1>민원신고하기</h1>
	<hr>
	<form name="frm1" id="frm1" action="${path1 }/free/insert.do" method="post">	
		<table class="table">
			<tbody>
				<tr>
					<th>제목</th>
					<td><input type="text" name="title" id="title" placeholder="제목입력" maxlength="98" class="form-control" required autofocus></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="content" id="content" class="form-control" placeholder="내용 입력" rows="8" cols="100" maxlength="800" required></textarea>
      				<script>
      				CKEDITOR.replace('content',	{filebrowserUploadUrl:'${path1 }/free/imageUpload.do'});
      				</script>					
					</td>
				</tr>	
 				<tr>
					<th>작성자</th>
					<td><input type="text" name="id" id="id" class="form-control" value="${sid }" readonly required></td>
				</tr>					
			</tbody>
		</table>
		<div class="btn-group">
			<input type="submit" name="submit-btn" class="btn btn-info" value="글 등록">
			<input type="reset" name="reset-btn" class="btn btn-info" value="취소">
			<a href="${path1 }/free/list.do" class="btn btn-info">목록으로</a>
		</div>
	</form>
</div>
<footer id="footer">
	<!-- 푸터 부분 인클루드 -->
	<jsp:include page="../include/footer.jsp"></jsp:include>
</footer> 

</body>
</html>