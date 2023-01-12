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
    <style type="text/css">
    /* 모달css */
    #popup {
    min-width: 0;
}
#popup .xans-product-optionselectlayer {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    border: 1px solid #000;
    height: auto;
}
#popup .ec-base-layer {
    position: relative;
    border: 0;
}
.ec-base-layer {
    position: absolute;
    z-index: 100;
    border: 1px solid #757575;
    background: #fff;
}
.xans-product-optionselectlayer {
    width: 600px;
}
#popup .ec-base-layer .header {
    padding: 12px 35px 12px 19px;
}
.ec-base-layer .header {
    padding: 7px 35px 7px 19px;
    color: #fff;
    background: #495164;
}
.ec-base-layer .header > h1, .ec-base-layer .header > h3 {
    font-size: 14px;
    line-height: 1.5;
}
.xans-product-optionselectlayer.ec-base-layer .content {
    position: relative;
    min-height: 434px;
    padding: 0;
}
.ec-base-layer .content {
    padding: 20px;
    font-size: 12px;
}
.xans-product-optionselectlayer .inner {
    overflow: auto;
    overflow-x: hidden;
    max-height: 359px;
    padding: 20px 25px 14px;
}
.xans-product-optionselectlayer .inner .name {
    padding: 0 0 20px;
    font-size: 12px;
    border-bottom: 1px dotted #000;
}
.xans-product-optionselectlayer .productNormal {
    margin: 20px 0 0;
    min-height: 82px;
    position: relative;
    padding: 0 0 0 100px;
}
.xans-product-optionselectlayer .productNormal .imgArea {
    position: absolute;
    left: 0;
    top: 0;
    width: 80px;
    height: 80px;
    min-height: 82px;
}
.xans-product-optionselectlayer .productNormal .imgArea img {
    width: 82px;
    height: 82px;
    border: 1px solid #ddd;
}
.xans-product-optionselectlayer.ec-base-layer .content table {
    color: #353535;
    clear: both;
    text-align: left;
}
table {
    width: 100%;
    border: 0;
    border-spacing: 0;
    border-collapse: collapse;
}
caption {
    display: none;
}
colgroup {
    display: table-column-group;
}
tbody {
    display: table-row-group;
    vertical-align: middle;
    border-color: inherit;
}
.xans-product-optionselectlayer.ec-base-layer .content table {
    color: #353535;
    clear: both;
    text-align: left;
}
tr {
    display: table-row;
    vertical-align: inherit;
    border-color: inherit;
}
.xans-product-optionselectlayer.ec-base-layer .content table {
    color: #353535;
    clear: both;
    text-align: left;
}
.xans-product-optionselectlayer .productNormal table th:first-child {
    border-left: 0;
}
.xans-product-optionselectlayer .productNormal table th {
    padding: 2px 0 5px;
    font-weight: normal;
    text-align: left;
    vertical-align: top;
}
.xans-product-optionselectlayer .productNormal table td {
    padding: 0 9px 8px;
    line-height: 1.5;
    vertical-align: middle;
}
.xans-product-optionselectlayer select {
    width: 100%;
}
select {
    height: 24px;
    border: 1px solid #d5d5d5;
    font-size: 100%;
    color: #353535;
    vertical-align: middle;
}
option {
    font-weight: normal;
    display: block;
    white-space: nowrap;
    min-height: 1.2em;
    padding: 0px 2px 1px;
}
#totalProducts {
    margin: 20px 0;
    clear: both;
}
span.ec-base-help, p.ec-base-help, ul.ec-base-help li {
    margin: 2px 9px;
    padding: 1px 0 1px 20px;
    line-height: 1.4;
    background: url(/resources/images/ico_info.gif) no-repeat 0 2px;
}
.txt11 {
    font-size: 11px;
}
.txtWarn {
    color: #f76560;
}
#totalProducts table {
    margin: 0;
    font-size: 12px;
}
#totalProducts tbody tr:first-child td {
    border-top: 1px solid #9a9ba0;
}
#totalProducts tbody tr td:first-child {
    padding-left: 4px;
}
input, select, textarea {
    font-size: 100%;
    color: #353535;
    vertical-align: middle;
}
#totalProducts tbody td p {
    padding: 0 10px 0 0;
    font-weight: bold;
    line-height: 21px;
}
#totalProducts tbody td .quantity {
    display: inline-block;
    position: relative;
    width: 50px;
    vertical-align: top;
    *margin: 0 4px 0 0;
}
#totalProducts tbody.option_products tr td .quantity input, #totalProducts tbody.add_products tr td .quantity input {
    height: 19px;
    line-height: 19px;
}
#totalProducts tbody td .quantity input {
    width: 29px;
    height: 25px;
    padding: 0 2px 0 3px;
    line-height: 25px;
    border: 1px solid #d4d8d9;
    border-radius: 3px 0 0 3px;
    *margin-top: -1px;
}
.xans-product-optionselectlayer input[type=text] {
    width: 75%;
}
input[type=text], input[type=password] {
    height: 18px;
    line-height: 20px;
    padding: 2px 4px;
    border: 1px solid #d5d5d5;
    color: #353535;
    font-size: 12px;
}
#totalProducts tbody td .quantity .up {
    position: absolute;
    left: 28px;
    top: 0;
}
#totalProducts tbody.option_products tr td .quantity .down, #totalProducts tbody.add_products tr td .quantity .down {
    bottom: 0;
    top: auto;
}
#totalProducts tbody td .quantity .down {
    position: absolute;
    left: 28px;
    top: 14px;
}
a {
    text-decoration: none;
    color: #000;
}
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}
#totalProducts table .right {
    padding-right: 9px;
    font-weight: bold;
    color: #008bcc;
    text-align: right;
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
		<div id="popup">
			<div class="xans-element- xans-product xans-product-optionselectlayer ec-base-layer ">
				<div class="header">
					<h1 style="margin: 0px; font-weight: 600;">옵션 선택</h1>
				</div>
				<div class="content">
					<div class="xans-element- xans-product xans-product-detail inner">
						<h2 class="name">
							<strong>포맨트 시그니처 퍼퓸 코튼허그</strong>
						</h2>
						<div class="productNormal  ">
							<div class="xans-element- xans-product xans-product-image imgArea ">
								<img src="" class="" style="background: #000;">
				                &nbsp;
							</div>
							<table border="1" summary="">
								<caption>상품 옵션</caption>
								<colgroup>
									<col width="120px">
									<col width="auto">
								</colgroup>
								<tbody class="xans-element- xans-product xans-product-option xans-record-">
								<tr class="xans-element- xans-product xans-product-option xans-record-">
									<th scope="row">세트 선택</th>
									<td>
										<select name="option1" id="product_option_id1" class="ProductOption0" option_style="select" required="true">
											<option value="*" selected="" link_image="">- [필수] 옵션을 선택해 주세요 -</option>
											<option value="**" disabled="" link_image="">-------------------</option>
											<option value="향수 단품" link_image="">향수 단품</option>
											<option value="코튼허그 세트" link_image="">코튼허그 세트</option>
											<option value="[레이어링추천] 향수 세트" link_image="">[레이어링추천] 향수 세트</option>
										</select>
									</td>
								</tr>
								<tr class="xans-element- xans-product xans-product-option xans-record-">
									<th scope="row">수량 선택</th>
									<td>
										<select name="option2" id="product_option_id2" class="ProductOption0" option_style="select" required="true">
											<option value="*" selected="" link_image="">- [필수] 옵션을 선택해 주세요 -</option>
											<option value="**" disabled="" link_image="">-------------------</option>
										</select>
									</td>
								</tr>
								</tbody>
							</table>
						</div>
						<div id="totalProducts" class=" ">
							<p class="ec-base-help txtWarn txt11 "> 위 옵션선택 박스를 선택하시면 아래에 상품이 추가됩니다.</p>
							<table blrder="0" summary>
								<caption>상품 목록</caption>
								<colgroup>
									<col style="width:284px;">
									<col style="width:80px;;">
									<col style="width:110px;">
								</colgroup>
								<tbody class="option_products">
									<tr class="option_product " data-option-index="1" target-key="79">
										<td>
											<input type="hidden" class="option_box_id" id="option_box1_id" value="P00000DB000A" name="item_code[]">
											<p class="product">포맨트 시그니처 퍼퓸 코튼허그<br> 
											- <span>향수 단품/코튼허그 1개</span></p>
										</td>
										<td>
											<span class="quantity" style="width:65px;"><input type="text" id="option_box1_quantity" name="quantity_opt[]" class="quantity_opt eProductQuantityClass" value="1">
												<a href="#none" class="up eProductQuantityUpClass" "="" data-target="option_box1_up">
													<img src="//img.echosting.cafe24.com/design/skin/default/product/btn_count_up.gif" id="option_box1_up" class="option_box_up" alt="수량증가">
												</a>
												<a href="#none" class="down eProductQuantityDownClass" data-target="option_box1_down">
													<img src="//img.echosting.cafe24.com/design/skin/default/product/btn_count_down.gif" id="option_box1_down" class="option_box_down" alt="수량감소">
												</a>
											</span>
											<a href="#none" class="delete">
												<img src="//img.echosting.cafe24.com/design/skin/default/product/btn_price_delete.gif" alt="삭제" id="option_box1_del" class="option_box_del">
											</a>
										</td>
										<td class="right">
											<span id="option_box1_price">
												<input type="hidden" class="option_box_price" value="39000" product-no="79" item_code="P00000DB000A">
												<span class="ec-front-product-item-price" code="P00000DB000A" product-no="79">39,000원</span>
											</span>
										</td>
									</tr>
								</tbody>
							</table>
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
