<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="kr">
<head>

	<title>FORMENT</title>
	
	<!-- link -->
	<%@include file="/resources/include/link.jsp"%>
	
	<style type="text/css"> /* productList style */
	
		#productCard {
			cursor: pointer;
		}
	
	</style>
	<style type="text/css"> /* basket modal style */
	    .modal-content {
		    width: 600px;
		    pointer-events: auto;
		    background-color: white;
		    border: 1px solid black;
		    border-radius: 0rem;
		    outline: 0;
		    box-sizing: content-box;
		    font-size: 12pt;
		}
		.modal-header {
			background: #495164;
			border-radius: 0rem;
			color: white;
			height: 45px;
		}
	</style>
	<style type="text/css"> /* 장바구니 버튼 */
		.basket {
			border-radius: 50%;
			height: 35px;
			width: 35px;
			position: relative;
			bottom: 365px;
			left: 225px;
		}
	</style>
	<style type="text/css"> /* 상품 태그 style css */
		.bombTag, .newTag{
			background: #a92517;
			color: white;
			padding: 5px 8px 5px 8px;
			position: relative;
			left: -39px;
			bottom: 119px;
			font-size: 9pt;
		}
		
		.limitedTag, .bestTag{
			background: black;
			color: white;
			padding: 5px 8px 5px 8px;
			position: relative;
			left: -39px;
			bottom: 119px;
			font-size: 9pt;
		}
    </style>
</head>
<body>
			<%-- <br>sessSeq: <c:out value="${sessSeq }"/><br>
				sessName: <c:out value="${sessName }"/><br>
				sessId: <c:out value="${sessId }"/><br>
				sessAdmin: <c:out value="${sessAdmin }"/><br> --%>
	<form action="" method="post" id="mainForm">
	<input type="hidden" name="mmSeq" id="mmSeq" value="${sessSeq }">
	<!-- header  -->
	<%@include file="/resources/include/header.jsp"%>
	
	<!-- main carousel -->
	<div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
	  <div class="carousel-inner">
	    <div class="carousel-item">
	      <img src="/resources/images/로고&배너/1.jpg" class="d-block w-100" alt="...">
	    </div>
	    <div class="carousel-item">
	      <img src="/resources/images/로고&배너/2.jpg" class="d-block w-100" alt="...">
	    </div>
	    <div class="carousel-item active">
	      <img src="/resources/images/로고&배너/3.jpg" class="d-block w-100" alt="...">
	    </div>
	    <div class="carousel-item">
	      <img src="/resources/images/로고&배너/4.jpg" class="d-block w-100" alt="...">
	    </div>
	  </div>
	  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
	    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Previous</span>
	  </button>
	  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
	    <span class="carousel-control-next-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Next</span>
	  </button>
	</div>
	
	<!-- section1 --> <!-- MD's PICK -->
	<div class="container" style="margin-top: 100px; margin-bottom: 150px;">
		<div class="row" style="margin: 0 30px 0 30px;">
			<div class="col">
				<span><b>MD's PICK</b></span> 
			</div>
		</div>
		<div class="row" style="margin: 20px 30px 50px 30px;">
			<div class="col col-3" style="font-size: 10pt;" id="productCard" onclick="location.href='/product/productView'">
				<div class="row">
					<div class="col">
						<img src="/resources/images/main/mainProduct8.jpg" style="height: 100%; width: 100%;">
					</div>
				</div>
				<div class="row mt-3">
					<div class="col">
						<span>포맨트 시그니처 퍼퓸 코튼허그 에디션 '첫 눈'</span>
					</div>
				</div>
				<div class="row  mt-2">
					<div class="col col-4" style="width: 50px; color: red;">
					20%
					</div>
					<div class="col col-4" style="width: 100px;">
					<b>49,000원</b>
					</div>
					<div class="col col-4" style="width: 100px;">
					<s>61,000원</s>
					</div>
				</div>
				<div class="row mt-1">
					<div class="col">
						<span><i class="fa-solid fa-star"></i>4.9(378)</span>
					</div>
				</div>
				<a><img src="/resources/images/ico_cart.svg" class="basket" onclick="javascript:event.stopPropagation(); basket()"></a>
				<span class="bombTag">주문폭주</span>
				<span class="limitedTag">LIMITED</span>
			</div>
			<div class="col col-3" style="font-size: 10pt;" id="productCard">
				<div class="row">
					<div class="col">
						<img src="/resources/images/main/mainProduct7.jpg" " style="height: 100%; width: 100%;">
					</div>
				</div>
				<div class="row mt-3">
					<div class="col">
						<span>포맨트 시그니처 퍼퓸 코튼허그 에디션 '첫 눈'</span>
					</div>
				</div>
				<div class="row  mt-2">
					<div class="col col-4" style="width: 50px; color: red;">
					20%
					</div>
					<div class="col col-4" style="width: 100px;">
					<b>49,000원</b>
					</div>
					<div class="col col-4" style="width: 100px;">
					<s>61,000원</s>
					</div>
				</div>
				<div class="row mt-1">
					<div class="col">
						<span><i class="fa-solid fa-star"></i>4.9(378)</span>
					</div>
				</div>
				<a><img src="/resources/images/ico_cart.svg" class="basket" onclick="javascript:event.stopPropagation(); basket()"></a>
				<span class="newTag">NEW</span>
			</div>
			<div class="col col-3" style="font-size: 10pt;" id="productCard">
				<div class="row">
					<div class="col">
						<img src="/resources/images/main/mainProduct6.jpeg" style="height: 100%; width: 100%;">
					</div>
				</div>
				<div class="row mt-3">
					<div class="col">
						<span>포맨트 시그니처 퍼퓸 코튼허그 에디션 '첫 눈'</span>
					</div>
				</div>
				<div class="row  mt-2">
					<div class="col col-4" style="width: 50px; color: red;">
					20%
					</div>
					<div class="col col-4" style="width: 100px;">
					<b>49,000원</b>
					</div>
					<div class="col col-4" style="width: 100px;">
					<s>61,000원</s>
					</div>
				</div>
				<div class="row mt-1">
					<div class="col">
						<span><i class="fa-solid fa-star"></i>4.9(378)</span>
					</div>
				</div>
				<a><img src="/resources/images/ico_cart.svg" class="basket" onclick="javascript:event.stopPropagation(); basket()"></a>
				<span class="bestTag">BEST</span>
			</div>
			<div class="col col-3" style="font-size: 10pt;" id="productCard">
				<div class="row">
					<div class="col">
						<img src="/resources/images/main/mainProduct5.jpg" style="height: 100%; width: 100%;">
					</div>
				</div>
				<div class="row mt-3">
					<div class="col">
						<span>포맨트 시그니처 퍼퓸 코튼허그 에디션 '첫 눈'</span>
					</div>
				</div>
				<div class="row  mt-2">
					<div class="col col-4" style="width: 50px; color: red;">
					20%
					</div>
					<div class="col col-4" style="width: 100px;">
					<b>49,000원</b>
					</div>
					<div class="col col-4" style="width: 100px;">
					<s>61,000원</s>
					</div>
				</div>
				<div class="row mt-1">
					<div class="col">
						<span><i class="fa-solid fa-star"></i>4.9(378)</span>
					</div>
				</div>
				<a><img src="/resources/images/ico_cart.svg" class="basket" onclick="javascript:event.stopPropagation(); basket()"></a>
				<span class="limitedTag">LIMITED</span>
			</div>
		</div>
		<div class="row" style="margin: 0 30px -30px 30px;">
			<div class="col col-3" style="font-size: 10pt;" id="productCard">
				<div class="row">
					<div class="col">
						<img src="/resources/images/main/mainProduct4.jpg" style="height: 100%; width: 100%;">
					</div>
				</div>
				<div class="row mt-3">
					<div class="col">
						<span>포맨트 시그니처 퍼퓸 코튼허그 에디션 '첫 눈'</span>
					</div>
				</div>
				<div class="row  mt-2">
					<div class="col col-4" style="width: 50px; color: red;">
					20%
					</div>
					<div class="col col-4" style="width: 100px;">
					<b>49,000원</b>
					</div>
					<div class="col col-4" style="width: 100px;">
					<s>61,000원</s>
					</div>
				</div>
				<div class="row mt-1">
					<div class="col">
						<span><i class="fa-solid fa-star"></i>4.9(378)</span>
					</div>
				</div>
				<a><img src="/resources/images/ico_cart.svg" class="basket" onclick="javascript:event.stopPropagation(); basket()"></a>
			</div>
			<div class="col col-3" style="font-size: 10pt;" id="productCard">
				<div class="row">
					<div class="col">
						<img src="/resources/images/main/mainProduct3.jpg" style="height: 100%; width: 100%;">
					</div>
				</div>
				<div class="row mt-3">
					<div class="col">
						<span>포맨트 시그니처 퍼퓸 코튼허그 에디션 '첫 눈'</span>
					</div>
				</div>
				<div class="row  mt-2">
					<div class="col col-4" style="width: 50px; color: red;">
					20%
					</div>
					<div class="col col-4" style="width: 100px;">
					<b>49,000원</b>
					</div>
					<div class="col col-4" style="width: 100px;">
					<s>61,000원</s>
					</div>
				</div>
				<div class="row mt-1">
					<div class="col">
						<span><i class="fa-solid fa-star"></i>4.9(378)</span>
					</div>
				</div>
				<a><img src="/resources/images/ico_cart.svg" class="basket" onclick="javascript:event.stopPropagation(); basket()"></a>
			</div>
			<div class="col col-3" style="font-size: 10pt;" id="productCard">
				<div class="row">
					<div class="col">
						<img src="/resources/images/main/mainProduct2.jpg" style="height: 100%; width: 100%;">
					</div>
				</div>
				<div class="row mt-3">
					<div class="col">
						<span>포맨트 시그니처 퍼퓸 코튼허그 에디션 '첫 눈'</span>
					</div>
				</div>
				<div class="row  mt-2">
					<div class="col col-4" style="width: 50px; color: red;">
					20%
					</div>
					<div class="col col-4" style="width: 100px;">
					<b>49,000원</b>
					</div>
					<div class="col col-4" style="width: 100px;">
					<s>61,000원</s>
					</div>
				</div>
				<div class="row mt-1">
					<div class="col">
						<span><i class="fa-solid fa-star"></i>4.9(378)</span>
					</div>
				</div>
				<a><img src="/resources/images/ico_cart.svg" class="basket" onclick="javascript:event.stopPropagation(); basket()"></a>
			</div>
			<div class="col col-3" style="font-size: 10pt;">
				<div class="row">
					<div class="col">
						<img src="/resources/images/main/mainProduct1.jpg" style="height: 100%; width: 100%;">
					</div>
				</div>
				<div class="row mt-3">
					<div class="col">
						<span>포맨트 시그니처 퍼퓸 코튼허그 에디션 '첫 눈'</span>
					</div>
				</div>
				<div class="row  mt-2">
					<div class="col col-4" style="width: 50px; color: red;">
					20%
					</div>
					<div class="col col-4" style="width: 100px;">
					<b>49,000원</b>
					</div>
					<div class="col col-4" style="width: 100px;"> 
					<s>61,000원</s>
					</div>
				</div>
				<div class="row mt-1">
					<div class="col">
						<span><i class="fa-solid fa-star"></i>4.9(378)</span>
					</div>
				</div>
				<a><img src="/resources/images/ico_cart.svg" class="basket" onclick="javascript:event.stopPropagation(); basket()"></a>
			</div>
		</div>
	</div>
	
	<!-- section2 --> <!-- FORMENT VIDEO -->
	<div class="section" style="padding: 80px 150px 150px 150px; background: #f8f8f8;">
		<div class="row mb-2">
			<div class="col">
				<span><b>FORMENT VIDEO</b></span> 
			</div>
		</div>
		<div class="row">
			<div class="col col-9"">
				<iframe width="100%" height="100%" src="https://www.youtube.com/embed/0kcLbkptq-k" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<div class="col col-3">
				<div class="row m-1">
					<div class="col" style="height: 160px; width: 280px;">
						<img src="/resources/images/로고&배너/비디오 이미지1.png" style="height: 100%; width: 100%;">
					</div>
				</div>
				<div class="row m-1">
					<div class="col" style="height: 160px; width: 200px;">
						<img src="/resources/images/로고&배너/비디오 이미지2.png" style="height: 100%; width: 100%;">
					</div>
				</div>
				<div class="row m-1">
					<div class="col" style="height: 160px; width: 280px;">
						<img src="/resources/images/로고&배너/비디오 이미지3.png" style="height: 100%; width: 100%;">
					</div>
				</div>
			</div>
		</div>
		<div class="row mt-3">
			<div class="col">
				<span><b>마스터 퍼퓨머가 '성공'에 영감을 받아 탄생한 향수</b></span>
			</div>
		</div>
	</div>
	
	<!-- modal section -->
		<!-- 장바구니 modal -->
		<!-- <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		    
		      <div class="modal-header">
		        <span class="modal-title" id="exampleModalLabel">옵션 선택</span>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      
		      <div class="modal-body">
		        <div class="row">
		        	<div class="col">
		        		<span>포맨트 시그니처 퍼퓸 코튼허그 에디션 '첫 눈'</span>		        	
		        	</div>
		        </div>
		        <hr>
		        <div class="row">
		        	<div class="col-4" style="width: 82px; height: 82px;">
		        		<img src="/resources/images/modal/productModalImg1.jpg" style="width: 100%; height: 100%;">
		        	</div>
		        	<div class="col-8">
		        		<div class="row">
		        			<div class="col">
		        				<span>옵션 선택</span>
		        				<span>향 선택</span>
		        				<span>세트 선택</span>
		        			</div>
		        			<div class="col">
		        				<select>
		        					<option>- [필수] 옵션을 선택해 주세요 -</option>
		        					<option></option>
		        					<option></option>
		        					<option></option>
		        				</select>
		        				<select>
		        					<option>- [필수] 옵션을 선택해 주세요 -</option>
		        					<option></option>
		        					<option></option>
		        					<option></option>
		        				</select>
		        				<select>
		        					<option>- [필수] 옵션을 선택해 주세요 -</option>
		        					<option></option>
		        					<option></option>
		        					<option></option>
		        				</select>
		        			</div>
		        		</div>
		        	</div>
		        </div>
		        <div class="row">
		        	<div class="col">
		        		<p style="color: red;">
		        			<img src="/resources/images/ico_info.gif" style="width: 20px; height: 20px;">
		        			위 옵션선택 박스를 선택하시면 아래에 상품이 추가됩니다.
		        		</p>
		        	</div>
		        </div>
		        <hr>
		        <div class="row">
		        	<div class="col">
		        		<span>총 상품금액(수량) : </span>
		        		<span style="color: blue;"><strong>0원</strong>(0개)</span>
		        	</div>
		        </div>
		      </div>
		      
		      <div class="modal-footer justify-content-center">
		        <button type="button" class="btn btn-dark">바로 구매하기</button>
		        <button type="button" class="btn btn-dark">장바구니 담기</button>
		        <button type="button" class="btn btn-light" style="border: 1px solid black; " data-bs-dismiss="modal">닫기</button>
		      </div>
		      
		    </div>
		  </div>
		</div> -->
		
        
        
        
	
	</form>
	<!-- footer -->
	<%@include file="/resources/include/footer.jsp"%>
	
	<!--  스크립트  -->		
	<%@include file="/resources/include/script.jsp"%>
	
	<script>
	
	</script>	
</body>
</html>
