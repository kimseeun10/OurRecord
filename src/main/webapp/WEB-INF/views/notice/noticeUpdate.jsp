<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>공지사항</h1>
		<form action="noticeUpdate" method="post" enctype="multipart/form-data">
			<input type="hidden" id="noticeNo" name="noticeNo" value="${vo.noticeNo}">
		    <div class="mb-3">
			 <label for="title" class="form-label" style="font-size: 15px; margin-right: 10px;">Title</label>
			 <input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력하세요." value="${vo.title}">
		    </div>
			<div class="mb-3">
				<label for="name" class="form-label" style="font-size: 15px;">Writer</label>
				<input type="hidden" class="form-control" name="userNo" id="userNo" value="${member.userNo}">
				<input type="text" class="form-control" id="name" value="${member.name}" readonly="readonly">
			</div>
			<div class="mb-3">
				<label for="contents" class="form-label" style="font-size: 15px;">Contents</label>
				<textarea class="form-control" name="contents" id="contents" style="height: 200px;">${vo.contents}</textarea>
			</div>
				<label for="contents" class="form-label" style="font-size: 15px;">Files</label>
					<div class="mb-3">
						<input type="file" class="form-control" name="files">
					</div>									  
						<button class="btn btn-primary" id="updateBtn" style="float: right;">작성완료</button>
		   </form>
</body>
</html>