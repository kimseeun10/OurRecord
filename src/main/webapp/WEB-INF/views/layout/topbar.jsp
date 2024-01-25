<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OUR RECORD</title>
<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<!-- ajax API -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
</head>
<body>
<nav id="navbar-example2" class="navbar bg-body-tertiary px-3 mb-3">
  <a class="navbar-brand" href="/"> <img alt="" src="/resources/images/logo.png" style="width: 140px; height: 55px;"> </a>
  <ul class="nav nav-pills">
    <li class="nav-item">
      <a class="nav-link" href="/free/freeList">커뮤니티</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/notice/noticeList">공지사항</a>
    </li>
  <c:if test="${empty member}">	  
      <a class="nav-link"  href="/member/member" >로그인 / 회원가입</a>
  </c:if>
  <c:if test="${not empty member}">	  
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">${member.name} 님</a>
      <ul class="dropdown-menu">
        <li><a class="dropdown-item" href="/member/mypage">마이페이지</a></li>
        <li><hr class="dropdown-divider"></li>
        <li><a class="dropdown-item" href="/member/logout">로그아웃</a></li>
      </ul>
    </li>
  </c:if>      
  </ul>
</nav>
 
</body>
</html>
 
 