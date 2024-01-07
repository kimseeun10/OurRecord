<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!-- Header -->
	<nav id="nav" style="background-color: grey;">
		<ul style="height: 70px;">
			<li style="float: left;"><a href="left-sidebar.html">Left Sidebar</a></li>
			<li style="float: left;"><a href="right-sidebar.html">Right Sidebar</a></li>
			<li style="float: left;"><a href="no-sidebar.html">No Sidebar</a></li>
			<li class=""><a href="/"> <img alt="" src="/resources/images/logo.png" style="width: 150px; height: 70px; margin-left: 300px;"> </a></li>
			
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
			<div class="container"> 
				
				<!-- Logo -->
				<div id="logo">
					<h1><a href="#">Our Record</a></h1>
					<span>Design by TEMPLATED</span>
				</div>
				
				<!-- Nav -->
				</div>
		</div>
 