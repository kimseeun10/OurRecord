<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.wrap {width: 1500px; height:auto; margin-left: 15%; margin-top: 100px;}

.wrap a {text-decoration: none;}
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
	<h1>COMMUNITY</h1>
		<table class="table" style="text-align: center; width:1300px; margin: 20px; ">
			<thead style="height: 70px;">
				<tr>
					<th style="width: 7%;">번호</th>
					<th style="width: 10%;">카테고리</th>
					<th style="width: 50%;">제목</th>
					<th style="width: 8%">작성자</th>
					<th style="width: 8%">작성일</th>
					<th style="width: 7%">조회수</th>
				</tr>
		</thead>
		<tbody style="height: 35px;">
			<c:forEach items="${list}" var="vo">
				<tr>
					<td><a href="./freeDetail?freeNum=${vo.freeNum}" style="color: #697a8d;">${vo.freeNum}</a></td>
					<td><a href="./freeDetail?freeNum=${vo.freeNum}" style="color: #697a8d;">${vo.freeTitle}</a></td>
					<td>${vo.categoryName}</td>
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
	
			<div>
							<!-- 검색 -->
							<div class="input-group mb-3">
								<form action="./noticeList" method="get" class="d-flex align-items-center" id="frm">
									<div class="input-group" style="width: 120px;">
										<input type="hidden" value="${pager.page}" id="page" name="page">
										<select name="kind" id="k" class="form-select"
											data-kind="${pager.kind}" aria-label="Default select example" style="width: 50px; margin-left: 20px; border-radius: 5px;">
											<option class="kind" value="title">제목</option>
											<option class="kind" value="contents">내용</option>
										</select>
									</div> 
									<input class="form-control me-2" type="text" name="search" value="${pager.search}" style="border-radius: 5px; margin-left: 7px; width: 150px;"> 
									<button class="btn" type="submit" style="border-radius: 5px; border-color: #d9dee3;"><img alt="" src="/resources/images/searchIcon.svg"></button>
								</form>
							</div>
						</div>
    					<div style="margin-right: 250px;">
    						<!-- 페이징 -->
							<nav aria-label="Page navigation example">
								<ul class="pagination justify-content-center">
									<c:if test="${pager.pre}">
									<li class="page-item ${pager.pre?'':'disabled'}"><a
										class="page-link"
										href="./freeList?page=${pager.startNum - 1}&kind=${pager.kind}&search=${pager.search}"
										aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
									</a></li>
									</c:if>
									<c:forEach begin="${pager.startNum}" end="${pager.lastNum}"
										var="i">
										<li class="page-item"><a class="page-link"
											href="./freeList?page=${i}&kind=${pager.kind}&search=${pager.search}">${i}</a></li>
									</c:forEach>
									<c:if test="${pager.next}">
										<li class="page-item"><a class="page-link"
											href="./freeList?page=${pager.lastNum + 1}&kind=${pager.kind}&search=${pager.search}"
											aria-label="Next"> <span aria-hidden="true">&raquo;</span>
										</a></li>
									</c:if>
								</ul>
							</nav>
    					</div>
	
	<a href="./freeAdd" class="btn btn-primary" style="float: right; margin-right: 16%;">글 작성</a>
</section>	
</body>
</html>