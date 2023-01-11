<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="kr">
<head>

	<title>상품목록</title>
	
	<!-- link -->
	<%@include file="/resources/include/link.jsp"%>
	
	<style type="text/css">
		.headerRightList, .productCategoryList{
			float: left;
			margin: 0 0 0 25px;
	    	font-size: 16px; 
		}
	</style>
	<style type="text/css"> /* 장바구니 버튼 */
		.basket {
			border-radius: 50%;
			height: 35px;
			width: 35px;
			position: relative;
			bottom: 360px;
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
			bottom: 114px;
			font-size: 9pt;
		}
		
		.limitedTag, .bestTag{
			background: black;
			color: white;
			padding: 5px 8px 5px 8px;
			position: relative;
			left: -39px;
			bottom: 114px;
			font-size: 9pt;
		}
    </style>
</head>
<body>

	<!-- header  -->
	<%@include file="/resources/include/header.jsp"%>
	
	<form id="mainForm">
	
		<!-- 상품 카테고리 -->
		<div class="container" style="padding: 50px 0 0 20px;">
			<div class="row">
				<div class="col">
					<ul style="float: left;">
						<li class="productCategoryList" style="margin-left: 0px;"><a href="#">ALL</a></li>
						<li class="productCategoryList"><a href="#">PERFUME</a></li>
						<li class="productCategoryList"><a href="#">BODY & HAND</a></li>
						<li class="productCategoryList"><a href="#">HAIR</a></li>
						<li class="productCategoryList"><a href="#">LIP</a></li>
						<li class="productCategoryList"><a href="#">LIFE STYLE</a></li>
						<li class="productCategoryList"><a href="#">MEN'S SKIN</a></li>
					</ul> 
				</div>
			</div>
		</div>
		
		<!-- section1 -->
		<div class="container" style=" margin-bottom: 150px;">
			<div class="row" style="margin: 30px 30px 0 30px;">
				<div class="col">
					<span style="font-size: 10pt;">총 <b>87</b>개의 상품이 있습니다</span> 
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
					<div class="row  mt-1">
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
							<img src="/resources/images/main/mainProduct7.jpg" style="height: 100%; width: 100%;">
						</div>
					</div>
					<div class="row mt-3">
						<div class="col">
							<span>포맨트 시그니처 퍼퓸 코튼허그 에디션 '첫 눈'</span>
						</div>
					</div>
					<div class="row  mt-1">
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
					<div class="row  mt-1">
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
					<div class="row  mt-1">
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
			<div class="row" style="margin: 0 30px 80px 30px;">
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
					<div class="row  mt-1">
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
					<div class="row  mt-1">
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
					<div class="row  mt-1">
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
							<img src="/resources/images/main/mainProduct1.jpg" style="height: 100%; width: 100%;">
						</div>
					</div>
					<div class="row mt-3">
						<div class="col">
							<span>포맨트 시그니처 퍼퓸 코튼허그 에디션 '첫 눈'</span>
						</div>
					</div>
					<div class="row  mt-1">
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
			<div class="row" style="margin: 0px 30px 80px 30px;">
				<div class="col col-3" style="font-size: 10pt;" id="productCard">
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
					<div class="row  mt-1">
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
							<img src="/resources/images/main/mainProduct7.jpg" style="height: 100%; width: 100%;">
						</div>
					</div>
					<div class="row mt-3">
						<div class="col">
							<span>포맨트 시그니처 퍼퓸 코튼허그 에디션 '첫 눈'</span>
						</div>
					</div>
					<div class="row  mt-1">
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
							<img src="/resources/images/main/mainProduct6.jpeg" style="height: 100%; width: 100%;">
						</div>
					</div>
					<div class="row mt-3">
						<div class="col">
							<span>포맨트 시그니처 퍼퓸 코튼허그 에디션 '첫 눈'</span>
						</div>
					</div>
					<div class="row  mt-1">
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
							<img src="/resources/images/main/mainProduct5.jpg" style="height: 100%; width: 100%;">
						</div>
					</div>
					<div class="row mt-3">
						<div class="col">
							<span>포맨트 시그니처 퍼퓸 코튼허그 에디션 '첫 눈'</span>
						</div>
					</div>
					<div class="row  mt-1">
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
					<div class="row  mt-1">
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
					<div class="row  mt-1">
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
					<div class="row  mt-1">
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
							<img src="/resources/images/main/mainProduct1.jpg" style="height: 100%; width: 100%;">
						</div>
					</div>
					<div class="row mt-3">
						<div class="col">
							<span>포맨트 시그니처 퍼퓸 코튼허그 에디션 '첫 눈'</span>
						</div>
					</div>
					<div class="row  mt-1">
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
			
			<!-- pagination -->
			<%@include file="/resources/include/pagination.jsp"%>
			
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
