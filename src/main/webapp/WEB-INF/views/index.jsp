<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Our Record</title>
<link rel="icon" type="image/x-icon" href="/resources/images/ourRecord.png" />
<c:import url="/WEB-INF/views/layout/headCSS.jsp"></c:import>
</head>
<body>
	<c:import url="/WEB-INF/views/layout/topbar.jsp"></c:import>
		<!-- Main -->
			<div class="container">
				<div class="row"> 
					
					<!-- Content -->
					<div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
					  <div class="carousel-inner">
					    <div class="carousel-item active" data-bs-interval="10000">
					      <img src="/resources/images/read1.jfif" class="d-block w-100" alt="..." style="height: 800px;">
					    </div>
					    <div class="carousel-item" data-bs-interval="2000">
					      <img src="/resources/images/read2.png" class="d-block w-100" alt="...">
					    </div>
					    <div class="carousel-item">
					      <img src="/resources/images/read3.jpg" class="d-block w-100" alt="...">
					    </div>
					  </div>
					  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
					    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
					    <span class="visually-hidden">Previous</span>
					  </button>
					  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
					    <span class="carousel-control-next-icon" aria-hidden="true"></span>
					    <span class="visually-hidden">Next</span>
					  </button>
					</div>
					
					<!-- Sidebar -->
					<div id="sidebar" class="4u">
						<section>
							<header>
							</header>
								<ul class="style"><li>
									<p class="posted">August 11, 2002  |  (10 )  Comments</p>
									<img src="images/pic04.jpg" alt="" width="70" height="70"><p class="text">Nullam non wisi a sem eleifend. Donec mattis libero eget urna. Pellentesque viverra enim.</p>
								</li>
								<li>
									<p class="posted">August 11, 2002  |  (10 )  Comments</p>
									<img src="images/pic05.jpg" alt="" width="70" height="70"><p class="text">Nullam non wisi a sem eleifend. Donec mattis libero eget urna. Pellentesque viverra enim.</p>
								</li>
								<li>
									<p class="posted">August 11, 2002  |  (10 )  Comments</p>
									<img src="images/pic06.jpg" alt="" width="70" height="70"><p class="text">Nullam non wisi a sem eleifend. Donec mattis libero eget urna. Pellentesque viverra enim.</p>
								</li>
							</ul></section>
					</div>
				</div>
			</div>

<c:import url="/WEB-INF/views/layout/footer.jsp"></c:import>
</body>
</html>