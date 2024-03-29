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
<c:import url="/WEB-INF/views/layout/topbar.jsp"></c:import>
<section id="container" class="wrap">
	<h1>COMMUNITY</h1>
		<form action="freeAdd" method="post" enctype="multipart/form-data">
			<br>
		    <div class="mb-3">
			 <label for="categoryNum" class="form-label" style="font-size: 15px; margin-right: 10px;">Category</label>
			 <input type="hidden" class="form-control">
			 <select class="form-control" name="categoryNum" id="">
			 	<option value="#">-----선 택-----</option>
			 	<c:forEach items="${cate}" var="cate">
			 		<option value="${cate.categoryNum}">${cate.categoryName}</option>
			 	</c:forEach>
			 </select>
		    </div>		    
		    <div class="mb-3">
			 <label for="freeTitle" class="form-label" style="font-size: 15px; margin-right: 10px;">Title</label>
			 <input type="text" class="form-control" name="freeTitle" id="freeTitle" placeholder="제목을 입력하세요.">
		    </div>
			익명 여부 <input type="checkbox" id="anonymity" name="anonymity" class="anonymityCheckbox" value="1">

			    <div id="passwordField" class="mb-3">
			        <label for="freePassword" class="form-label">Password</label>
			        <input type="password" class="form-control" id="freePassword" name="freePassword">
			    </div>

				<div class="mb-3" id="writerInfo">
					<label for="name" class="form-label" style="font-size: 15px;">Writer</label>
					<input type="hidden" class="form-control" name="userNo" id="userNo" value="${member.userNo}">
					<input type="text" class="form-control" id="name" value="${member.name}" readonly="readonly">
				</div>
    
			<div class="mb-3">
				<label for="freeContents" class="form-label" style="font-size: 15px;">Contents</label>
				<textarea class="form-control" name="freeContents" id="freeContents" style="height: 200px;" placeholder="내용을 입력하세요."></textarea>
			</div>
				<label for="contents" class="form-label" style="font-size: 15px;">Files</label>
					<div class="mb-3">
						<input type="file" class="form-control" name="files">
					</div>									  
						<button class="btn btn-primary" id="addBtn" style="float: right;">작성완료</button>
		   </form>
	</section>	
	
	<script type="text/javascript">
	    $(document).ready(function () {
	    	$("#passwordField").hide();
	    	
	        if ($("#anonymity").prop("checked")) {
	        	$("#passwordField").toggle($(this).prop("checked"));
	            $("#writerInfo").hide();
	            $("#userNo").val("8");
	        }
	
	        $(".anonymityCheckbox").change(function () {
	            if ($(this).prop("checked")) {
	                $("#writerInfo").hide();
	                $("#userNo").val("8"); 
	                $("#passwordField").toggle($(this).prop("checked"));
	            } else {
	                $("#writerInfo").show();
	                $("#passwordField").hide();

	            }
	        });
	    });
	</script>   
</body>
</html>