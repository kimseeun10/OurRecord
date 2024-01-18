<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<!-- ajax API -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
		<!-- Header -->
	<nav id="nav" style="background-color: darkgreen;">
		<ul style="height: 50px;">
			<li style="float: left;"><a href="left-sidebar.html">Left Sidebar</a></li>
			<li style="float: left;"><a href="right-sidebar.html">Right Sidebar</a></li>
			<li style="float: left;"><a href="no-sidebar.html">No Sidebar</a></li>
			<a href="/"> <img alt="" src="/resources/images/logo.png" style="width: 150px; height: 60px; margin-left: 20%;"> </a>
			<c:if test="${empty member}">			
				<li style="float: right;"><a href="./member/member">로그인 / 회원가입</a></li>	
				<li style="float: right;"><a href="./notice/noticeList">공지사항</a></li>			
			</c:if>
			<c:if test="${not empty member}">			
				<li style="float: right;"><a href="./member/logout">로그아웃</a></li>	
				<li style="float: right;"><a href="./member/mypage">마이페이지</a></li>	
				<li style="float: right;"><a href="./notice/noticeList">공지사항</a></li>	
			</c:if>
		</ul>
	</nav>
		<div id="header">
			<div class=""> 
				
				<!-- Logo -->
				<div id="logo">
					<h2><a href="#">Our Record</a></h2>
				</div>
				
				<!-- Nav -->
				</div>
		</div>
 
 
 