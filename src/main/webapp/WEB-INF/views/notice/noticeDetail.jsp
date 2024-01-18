<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.wrap {width: 1200px; height:auto; margin-left: 20%; margin-top: 100px;}
</style>
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
<section id="container" class="wrap">
	<h1>공지사항</h1><br>
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
		<br><br>
	<a href="./noticeUpdate?noticeNo=${vo.noticeNo}">수정</a>		
	<a href="./noticeDelete?noticeNo=${vo.noticeNo}">삭제</a>
	<br><br><br>
	<input type="text" readonly="readonly" value="이전글 ${vo.noticeNo-1}" style="border: none;"><a href="./noticeDetail?noticeNo=${vo.noticeNo-1}">${vo.title}</a>
	<br>
	<input type="text" readonly="readonly" value="다음글 ${vo.noticeNo+1}" style="border: none;"><a href="./noticeDetail?noticeNo=${vo.noticeNo+1}">${vo.title}</a>
	
	</section>
</body>
</html>