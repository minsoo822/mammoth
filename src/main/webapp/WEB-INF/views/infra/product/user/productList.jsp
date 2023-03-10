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
		.productCategoryList{
			float: left;
			margin: 0 0 0 25px;
	    	font-size: 16px; 
	    	cursor: pointer;
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
    <style type="text/css">
    	#productCard {
    		cursor: pointer;
    	}
    </style>
</head>
<body>
	<form method="post" id="mainForm">
	<input type="hidden" name="mmSeq" value="${sessSeq }">
	<input type="hidden" name="prSeq" id="prSeq" value="">

	<!-- header  -->
	<%@include file="/resources/include/header.jsp"%>
	
	
		<!-- 상품 카테고리 -->
		<div class="container" style="padding: 50px 0 0 20px;">
			<div class="row">
				<div class="col">
					<ul style="float: left;">
						<li class="productCategoryList" style="margin-left: 0px;"><a onclick="category(0)">ALL</a></li>
						<li class="productCategoryList"><a onclick="category(1)">PERFUME</a></li>
						<li class="productCategoryList"><a onclick="category(2)">BODY & HAND</a></li>
						<li class="productCategoryList"><a onclick="category(3)">HAIR</a></li>
						<li class="productCategoryList"><a onclick="category(4)">LIP</a></li>
						<li class="productCategoryList"><a onclick="category(5)">LIFE STYLE</a></li>
						<li class="productCategoryList"><a onclick="category(6)">MEN'S SKIN</a></li>
					</ul> 
				</div>
			</div>
		</div>
		
		<!-- section1 -->
		<div class="container" style=" margin-bottom: 150px;">
			<div class="row" style="margin: 30px 30px 0 30px;">
				<div class="col">
					<span style="font-size: 10pt;">총 <b><c:out value="${fn:length(list)}"/></b>개의 상품이 있습니다</span> 
				</div>
			</div>
			<div class="row" style="margin: 20px 30px 50px 30px;">
				<c:forEach items="${list}" var="prList">
					<div class="col col-3" style="font-size: 10pt;" id="productCard" onclick="productView(${prList.prSeq})">
						<div class="row">
							<div class="col">
								<img src="${prList.upPath}${prList.upUuidName}" style="height: 100%; width: 100%;"> 
							</div>
						</div>
						<div class="row mt-3">
							<div class="col">
								<span><c:out value="${prList.prName}"/></span>
							</div>
						</div>
						<div class="row  mt-1">
							<div class="col col-4" style="width: 50px; color: red;">
							<c:out value="${prList.prDiscount}"/>%
							</div>
							<div class="col col-4" style="width: 100px;">
							<b><c:out value="${prList.prPrice}"/>원</b>
							</div>
							<div class="col col-4" style="width: 100px;">
							<s><c:out value="${prList.prPrice}"/>원</s>
							</div>
						</div>
						<div class="row mt-1">
							<div class="col">
								<div class="col">
								<span><i class="fa-solid fa-star"></i>
								<c:out value="${prList.rvStarAver}" />(<c:out
										value="${prList.rvTotalCount}" />)</span>
							</div>
							</div>
						</div>
						<a><img src="/resources/images/ico_cart.svg" class="basket" onclick="javascript:event.stopPropagation(); basket()"></a>
						<!-- <span class="bombTag">주문폭주</span> -->
						<!-- <span class="limitedTag">LIMITED</span> -->
					</div>
				</c:forEach>
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
	
		productView = function(key) {
			
			var prSeq = $("#prSeq");
			
			prSeq.val(key);
			form.attr("action", "/product/productView").submit();
		};
		
	</script>	
</body>
</html>
