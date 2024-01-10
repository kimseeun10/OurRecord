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
	<table class="table">						
		<tr>
			<th style="width:10%;">Title</th>
			<td style="width:85%; text-align: center; font-size: 15px;">${vo.title}</td>
		</tr>
		<tr>
			<th style="width:10%;">Writer</th>
			<td style="width:85%; text-align: center; font-size: 15px;">${vo.name}</td>
		</tr>
		 <tr>
			<th style="width:10%;">Date</th>
			<c:if test="${empty vo.updateDate}">
				<td>${vo.uploadDate}</td>
			</c:if>
			<c:if test="${not empty vo.updateDate}">
				<td>${vo.updateDate} (수정됨)</td>
			</c:if>			
		</tr>
		<tr>
			<th style="width:10%;">Hit</th>
			<td style="width:85%; text-align: center; font-size: 15px;">${vo.hit+1}</td>
		</tr>
	</table>
		<div class="mb-3">
			<label for="contents" class="form-label"></label>
			<div class="card-text" style="height: auto;">${vo.contents}</div>
		</div>
		
	<a href="./noticeUpdate?noticeNo=${vo.noticeNo}">수정</a>		
	<a href="./noticeDelete?noticeNo=${vo.noticeNo}">삭제</a>
</body>
</html>