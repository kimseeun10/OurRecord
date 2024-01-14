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
		<table class="table" style="text-align: center; width:auto; margin: 20px; ">
			<thead style="height: 70px;">
				<tr>
					<th style="width: 7%;">번호</th>
					<th style="width: 55%;">제목</th>
					<th style="width: 10%">작성자</th>
					<th style="width: 10%">작성일</th>
					<th style="width: 8%">조회수</th>
				</tr>
		</thead>
		<tbody style="height: 35px;">
			<c:forEach items="${list}" var="vo">
				<tr>
					<td><a href="./noticeDetail?noticeNo=${vo.noticeNo}" style="color: #697a8d;">${vo.noticeNo}</a></td>
					<td><a href="./noticeDetail?noticeNo=${vo.noticeNo}" style="color: #697a8d;">${vo.title}</a></td>
					<td>${vo.name}</td>
					<c:if test="${empty vo.updateDate}">
						<td>${vo.uploadDate}</td>
					</c:if>
					<c:if test="${not empty vo.updateDate}">
						<td>${vo.updateDate}</td>
					</c:if>
					<td>${vo.hit}</td>
				</tr>
			</c:forEach>
		</tbody>

	</table>
	
	<a href="./noticeAdd">글 작성</a>
</body>
</html>