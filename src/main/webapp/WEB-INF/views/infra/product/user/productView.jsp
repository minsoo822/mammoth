<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<jsp:useBean id="CodeServiceImpl"
	class="com.mammoth.infra.modules.code.CodeServiceImpl" />
<%
pageContext.setAttribute("br", "\n");
%>

<!DOCTYPE html>
<html lang="kr">
<head>

<title>FORMENT</title>

<!-- link -->
<%@include file="/resources/include/link.jsp"%>


<style>
div {
	/* border: solid 1px orange; */
	
}

.xans-product-detail {
	position: relative;
	margin: 0 auto;
	padding: 60px 0 0 0;
	width: 1200px;
}

.xans-product-detail .detailArea {
	padding: 0 0 0 608px;
}

.xans-product-detail .imgArea {
	float: left;
	width: 564px;
	margin: 0px 0 0 -608px;
}

.large_img {
	overflow: hidden;
	padding: 0 0 30px 0;
	margin: 0;
	position: relative;
}

li {
	display: list-item;
	text-align: -webkit-match-parent;
}

.gift-list-per-price {
	padding: 50px 0 15px;
	clear: left;
}

.gift-list-per-price .gtitle {
	padding: 0;
	position: relative;
}

.gift-list-per-price .gtitle h3 {
	font-size: 14px;
	font-weight: normal;
	color: #242424;
}

.gift-list-wrap {
	position: relative;
	overflow: hidden;
}

.gift-list {
	padding: 30px 0 0 0;
}

.gift-list li {
	padding: 0 0 0 0;
	border-bottom: 1px solid #e5e5e5;
	display: flex;
	align-items: center;
}

.gift-list li .circle {
	flex: 0 0 126px;
}

.gift-list .circle .image {
	height: 96px;
	margin: 0;
}

.gift-list .circle .image img {
	height: 96px;
}

.gift-list li .item {
	flex: 0 0 calc(100% - 126px);
}

.gift-list li h4 {
	font-size: 14px;
	font-weight: normal;
	color: #242424;
	line-height: 1.1;
	margin: 0 0 5px 0;
	padding: 0 0 0;
}

.gift-list li .explain {
	word-break: keep-all;
	font-size: 12px;
	line-height: 1.48;
	color: #616161;
}

.xans-product-detail .infoArea {
	letter-spacing: -0.5px;
}

.xans-product-detail .infoArea h2 {
	padding-right: 40px;
	font-size: 26px;
	line-height: 1.3;
	font-weight: bold;
	word-break: keep-all;
	margin-bottom: 10px;
}

.detail-rating {
	display: flex;
	align-items: center;
	margin-bottom: 13px;
	cursor: pointer;
}

span.snap_review_avg_score.noset {
	font-size: 13px !important;
	color: #646464;
}

.price_wrap {
	position: relative;
}

.price_wrap .dis_value.custom {
	color: #c4c4c4;
	font-size: 17px;
}

.price_wrap .dis_value {
	color: #000;
	font-size: 20px;
	margin: 5px 0 0 0;
}

.price_wrap .dis_value.strong {
	font-weight: bold;
}

.price_wrap #rate {
	display: inline-block;
	font-size: 20px;
	font-weight: bold;
	color: #d53737;
	margin-right: 10px;
}

.product-detail-desc {
	font-size: 14px;
	line-height: 1.57;
	margin: 30px 0;
	font-weight: 600;
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

.xans-product-detail .infoArea .xans-product-option tr:first-child th,
	.xans-product-detail .infoArea .xans-product-option .xans-product-fileoption th
	{
	padding-top: 14px;
	border-top: 1px solid #e8e8e8;
}

.xans-product-detail .infoArea .xans-product-option tr th {
	color: #000;
	font-weight: normal;
	font-size: 13;
}

.xans-product-detail .infoArea th {
	font-weight: normal;
	color: #353535;
	width: 115px;
	padding: 7px 0 8px 0;
	text-align: left;
	vertical-align: middle;
}

.xans-product-detail .infoArea .xans-product-option tr:first-child td,
	.xans-product-detail .infoArea .xans-product-option .xans-product-fileoption td
	{
	padding-top: 10px;
	border-top: 1px solid #e8e8e8;
}

.xans-product-detail .infoArea td {
	padding: 7px 0 8px 0;
	vertical-align: middle;
}

.xans-product-detail .infoArea td {
	font-size: 13.1px;
	color: #666;
}

.xans-product-detail .infoArea select {
	padding-right: 42px;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	border: 1px solid #d5d5d5;
	border-radius: 0px;
	position: relative;
	background: url(/resources/images/select_box_arrow.png) no-repeat 95%
		50%;
	background-size: 14px 8px;
}

.xans-product-detail .infoArea select {
	width: 100%;
	height: 32px;
	font-size: 13px;
	line-height: 1.93;
	letter-spacing: -1px;
	color: #000000;
	padding-left: 8px;
}

option {
	font-weight: normal;
	display: block;
	white-space: nowrap;
	min-height: 1.2em;
	padding: 0px 2px 1px;
}

.infoArea .addprd_set {
	position: relative;
}

.infoArea .productSet {
	margin: 10px 0 0;
	border: 1px solid #d7d5d5;
}

#add_product_slider_wrap {
	overflow: hidden;
	position: relative;
}

.infoArea .productSet .recommend {
	position: relative;
	line-height: 38px;
	font-size: 13px;
	padding: 0 0 0 10px;
	color: #616161;
}

.swiper-wrapper {
	position: relative;
	width: 100%;
	height: 100%;
	z-index: 1;
	display: flex;
	transition-property: transform;
	box-sizing: content-box;
}

#add_product_slider_wrap.noSwiper .swiper-wrapper {
	display: block;
	transform: none !important;
}

.swiper-slide {
	flex-shrink: 0;
	width: 100%;
	height: 100%;
	position: relative;
	transition-property: transform;
}

.infoArea .productSet .product {
	padding-bottom: 8px;
}

.infoArea .productSet .product {
	padding: 9px 0 4px;
	vertical-align: top;
}

.detail-option-section .thumb {
	width: 120px;
	float: left;
	text-align: center;
}

.detail-option-section .thumb img {
	max-width: 80px;
}

.xans-product-detail .infoArea img {
	vertical-align: middle;
}

.infoArea .productSet .seperate, .infoArea .productSet .option {
	vertical-align: top;
	*zoom: 1;
}

.add_prd {
	padding-left: 120px;
}

.infoArea .productSet table {
	table-layout: fixed;
	margin: 0;
}

table {
	width: 100%;
	border: 0;
	border-spacing: 0;
	border-collapse: collapse;
}

.infoArea .productSet th {
	width: 52px;
	font-size: 13.1px;
	font-weight: normal;
}

.infoArea .productSet th {
	padding: 5px 5px 5px 8px;
	color: #353535;
}

.infoArea .productSet td {
	padding: 5px 10px;
	color: #353535;
}

.infoArea .productSet td.price {
	font-weight: 500;
	color: #000000;
}

.add_option {
	padding-left: 120px;
}

.swiper-container-horizontal>.swiper-pagination-bullets,
	.swiper-pagination-custom, .swiper-pagination-fraction {
	bottom: 10px;
	left: 0;
	width: 100%;
}

.swiper-pagination {
	position: absolute;
	text-align: center;
	transition: .3s opacity;
	transform: translate3d(0, 0, 0);
	z-index: 10;
}

.swiper-container-horizontal>.swiper-pagination-bullets .swiper-pagination-bullet
	{
	margin: 0 4px;
}

.large_img .swiper-pagination-bullet {
	background: #e4e4e4;
	bottom: 0;
	opacity: 1;
}

.swiper-pagination-bullet {
	width: 8px;
	height: 8px;
	display: inline-block;
	border-radius: 100%;
	background: #000;
	opacity: .2;
}

.large_img .swiper-pagination-bullet-active {
	background: #242424;
}

.xans-product-detail .infoArea table.tbl_prd_info {
	border-top: 1px solid #dfdfdf;
	margin: 0 0 10px 0;
	position: relative;
}

.xans-product-detail .infoArea .tbl_prd_info th {
	font-size: 13px;
	font-weight: normal;
	color: #666;
}

.xans-product-detail .infoArea th {
	font-weight: normal;
	color: #353535;
	width: 115px;
	padding: 7px 0 8px 0;
	text-align: left;
	vertical-align: middle;
}

.dtc_banner {
	border: 1px solid #e7e7e7;
	margin: 0 0 6px;
	padding: 13px 15px;
	line-height: 1.0;
}

.dtc_banner a {
	display: block;
	color: #3d3d3d;
	font-size: 13px;
}

.xans-product-detail .infoArea img {
	vertical-align: middle;
}

.dtc_banner img {
	height: 20px;
	vertical-align: middle;
	margin-right: 5px;
}

.dtc_banner.kakao {
	background: #fafafa;
	margin-bottom: 30px;
}

.dtc_banner.kakao a {
	position: relative;
}

.dtc_banner.kakao a:after {
	content: '';
	display: block;
	text-align: right;
	width: 40px;
	height: 10px;
	position: absolute;
	right: 0;
	top: 50%;
	-webkit-transform: translateY(-50%);
	background: url(/resources/images/arrow_line.svg) no-repeat 100% 50%;
	background-size: auto 10px;
}

#total_product_wrap .detail-amount-cell {
	border-top: 1px solid #424242;
	text-align: right;
	position: relative;
}

#totalProducts tfoot td {
	padding: 20px 0;
	color: #353535;
	vertical-align: middle;
	font-weight: normal;
	font-size: 18px;
}

#total_product_wrap .detail-amount-cell {
	border-top: 1px solid #424242;
	text-align: right;
	position: relative;
}

#totalProducts tfoot td .total {
	color: #000000;
	float: right;
	font-family: 'Inter';
	margin-left: 5px;
}

#totalProducts tfoot td .total em {
	font-style: normal;
	font-weight: bold;
	font-size: 20px;
	font-family: 'Inter';
	color: #000000;
}

.xans-product-detail .infoArea .xans-product-action {
	padding: 0 0 10px 0;
}

.btAction, .btAction * {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.btAction {
	display: -webkit-box;
	display: -ms-flexbox;
	display: -webkit-flex;
	display: flex;
	flex-wrap: wrap;
	margin: 0 -5px;
	padding: 0 0 15px 0;
}

.btAction a.btn_action.wm_pc_cart {
	font-size: 0 !important;
	position: relative;
	flex: 0 0 80px;
	min-width: 80px;
}

.btAction a.btn_action.white {
	color: #4d4b48;
	background: #ffffff;
	border: 1px solid #4d4b48;
}

.btAction a.btn_action {
	display: inline-block;
	min-width: 129px;
	min-height: 58px;
	line-height: 58px;
	font-size: 14px;
	letter-spacing: 0;
	text-align: center;
	background: #000000;
	color: #fff;
	border: 1px solid #000000;
	margin: 0 5px;
	flex: 0 0 calc(50% - 10px);
}

.btAction a.btn_action.wm_pc_cart {
	font-size: 0 !important;
	position: relative;
	flex: 0 0 80px;
	min-width: 150px;
}

.btAction a.btn_action.purchase {
	min-width: 430px;
}

.btAction a.btn_action.white {
	color: #4d4b48;
	background: #ffffff;
	border: 1px solid #4d4b48;
}

.btAction a.btn_action.wm_pc_cart::after {
	content: '';
	background: url(/resources/images/icot_cart.svg) no-repeat;
	width: 20px;
	height: 26px;
	position: absolute;
	display: inline-block;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.btAction a.btn_action.wm_pc_gift_order, .btAction a.btn_action.wm_pc_order
	{
	flex: 0 0 calc(50% - 100px);
}

.btAction a.btn_action {
	display: inline-block;
	min-width: 129px;
	min-height: 58px;
	line-height: 58px;
	font-size: 14px;
	letter-spacing: 0;
	text-align: center;
	background: #000000;
	color: #fff;
	border: 1px solid #000000;
	margin: 0 5px;
	flex: 0 0 calc(50% - 10px);
}

ul#product_detail_tab {
	clear: both;
	display: -webkit-box;
	display: -ms-flexbox;
	display: -webkit-flex;
	display: flex;
	flex-wrap: wrap;
	background: #ffffff;
}

ul#product_detail_tab li {
	flex: 0 0 33.3333%;
}

ul#product_detail_tab li.selected a {
	font-weight: bold;
}

ul#product_detail_tab li a {
	display: block;
	line-height: 45px;
	height: 45px;
	text-align: center;
	color: #424242;
	border-bottom: 1px solid #dcdcdc;
	font-size: 14px;
	position: relative;
}

ul#product_detail_tab li.selected a:after {
	content: "";
	display: block;
	width: 100%;
	height: 3px;
	background: #424242;
	position: absolute;
	left: 0;
	bottom: -1px;
}

li {
	list-style: none;
}

.detail_info_warp {
	padding-top: 30px;
	width: 700px;
}

.reviewBtn button {
	width: 90px;
	height: 36px;
	line-height: 36px;
	background-color: white;
	box-shadow: 0 1px 4px 0 rgb(0 0 0/ 18%);
	border-radius: 20px;
	color: #292929;
	cursor: pointer;
}

.recommend_btn {
	border: 1px solid #E1E1E1;
	background-color: transparent;
	cursor: pointer;
	width: auto;
	height: 25px;
	border-radius: 50px;
	font-size: 0.75rem;
	font-weight: 500;
	padding: 0px 15px;
}

.reviewImg {
	border-radius: 5px !important;
	width: 160px;
	height: auto;
	display: inline-block;
	background-size: cover !important;
	margin: 3px;
}
/* 모달 s */
.messageWrap {
	display: none;
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	z-index: 1000;
}

.messageBack {
	width: 100%;
	height: 100%;
	background-color: #000;
	opacity: 0.3;
}

.messageBox {
	position: absolute;
	left: calc(50% - 10rem);
	top: calc(50% - 5.25rem);
	width: 20rem;
	background-color: #fff;
	border-radius: 12px;
	box-shadow: 0 0 3px 1px #d4d4d4;
}

.messageInner {
	margin: 1.5rem 0.375rem;
	width: calc(100% - 0.75rem);
	color: #000;
}

.messageTitle {
	font-size: 1rem;
	height: 1.5rem;
	text-align: center;
}

.messageTextWrap {
	text-align: center;
	margin: 0.375rem 0;
	font-size: 0.8rem;
}

.messageText {
	margin: 0;
}

.messageButtons {
	text-align: center;
	margin-top: 1rem;
}

.messageButton {
	margin: 0 0.5rem;
	width: 4.375rem;
	height: 1.875rem;
	background-color: #fff;
	border: 1px solid #e6e6e6;
	cursor: pointer;
}
/* 모달 e */
</style>
<style type="text/css">
.noReviewAdd {
	border: 1px solid #ced4da;
}

.noReviewAdd:hover {
	background: black;
	color: white;
}
</style>
<style type="text/css">
.reviewTitle {
	outline: none;
}
</style>
</head>
<body>
	<form id="mainForm" method="post" enctype="multipart/form-data">

		<c:set var="ccgListGrade"
			value="${CodeServiceImpl.selectListCachedCode(7)}" />

		<input type="hidden" name="mmSeq" id="mmSeq" value="${sessSeq }">
		<input type="hidden" name="prSeq" id="prSeq" value="${one.prSeq }">
		<input type="hidden" name="lastPrice" id="lastPrice" value="${one.prTotalPrice}">

		<input type="hidden" name="rv_mmSeq" id="rv_mmSeq" value="${sessSeq }">
		<input type="hidden" name="rv_prSeq" id="rv_prSeq" value="${one.prSeq }">

		<!-- header  -->
		<%@include file="/resources/include/header.jsp"%>

		<div class="container">
			<!-- 상단 제품 정보  -->
			<div class="xans-element- xans-product xans-product-detail">
				<div class="detailArea">
					<!-- 이미지 영역 s -->
					<div class="xans-element- xans-product xans-product-image imgArea ">
						<div
							class="xans-element- xans-product xans-product-addimage large_img swiper-container-initialized swiper-container-horizontal">
							<div id="carouselExampleAutoplaying" class="carousel slide"
								data-bs-ride="carousel">
								<div class="carousel-inner">
									<c:forEach items="${prImglist}" var="prImglist">
										<div class="carousel-item active">
											<img src="${prImglist.upPath}${prImglist.upUuidName}"
												class="d-block w-100">
										</div>
									</c:forEach>
								</div>
								<button class="carousel-control-prev" type="button"
									data-bs-target="#carouselExampleAutoplaying"
									data-bs-slide="prev">
									<span class="carousel-control-prev-icon" aria-hidden="true"></span>
									<span class="visually-hidden">Previous</span>
								</button>
								<button class="carousel-control-next" type="button"
									data-bs-target="#carouselExampleAutoplaying"
									data-bs-slide="next">
									<span class="carousel-control-next-icon" aria-hidden="true"></span>
									<span class="visually-hidden">Next</span>
								</button>
							</div>
						</div>
					</div>
					<!-- 이미지 영역 e -->
					<!-- 상세정보 내역 s -->
					<div class="infoArea">
						<h2>
							<c:out value="${one.prName }" />
						</h2>
						<div class="detail-rating">
							<span class="snap_review_avg_score noset">
								<div class="snap_review_avg_score"
									style="display: inline-block; margin-right: 10px;">
									<div class="snap_review_avg_score_image_front" style="font-size: 12pt; color: #000;">
										<c:if test="${rvStarAver eq null}"> 
											<i class="fa-regular fa-star"></i>
											<i class="fa-regular fa-star"></i>
											<i class="fa-regular fa-star"></i>
											<i class="fa-regular fa-star"></i>
											<i class="fa-regular fa-star"></i>
										</c:if>
										<c:if test="${1 le rvStarAver && rvStarAver lt 2}"> 
											<i class="fa-solid fa-star"></i>
											<i class="fa-regular fa-star"></i>
											<i class="fa-regular fa-star"></i>
											<i class="fa-regular fa-star"></i>
											<i class="fa-regular fa-star"></i>
										</c:if>
										<c:if test="${2 le rvStarAver && rvStarAver lt 3}"> 
											<i class="fa-solid fa-star"></i>
											<i class="fa-solid fa-star"></i>
											<i class="fa-regular fa-star"></i>
											<i class="fa-regular fa-star"></i>
											<i class="fa-regular fa-star"></i>
										</c:if>
										<c:if test="${3 le rvStarAver && rvStarAver lt 4}"> 
											<i class="fa-solid fa-star"></i>
											<i class="fa-solid fa-star"></i>
											<i class="fa-solid fa-star"></i>
											<i class="fa-regular fa-star"></i>
											<i class="fa-regular fa-star"></i>
										</c:if>
										<c:if test="${4 le rvStarAver && rvStarAver lt 5}"> 
											<i class="fa-solid fa-star"></i>
											<i class="fa-solid fa-star"></i>
											<i class="fa-solid fa-star"></i>
											<i class="fa-solid fa-star"></i>
											<i class="fa-regular fa-star"></i>
										</c:if>
										<c:if test="${5 le rvStarAver && rvStarAver lt 6}"> 
											<i class="fa-solid fa-star"></i>
											<i class="fa-solid fa-star"></i>
											<i class="fa-solid fa-star"></i>
											<i class="fa-solid fa-star"></i>
											<i class="fa-solid fa-star"></i>
										</c:if>
										<c:out value="${rvStarAver}"/>
									</div>
								</div>(<c:out value="${fn:length(rvList)}" />)
							</span>
						</div>
						<div class="price_wrap ">
							<div class="dis_value custom">
								<s><fmt:formatNumber pattern="#,###원" value="${one.prPrice }" /></s>
							</div>
							<div class="dis_value strong">
								<span id="rate" class="rate29"><c:out
										value="${one.prDiscount }" />%</span>
								<fmt:formatNumber pattern="#,###원" value="${one.prTotalPrice}" />
							</div>
						</div>
						<div class=" ">
							<div id="simple_desc_source" class="product-detail-desc">
								<!-- c:out 없이 그냥 사용해줘야 적용됨 -->
								${fn:replace(one.prInfo, br, '<br/>')}"
							</div>
						</div>
						<div class="order_button_wrap">
							<div class="order_button_contents" class="static">
								<table class="tbl_prd_info">
									<tbody>
										<tr>
											<th scope="row" style="padding-top: 14px;">배송비</th>
											<td style="padding-top: 14px;"><span
												style="font-size: 12px; color: #555555;"> <span
													class="delv_price_B"> 무료 </span>
											</span></td>
										</tr>
										<tr id="deli_info">
											<th scope="row">배송 예정일</th>
											<td>평일 16시 이전 결제완료 시 당일출고</td>
										</tr>
									</tbody>
								</table>
								<div id="welcomCoupon" class="dtc_banner">
									<a href="#" style="text-decoration: none;"> <img
										src="/resources/images/ico_cp_won.svg" alt=""
										style="height: 15px;">지금 회원 가입 시 <strong>10,000원</strong>
										쿠폰팩
									</a>
								</div>
								<!-- <div class="dtc_banner kakao">
									<a href="#" target="_blank" style="text-decoration: none;">
										<img src="/resources/images/ico_plus.svg" alt=""> 카카오톡
										채널 추가시 1천원 쿠폰증정
									</a>
								</div> -->
								<div id="total_product_wrap">
									<div id="totalProducts" class="" style="margin: 21px 0 0;">
										<table border="1" summary="" class="total_options">
											<tfoot>
												<tr class="detail-amount-cell">
													<td colspan="1">수량 : <input type="text" id="prAmount" name="bskAmount" style="width: 50px; text-align: center;" value="1" readonly>
														<button type="button" id="plus" style="width: 30px; text-align: center;">+</button>
														<button type="button" id="minus" style="width: 30px; text-align: center;">-</button>
													</td>
													<td colspan="2">총 상품금액 : <strong><span class="total" id="prTotalPrice"><fmt:formatNumber pattern="#,###" value="${one.prTotalPrice }" />원
															</span></strong>
															<input type="hidden" id="prPrice" value="${one.prTotalPrice }">
															<input type="hidden" id="prTotalPrice2"  name="bskSell_Price" value="${one.prTotalPrice }">
													</td>
													<td colspan="1" style="text-align: left;">
														(<span id="prAmount2">1</span>개)
													</td>
												</tr>
											</tfoot>
										</table>
									</div>
								</div>
								<div class="xans-element- xans-product xans-product-action ">
									<div class="btAction">
										<a id="cartBtn" class="btn_action white  wm_pc_cart" style="width: 200px; cursor: pointer;"> <span>ADD TO CART</span></a>
										<a id="buyNowBtn" class="btn_action purchase" style="text-decoration: none;  cursor: pointer;"> <span id="btnBuy" class="wm_pc_order">BUY NOW</span></a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 상세정보 내역 e -->
				</div>
			</div>
			<div class="xans-element- xans-product xans-product-additional">
				<!-- 상품상세정보 -->
				<div id="prdDetail">
					<div class="product_detail_tab_wrap">
						<ul id="product_detail_tab" class="" style="width: 1160px;">
							<li class="selected" style="width: 580px;"><a href="#"
								style="text-decoration: none;">상세 정보</a></li>
							<li class="" style="width: 580px;"><a id="go_review"
								style="text-decoration: none; cursor: pointer;">리뷰 (<c:out
										value="${fn:length(rvList)}" />)
							</a></li>
						</ul>
					</div>
					<div class="detail_info_warp"
						style="padding-top: 30px; width: 800px; margin-left: auto; margin-right: auto;">
						<c:forEach items="${prdtImglist}" var="prdtImglist">
							<img src="${prdtImglist.upPath}${prdtImglist.upUuidName}"
								style="width: 100%;">
						</c:forEach>
					</div>
				</div>
				<div class="prdReview"
					style="margin-top: 50px; width: 90%; margin-left: auto; margin-right: auto;">
					<hr style="margin-bottom: 20px;">
					<div class="reviewTitle" id="reviewTitle"
						style="width: 70%; height: 50px;">
						<h3 style="font-weight: 600; font-size: 13pt;">전체리뷰</h3>
						<!-- <img alt="" src="/resources/images/error-outline.png" style="width: 23px; position: relative;left: 75px; bottom: 40px;"> -->
					</div>
					<c:choose>
						<c:when test="${fn:length(rvList) eq 0}">
						</c:when>
						<c:otherwise>
							<div class="reviewBtn text-end" style="font-size: 10pt;">
								<button type="button" style="height: 45px; width: 95px;"
									id="reviewModal">
									리뷰작성&nbsp;<i class="fa-solid fa-pencil"></i>
								</button>
							</div>
						</c:otherwise>
					</c:choose>
					<div class="revireCategory"
						style="font-size: 10pt; margin-bottom: 25px;">
						<span style="padding: 0 5px; border-right: 1px solid #353535;">추천순</span>
						<span style="padding: 0 5px; border-right: 1px solid #353535;">최신순</span>
						<span style="padding: 0 5px;">평점순</span>
					</div>
					<hr>

					<!-- 댓글 s -->
					<c:choose>
						<c:when test="${fn:length(rvList) eq 0}">
							<div class="row text-center mt-3">
								<div class="col-10 text-center" style="padding-left: 200px;">
									<p>첫 번째 리뷰를 작성해주세요.</p>
									<br>
									<p>
										리뷰를 작성시 최대 <strong>1,000원</strong> 적립금을 드려요.
									</p>
								</div>
								<div class="col-2">
									<button type="button" id="reviewModal" class="noReviewAdd mt-4"
										style="border: 1px solid #ced4da; font-size: 10pt; width: 100px; border-radius: 5px;">
										첫 리뷰<br> 남기기
									</button>
								</div>
							</div>
						</c:when>
						<c:otherwise>
							<c:forEach items="${rvList}" var="rvList" varStatus="rvStatus">
								<div class=reviewDetail
									style="margin-bottom: 20px; border-bottom: 1px solid #DFDFDF;">
									<div class="row" style="width: 100%;">
										<div class="col">
											<div id="comment_area">
												<!-- prepend -->
												<div class="row"
													style="display: flex; align-items: center; margin-bottom: 20px;">
													<div class="col-2" style="font-size: 10pt; max-width: 150px;">
														<c:if test="${rvList.rvStar == 1}">
															<i class="fa-solid fa-star"></i>
															<i class="fa-regular fa-star"></i>
															<i class="fa-regular fa-star"></i>
															<i class="fa-regular fa-star"></i>
															<i class="fa-regular fa-star"></i>
														</c:if>
														<c:if test="${rvList.rvStar == 2}">
															<i class="fa-solid fa-star"></i>
															<i class="fa-solid fa-star"></i>
															<i class="fa-regular fa-star"></i>
															<i class="fa-regular fa-star"></i>
															<i class="fa-regular fa-star"></i>
														</c:if>
														<c:if test="${rvList.rvStar == 3}">
															<i class="fa-solid fa-star"></i>
															<i class="fa-solid fa-star"></i>
															<i class="fa-solid fa-star"></i>
															<i class="fa-regular fa-star"></i>
															<i class="fa-regular fa-star"></i>
														</c:if>
														<c:if test="${rvList.rvStar == 4}">
															<i class="fa-solid fa-star"></i>
															<i class="fa-solid fa-star"></i>
															<i class="fa-solid fa-star"></i>
															<i class="fa-solid fa-star"></i>
															<i class="fa-regular fa-star"></i>
														</c:if>
														<c:if test="${rvList.rvStar == 5}">
															<i class="fa-solid fa-star"></i>
															<i class="fa-solid fa-star"></i>
															<i class="fa-solid fa-star"></i>
															<i class="fa-solid fa-star"></i>
															<i class="fa-solid fa-star"></i>
														</c:if>
														<strong><c:out value="${rvList.rvStar}"/></strong> 
													</div>
													<div class="col-2" style="max-width: 100px;">
														<span style="font-size: 12pt;"><strong><c:out
																	value="${rvList.mmName}" /></strong></span>
													</div>
													<div class="col-2" style="max-width: 150px;">
														<span><c:out value="${rvList.rvCreDate }" /></span><br>
													</div>
													<c:forEach items="${ccgListGrade}" var="listGrade"
														varStatus="rvStatus">
														<div class="col-1" style="max-width: 100px;">
															<span style="font-size: 12pt;"><strong>
																<c:if test="${listGrade.ccOrder eq rvList.mmGrade}"><c:out value="${listGrade.ccName}" /></c:if>
															</strong></span>
														</div>
													</c:forEach>
													<div class="col">
														<div class="btnarea text-end">
															<c:choose>
																<c:when test="${rvList.lv_ing eq 1}">
																	<button class="recommend_btn" id="luvbtn${rvList.rvSeq}"
																		onclick="luv(${rvList.rvSeq})" type="button"
																		style="width: 67px; font-size: 10pt; background: rgb(0, 0, 0); color: rgb(255, 255, 255);">
																		<span class="value"><i
																			class="fa-regular fa-thumbs-up"></i>&nbsp;<span
																			id="luvCount${rvList.rvSeq}"><c:out
																					value="${rvList.lvCount}" /></span></span> <input type="hidden"
<%-- 																			value="${rvList.rvSeq }"> --%>
																	</button>
																</c:when>
																<c:otherwise>
																	<button class="recommend_btn" id="luvbtn${rvList.rvSeq}"
																		onclick="luv(${rvList.rvSeq})" type="button"
																		style="width: 67px; font-size: 10pt;">
																		<span class="value"><i
																			class="fa-regular fa-thumbs-up"></i>&nbsp;<span
																			id="luvCount${rvList.rvSeq}"><c:out
																					value="${rvList.lvCount}" /></span></span> <input type="hidden"
																			value="${rvList.rvSeq }">
																	</button>
																</c:otherwise>
															</c:choose>
														</div>
													</div>
												</div>
												<div class="row mb-3">
													<div class="col-2" style="padding-right: 0px;">
														<img src="${rvList.upPath}${rvList.upUuidName}" class="reviewImg">
													</div>
													<div class="col" style="padding-right: 0px;">
														<p style="margin-top: 0px;">
															<c:out value="${rvList.rvContents}" />
														</p>
													</div>
												</div>
												<!-- 관리자 댓글내용 s -->
												<!-- <div class="row mb-2" style="width: calc(70% + 55px); height:270px; border: 1px solid #DFDFDF;padding: 20px; margin-left: 5px; display: none;">
														<strong>포맨트</strong>
														<div class="col m-2" style="width: calc(70% + 55px); height:180px; border: 1px solid #DFDFDF; padding: 5px 5px; border-top-right-radius: 5px; border-bottom-left-radius: 5px; border-bottom-right-radius: 5px; background: #DFDFDF; color: #575757;">
															<p style="margin: 0px; font-size: 9pt; " >
																안녕하세요, 당신이 가장 빛나는 순간 포맨트 입니다.<br><br>
						
																고객님! 소중한 후기 진심으로 감사드립니다.<br>
																앞으로도 사용하시기 좋은 상품과 서비스를 제공해드릴 수 있도록 노력하는 포맨트가 되겠습니다.<br><br>
																
																제품 이용하시면서 궁금한 점이 있으시면 언제든지 Q&A 게시판에 글로 남겨주시거나<br>
																고객센터 운영시간에 전화연락 주시면 친절히 상담 도와드리겠습니다.<br><br>
																
																감사합니다 : )
															</p>
														</div>
													</div> -->
												<!-- 관리자 댓글내용 e -->
												<!-- <div class="row pb-2" style="border-bottom: 1px solid #DFDFDF;">
														<div class="col">
															<div class="cmShow" style="display: flex;justify-content: flex-end; cursor: pointer;">
																<span style="font-size: 12pt; font-weight: 600;">
																	<i  class="fa-regular fa-comment-dots"></i>&nbsp;<span style="color: #ff1c1c;">1개</span>의 댓글이 있습니다
																</span>
															</div>
														</div>
													</div> -->
												<!-- append -->
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
						</c:otherwise>
					</c:choose>
					<!-- 댓글 e -->
					<br> <br> <br> <br> <br> <br> <br>
					<br>

				</div>
			</div>
		</div>
		<!-- 리뷰모달 s -->
		<!-- <div class="messageWrap no-drag" id="modalDiv">
			<div class="messageBack"></div>
			<div class="messageBox" style="position: absolute; top: 294px;">
				<div class="messageInner">
					<div class="messageTitle">알림</div>
					<div class="messageTextWrap">
						<p class="messageText">작성 가능한 리뷰가 없습니다.</p>
					</div>
					<div class="messageButtons">
						<button id="closeModal" class="messageButton messageSuccess">확인</button>
					</div>
				</div>
			</div>
		</div> -->
		<div class="messageWrap no-drag" id="modalDiv">
			<div class="messageBack"></div>
			<div class="messageBox" style="position: absolute; top: 120px;">
				<div class="messageInner">
					<div class="messageTitle">
						<b>리뷰작성</b>
					</div>
					<div class="messageTextWrap">
						<div class="row mt-3 mb-3">
							<div class="col">
								<span>별점</span> <select id="rvStar" name="rvStar">
									<option value="">선택</option>
									<option value="1">1점</option>
									<option value="2">2점</option>
									<option value="3">3점</option>
									<option value="4">4점</option>
									<option value="5">5점</option>
								</select>
								<!-- <a class="rvStar"><i class="fa-solid fa-star"></i></a>
								<a class="rvStar"><i class="fa-solid fa-star"></i></a>
								<a class="rvStar"><i class="fa-solid fa-star"></i></a>
								<a class="rvStar"><i class="fa-regular fa-star"></i></a>
								<a class="rvStar"><i class="fa-regular fa-star"></i></a> -->
							</div>
						</div>
						<textarea rows="10" cols="40" id="rvContents" name="rvContents"
							placeholder="리뷰 내용을 입력해주세요"></textarea>
						<input type="file" id="rvImg" name="rvImg"
							style="border: 1px solid #ced4da"><br>
					</div>
					<div class="messageButtons">
						<button type="button" id="reviewInst"
							class="messageButton messageSuccess">등록</button>
						<button type="button" id="closeModal"
							class="messageButton messageSuccess">취소</button>
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
	// 모달 띄우기 코드
	const modal = document.getElementById("modalDiv");
    const buttonAddFeed = document.getElementById("reviewModal"); // 리뷰작성 버튼, 버튼 동시에 뜨게하면 이벤트 리스너에 null오류가 생겨 하나로 바꿈
	
	if($("#mmSeq").val() == null || $("#mmSeq").val() == '') {
		
	    buttonAddFeed.addEventListener("click", e => {
	    	if($("#mmSeq").val() == null || $("#mmSeq").val() == '') {
	    		swal({
				    title: "로그인후 사용가능한 서비스입니다.",  
					icon: "warning",
				    })
				    .then(function() {
				    	window.location = "/member/login";
				    });
	    		return false;
	    	}
		}); 
	} else {
		
	    buttonAddFeed.addEventListener("click", e => {
			modal.style.top = window.pageYOffset + 'px'; // top을 이용해 시작 y위치를 바꿔줌 
	    	modal.style.display = "flex";
			/* document.body.style.overflowY = "hidden"; // 스크롤 없애기 */
	    
		}); 
	}
    
 	// 모달 닫기 코드
    const buttonCloseModal = document.getElementById("closeModal");
    		
	buttonCloseModal.addEventListener("click", e => {
		modal.style.display = "none";
		document.body.style.overflowY = "visible";
	});
	
	// 리뷰 작성 코드
	$("#reviewInst").on("click", function() {
		
		if($("#rvStar").val() == null || $("#rvStar").val() == ''){
			alert("별점을 선택해주세요.");	
			return false;
		}
		if($("#rvContents").val() == null || $("#rvContents").val() == ''){
			alert("리뷰내용을 작성해주세요.");
			return false;
		}
		if($("#rvImg").val() == null || $("#rvImg").val() == ''){
			alert("첨부파일을 선택해주세요.");
			return false;
		}
		
		alert("회원님의 소중한 리뷰가 등록되었습니다!");
		form.attr("action", "/review/reviewInst").submit();
	});
	 
	// 리뷰 탭 클릭시 하단 리뷰로 focus
	$("#go_review").on("click", function() {
		$("#reviewTitle").attr("tabindex", -1).focus(); 
	});
	$(".detail-rating").on("click", function() {
		$("#reviewTitle").attr("tabindex", -1).focus();
	});
	
	
	// 댓글 좋아요 
	
	
	luv = function(rvSeq) {
		
		if($("#mmSeq").val() == null || $("#mmSeq").val() == '') {

			swal({
			    title: "로그인후 사용가능한 서비스입니다.",  
				icon: "warning",
			    })
			    .then(function() {
			    	window.location = "/member/login";
			    });
    		return false;

		}
		
		var luvUrl = "";
		var status = $("#luvbtn" + rvSeq).css('color');
		
		if(status == "rgb(0, 0, 0)") {
			luvUrl = "/luv/luvInst";
		} else {
			luvUrl = "/luv/luvDel";
		}
		 
		$.ajax({
			url: luvUrl
			,type: 'POST'
			,dataType: 'json'
			,data: {
				prSeq: $("#prSeq").val()
				,mmSeq: $("#mmSeq").val()
				,rvSeq: rvSeq
			},
			success: function(result) {
				if(result.list != null) {
					
					/* 추천 클릭시 count 숫자 변경 */
					$("#luvCount"+rvSeq).html(result.list.length);
					
					/* status에 따라 버튼 디자인 변경 */
					if(status == "rgb(0, 0, 0)") {
						$("#luvbtn" + rvSeq).css('background', "rgb(0, 0, 0)");
						$("#luvbtn" + rvSeq).css('color', "rgb(255, 255, 255)");
						/* $("#luv").text(""); */
					} else {
						$("#luvbtn" + rvSeq).css('background', "rgb(255, 255, 255)");
						$("#luvbtn" + rvSeq).css('color', "rgb(0, 0, 0)");
						/* $("#luv").text(""); */
					}
					
				}
			},
			error: function() {
				alert("ajax error...!");
			}
		})
		
	};
	
	var prAmount = $("#prAmount").val();
	var prPrice = $("#prPrice").val();
	
	$("#plus").on("click", function() {
		
		// 문자열 앞에 +를 써주면 int형으로 사용 가능
		var num = +$("#prAmount").val() + 1;
		
		var price = prPrice * num;
		
		console.log(price);
		
		$("#prAmount").val(num);
		
		$("#prAmount2").html(num);
		
		$("#prTotalPrice").html(price.toLocaleString() + "원");
		
		$("#prTotalPrice2").val(price);
		$("#lastPrice").val(price);
	});
	
	$("#minus").on("click", function() {
		
		if($("#prAmount").val() < 2 ) {
			alert("수량을 1개 이하로 변경이 불가능합니다.");
			return false;
		}
		// 문자열 앞에 +를 써주면 int형으로 사용 가능
		var num = +$("#prAmount").val() - 1;
		
		var price = prPrice * num;
			
		$("#prAmount").val(num);
		$("#prAmount2").html(num);
		
		$("#prTotalPrice").html(price.toLocaleString() + "원");
		
		$("#prTotalPrice2").val(price);
	});
	
	$("#cartBtn").on("click", function() {
		
		if($("#mmSeq").val() == null || $("#mmSeq").val() == '') {
			
    		swal({
			    title: "로그인후 사용가능한 서비스입니다.",  
				icon: "warning",
			    })
			    .then(function() {
			    	window.location = "/member/login";
			    });
    		return false;

		}
		
		form.attr("action", "/product/bskInst").submit();
		
	});
	
	$("#buyNowBtn").on("click", function() {
		
		if($("#mmSeq").val() == null || $("#mmSeq").val() == '') {
			
    		swal({
			    title: "로그인후 사용가능한 서비스입니다.",  
				icon: "warning",
			    })
			    .then(function() {
			    	window.location = "/member/login";
			    });
    		return false;

		}
		
		form.attr("action", "/product/buyNowInst").submit();
		
	});
	
	</script>
</body>
</html>
