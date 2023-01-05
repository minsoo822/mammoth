<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="kr">
<head>

	<title>MAGAZINE</title>
	
	<!-- link -->
	<%@include file="/resources/include/link.jsp"%>
	
	<style type="text/css"> /* magazine style */
		
		#viewMore {
			border: 0.5px solid black;
			background: transparent;
			font-size: 10pt; 
		}
		
		#magazineCard {
			cursor: pointer;
		}
		
		#magazineCard #image:hover img {
		    transform: scale(1.1); 
		}
		
		#magazineCard #image img {
		    transition: 0.5s;
		}
	</style>
	
</head>
<body>

	<!-- header  -->
	<%@include file="/resources/include/header.jsp"%>
	
	<form id="mainForm">
	
		<!-- section --> <!-- MAGAZINE-->
		<div class="container" style="margin-top: 100px; margin-bottom: 150px;">
			<div class="row"style="margin: 0 30px 50px 40px;">
				<div class="col">
					<span>MAGAZINE</span> 
				</div>
			</div>
			<div class="row"style="margin: 20px 30px 80px 30px;">
				<div class="col m-3 text-center" id="magazineCard" onclick="location.href='https://www.arenakorea.com/arena/article/51706';">
					<div class="row">
						<div class="col p-0" id="image" style="overflow: hidden;">
							<img src="/resources/images/magazine/magazine1.jpg" style="width: 100%;">
						</div>
					</div>
					<div class="row">
						<div class="col mt-3">
							<span style="font-size: 13pt; font-weight: bold;">강태오의 향기</span>
						</div>
					</div>
					<div class="row">
						<div class="col mb-3">
							<span style="font-size: 10pt;">ARENA,AUGUST,2022</span>
						</div>
					</div>
					<div class="row">
						<div class="col p-0">
							<button type="btn btn-primary" style="width: 100%; height: 40px;" id="viewMore">VIEW MORE</button>
						</div>
					</div>
				</div>
				<div class="col m-3 text-center" id="magazineCard" onclick="location.href='https://www.thestar.kr/board/star/4759';">
					<div class="row">
						<div class="col p-0" id="image" style="overflow: hidden;">
							<img src="/resources/images/magazine/magazine2.jpg" style="width: 100%;">
						</div>
					</div>
					<div class="row">
						<div class="col mt-3">
							<span style="font-size: 13pt; font-weight: bold;">청량미 끝판왕 하성운의 향수</span>
						</div>
					</div>
					<div class="row">
						<div class="col mb-3">
							<span style="font-size: 10pt;">THESTAR,MAY,2022</span>
						</div>
					</div>
					<div class="row">
						<div class="col p-0">
							<button type="btn btn-primary" style="width: 100%; height: 40px;" id="viewMore">VIEW MORE</button>
						</div>
					</div>
				</div>
				<div class="col m-3 text-center" id="magazineCard" onclick="location.href='https://www.thestar.kr/board/star/4759';">
					<div class="row">
						<div class="col p-0" id="image" style="overflow: hidden;">
							<img src="/resources/images/magazine/magazine3.jpg" style="width: 100%;">
						</div>
					</div>
					<div class="row">
						<div class="col mt-3">
							<span style="font-size: 13pt; font-weight: bold;">'청량미 끝판왕' 하성운의 향수</span>
						</div>
					</div>
					<div class="row">
						<div class="col mb-3">
							<span style="font-size: 10pt;">THESTAR,MAY,2022</span>
						</div>
					</div>
					<div class="row">
						<div class="col p-0">
							<button type="btn btn-primary" style="width: 100%; height: 40px;" id="viewMore">VIEW MORE</button>
						</div>
					</div>
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
