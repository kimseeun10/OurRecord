<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.wrap {width: 1300px; height:auto; margin-left: 17%; margin-top: 100px;}

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
<c:import url="/WEB-INF/views/layout/topbar.jsp"></c:import>
<section id="container" class="wrap">
	<a href="./freeList" style="text-decoration: none;"><h1>COMMUNITY</h1></a><br>
	<table class="table">		
		<tr>
			<th style="width:10%;">Category</th>
			<td style="width:85%; text-align: center; font-size: 15px;">${vo.categoryName}</td>
		</tr>					
		<tr>
			<th style="width:10%;">Title</th>
			<td style="width:85%; text-align: center; font-size: 15px;">${vo.freeTitle}</td>
		</tr>
		<tr>
			<th style="width:10%;">Writer</th>
			<td style="width:85%; text-align: center; font-size: 15px;">${vo.name}</td>
		</tr>
		 <tr>
			<th style="width:10%;">Date</th>
			<c:if test="${empty vo.updateDate}">
				<td style="width:85%; text-align: center; font-size: 15px;">${vo.uploadDate}</td>
			</c:if>
			<c:if test="${not empty vo.updateDate}">
				<td style="width:85%; text-align: center; font-size: 15px;">${vo.updateDate} (수정됨)</td>
			</c:if>			
		</tr>
		<tr>
			<th style="width:10%;">Hit</th>
			<td style="width:85%; text-align: center; font-size: 15px;">${vo.hit+1}</td>
		</tr>
	</table>
		<div class="mb-5">
			<label for="freeContents" class="form-label"></label>
			<div class="card-text" style="height: auto;">${vo.freeContents}</div>
		</div>
		<br><br>


	<div class="list-group">
	    <a href="./freeDetail?freeNum=${move.last}" class="list-group-item list-group-item-action <c:if test="${empty move.lasttitle}">disabled</c:if>">
	        <span style="font-weight: bold;">이전글</span> │ <c:choose>
	            <c:when test="${empty move.lasttitle}">
	                이전글이 없습니다.
	            </c:when>
	            <c:otherwise>
	                <span style="color: blue;">${move.lasttitle}</span>
	            </c:otherwise>
	        </c:choose>
	    </a>
	    <a href="./freeDetail?freeNum=${move.next}" class="list-group-item list-group-item-action <c:if test="${empty move.nexttitle}">disabled</c:if>">
	        <span style="font-weight: bold;">다음글</span> │ <c:choose>
	            <c:when test="${empty move.nexttitle}">
	                다음글이 없습니다.
	            </c:when>
	            <c:otherwise>
	                <span style="color: blue;">${move.nexttitle}</span>
	            </c:otherwise>
	        </c:choose>
	    </a>
	</div>
	<br><br>
	<a href="./freeUpdate?freeNum=${vo.freeNum}" style="float: right;" class="btn btn-primary">수정</a>		
	<a href="./freeDelete?freeNum=${vo.freeNum}" style="float: right;" class="btn btn-danger">삭제</a>
	</section>
</body>
</html>