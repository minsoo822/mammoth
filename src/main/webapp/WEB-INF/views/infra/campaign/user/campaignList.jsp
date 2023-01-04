<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="kr">
<head>

	<title>CAMPAIGN</title>
	
	<!-- link -->
	<%@include file="/resources/include/link.jsp"%>
	
	<style type="text/css"> /* campaign style */
		.carousel-indicators [data-bs-target] {
			background-color: black;
		}
		
		p {
			margin: 0;
		}
	</style>
	
</head>
<body>

	<!-- header  -->
	<%@include file="/resources/include/header.jsp"%>
	
	<form id="mainForm">
	
		<!-- section --> <!-- CAMPAIGN-->
		<div class="container" style="margin-top: 100px; margin-bottom: 150px;">
			<div class="row"style="margin: 0 30px 50px 40px;">
				<div class="col">
					<span>CAMPAIGN</span> 
				</div>
			</div>
			<div class="row"style="margin: 20px 30px 80px 30px;">
				<!-- campaign carousel -->
				<div id="carouselExampleCaptions" class="carousel slide">
				  <div class="carousel-indicators">
				    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
				    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
				    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
				  </div>
				  <div class="carousel-inner" style="height: 400px;">
				    <div class="carousel-item active" style="height: 100%; background: #f8f8f8;">
				  		<img src="/resources/images/campaign/캠페인1.jpg" class="d-block h-100">
					  	<div class="carousel-caption d-flex d-md-block text-start" style="color: black; width: 600px; position: relative; bottom: 300px; left: 620px;">
					    	<h4><b>ATTRACTION IN THE UNCONSCIOUS</b></h4>
					   	 	<p style="margin-top: 40px; font-size: 12pt;">무의식 속 이끌림</p>
					    	<p style="font-size: 12pt;"><em>Velvet Hug</em></p>
					  	</div>
				    </div>
				    <div class="carousel-item" style="height: 100%; background: #f8f8f8;">
				  		<img src="/resources/images/campaign/캠페인2.jpg" class="d-block h-100">
					  	<div class="carousel-caption d-flex d-md-block text-start" style="color: black; width: 600px; position: relative; bottom: 300px; left: 590px;">
					    	<h4><b>FORMENT X ABSOLUT</b></h4>
					   	 	<p style="margin-top: 40px; font-size: 12pt;">Creative . Sensual . Original</p>
					    	<p style="font-size: 12pt;"><em>2022 Collaboration</em></p>
					  	</div>
				    </div>
				    <div class="carousel-item" style="height: 100%; background: #f8f8f8;">
				  		<img src="/resources/images/campaign/캠페인3.jpg" class="d-block h-100">
					  	<div class="carousel-caption d-flex d-md-block text-start" style="color: black; width: 600px; position: relative; bottom: 300px; left: 590px;">
					    	<h4><b>FORMENT X 강태오</b></h4>
					   	 	<p style="margin-top: 40px; font-size: 12pt;">강태오의 가장 빛나는 순간</p>
					    	<p style="font-size: 12pt;"><em>Cotton Hug, Cotton Dear Night</em></p>
					  	</div>
				    </div>
				  </div>
				  <button class="carousel-control-prev" style="width:80px;" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
				    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
				    <span class="visually-hidden">Previous</span>
				  </button>
				  <button class="carousel-control-next" style="width:80px;" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
				    <span class="carousel-control-next-icon" aria-hidden="true"></span>
				    <span class="visually-hidden">Next</span>
				  </button>
				</div>
			</div>
		</div>
		
	  </form>
	
	<!-- footer -->
	<%@include file="/resources/include/footer.jsp"%>
	
	<!--  스크립트  -->		
	<%@include file="/resources/include/script.jsp"%>
	
	<script>
		
	</script>	
</body>
</html>
