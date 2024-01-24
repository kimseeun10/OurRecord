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
<style type="text/css">

.ing {
	width: 80%;
	height: 500px;
}

</style>
</head>
<body>
	<c:import url="/WEB-INF/views/layout/topbar.jsp"></c:import>
		<!-- Main -->
			<div class="">
				<div class="row"> 
					
					<!-- Content -->
					<div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
					  <div class="carousel-inner">
					    <div class="carousel-item active" data-bs-interval="10000">
					      <img src="/resources/images/store1.jpg" class="d-block" alt="..." style="width: 1903px;">
					    </div>
					    <div class="carousel-item" data-bs-interval="2000">
					      <img src="/resources/images/store2.jpg" class="d-block" alt="..." style="width: 1903px;">
					    </div>
					    <div class="carousel-item">
					      <img src="/resources/images/store3.jpg" class="d-block" alt="..." style="width: 1903px;">
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
					<div id="" class="ing">
						<h3 style="text-align: center; color: orange; font-weight: 500; ; margin-top: 30px;">현재 모집중인 모임</h3>
						<div style="width: 100%; margin-top: 60px; margin-left: ;">
							<ul class="">														
								<li>
									<div style="width: 20%; float: left; margin-left: 5%;">
										<img src="images/pic06.jpg" alt="" style="width: 250px; height: 250px;">
									</div>									
								</li>
								<li>
									<div style="width: 20%; float: left; margin-left: 5%;">
										<img src="images/pic05.jpg" alt="" style="width: 250px; height: 250px;">
									</div>									
								</li>	
								<li>
									<div style="width: 20%; float: left; margin-left: 5%;">
										<img src="images/pic04.jpg" alt="" style="width: 250px; height: 250px;">
									</div>									
								</li>	
								<li>
									<div style="width: 20%; float: left; margin-left: 5%;">
										<img src="images/pic05.jpg" alt="" style="width: 250px; height: 250px;">
									</div>									
								</li>																						
							</ul>
						</div>
					</div>
				</div>
			</div>

<c:import url="/WEB-INF/views/layout/footer.jsp"></c:import>
</body>
</html>