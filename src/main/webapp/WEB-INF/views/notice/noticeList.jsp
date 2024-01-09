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
		<table class="table" style="text-align: center; width:auto; margin: 20px; ">
			<thead style="height: 70px;">
				<tr>
					<th style="width: 7%;">번호</th>
					<th style="width: 10%;">분류</th>
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
					<td>${vo.important}</td>
					<td><a href="./noticeDetail?noticeNo=${vo.noticeNo}" style="color: #697a8d;">${vo.title}</a></td>
					<td>${vo.empName}</td>
					<td>${vo.createDate}</td>
					<td>${vo.hit}</td>
				</tr>
			</c:forEach>
		</tbody>

	</table>
</body>
</html>