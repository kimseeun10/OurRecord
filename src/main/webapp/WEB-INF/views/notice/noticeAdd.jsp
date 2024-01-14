<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<!-- ajax API -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
</head>
<body>
	<h1>공지사항</h1>
		<form action="noticeAdd" method="post" enctype="multipart/form-data">

		    <div class="mb-3">
			 <label for="title" class="form-label" style="font-size: 15px; margin-right: 10px;">Title</label>
			 <input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력하세요.">
		    </div>
			<div class="mb-3">
				<label for="name" class="form-label" style="font-size: 15px;">Writer</label>
				<input type="hidden" class="form-control" name="userNo" id="userNo" value="${member.userNo}">
				<input type="text" class="form-control" id="name" value="${member.name}" readonly="readonly">
			</div>
			<div class="mb-3">
				<label for="contents" class="form-label" style="font-size: 15px;">Contents</label>
				<textarea class="form-control" name="contents" id="contents" style="height: 200px;" placeholder="내용을 입력하세요."></textarea>
			</div>
				<label for="contents" class="form-label" style="font-size: 15px;">Files</label>
					<div class="mb-3">
						<input type="file" class="form-control" name="files">
					</div>									  
						<button class="btn btn-primary" id="addBtn" style="float: right;">작성완료</button>
		   </form>
</body>
</html>