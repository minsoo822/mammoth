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
	<link href="/resources/css/index.css" rel="stylesheet">
	

	<style>
		div	{
			/* border: solid 1px orange; */
		}
		    .path {
	    overflow: hidden;
	    height: 60px;
	    line-height: 30px;
	    *zoom: 1;
	}
	.path ol {
	    float: right;
	    background: url(/resources/images/ico_home.png) no-repeat 0 8px;
	    padding-left: 16px;
	    background-size: 15px 14px;
	    
	}
	.path li {
	    float: left;
	    padding: 0 0 0 12px;
	    margin: 0 0 0 8px;
	    color: #888888;
	    background: url(/resources/images/ico_home_next.png) no-repeat 0 10px;
	}
	.path li:first-child {
	    background: none;
	    display: none;
	}
	.path span {
	    overflow: hidden;
	    position: absolute;
	    width: 0;
	    height: 0;
	    white-space: nowrap;
	    text-indent: 100%;
	}
	.path li a {
	    color: #888888;
	}
	li {
	    list-style: none;
	}
	.path li strong, .path li strong a {
	    color: #333333;
	}
	.titleArea {
	    min-height: 70px;
	    margin: 0;
	}
	.titleArea h2 {
	    display: block;
	    padding: 0 0 0 0;
	    margin-top: -55px;
	    font-weight: 500;
	    color: #0e0e0e;
	    font-size: 18px;
	    *display: inline;
	    *zoom: 1;
	}
	.xans-order-basketpackage .xans-order-tabinfo {
	    margin: 40px 0 0;
	}
	.ec-base-tab {
	    position: relative;
	}
	.ec-base-tab .menu {
	    margin: 0 0 20px;
	    border: 1px solid #cbcdce;
	    border-bottom-color: #202020;
	    border-left: 0;
	    background: #f2f2f2;
	    box-sizing: border-box;
	    -webkit-box-sizing: border-box;
	    -moz-box-sizing: border-box;
	}
	.ec-base-tab .menu li {
	    float: left;
	    border-left: 1px solid #cbcdce;
	    background: #f2f2f2;
	}
	.ec-base-tab .menu li.selected:first-child a {
	    left: -1px;
	}	
	.ec-base-tab.typeLight .menu li.selected a {
	    margin: 0 0 -2px;
	    border-bottom: 1px solid #fff;
	    color: #404040;
	    background: #fff;
	}
	.ec-base-tab .menu:after {
	    content: "";
	    display: block;
	    clear: both;
	}
	.xans-order-basketpackage .xans-order-empty p {
	    margin: 50px 0;
	    text-align: center;
	    font-weight: bold;
	    color: #707070;
	}
	.ec-base-button {
	    padding: 10px 0;
	    text-align: center;
	}
	.xans-order-basketpackage .xans-order-totalorder {
	    margin: 10px 0 40px;
	}
	.ec-base-button.justify {
	    position: relative;
	}
	span.btn_neo_act a, a.btn_neo_act {
	    display: inline-block;
	    min-width: 129px;
	    min-height: 38px;
	    line-height: 38px;
	    font-size: 16px;
	    text-align: center;
	    background: #000000;
	    color: #fff;
	    border-radius: 3px;
	    border: 1px solid #000000;
	}
	span.btn_neo_act a, a.btn_neo_act {
	    display: inline-block;
	    min-width: 129px;
	    min-height: 38px;
	    line-height: 38px;
	    font-size: 16px;
	    text-align: center;
	    background: #369ddc;
	    color: #fff;
	    border-radius: 3px;
	    border: 1px solid #369ddc;
	}
	span.btn_neo_act.gray a, a.btn_neo_act.gray {
    color: #fff;
    background: #8C8C8C;
    border: 1px solid #8C8C8C;
}
.ec-base-button .gRight {
    float: right;
    text-align: right;
}

.ec-base-button.justify .gRight {
    position: absolute;
    right: 0;
}
span.btn_neo_act.white a, a.btn_neo_act.white {
    color: #4d4b48;
    background: #ffffff;
    border: 1px solid #909090;
}
div.ec-base-help {
    margin: 20px 0;
    border: 1px solid #d6d4d4;
    line-height: 18px;
}
div.ec-base-help > h2, div.ec-base-help > h3 {
    padding: 9px 0 6px 10px;
    border-bottom: 1px solid #e8e7e7;
    color: #101010;
    font-size: 12px;
    background: #fbfbfb;
}
div.ec-base-help .inner {
    padding: 0 9px 12px;
}
div.ec-base-help h4:first-child {
    margin-top: 13px;
}
div.ec-base-help h4 {
    margin: 22px 0 -4px;
    color: #404040;
    font-size: 12px;
    font-weight: normal;
}
.ec-base-box.typeMember {
    padding: 0;
}
.ec-base-box {
    padding: 20px;
    margin-left: auto;
    margin-right: auto;
    border: 5px solid #e8e8e8;
    color: #404040;
}
.xans-order-dcinfo {
    margin: 20px 0;
    color: #353535;
    line-height: 1.5;
}
.ec-base-box.typeMember .information {
    display: table;
    table-layout: fixed;
    padding: 10px 0;
    width: 100%;
    box-sizing: border-box;
}
.ec-base-box.typeMember .information > .title {
    vertical-align: middle;
}
.ec-base-box.typeMember .information > .title, .ec-base-box.typeMember .information > .thumbnail {
    display: table-cell;
    padding: 0 15px;
    width: 70px;
    text-align: center;
    vertical-align: middle;
}
.xans-order-dcinfo h3 {
    font-size: 12px;
}
.ec-base-box.typeMember .information .description {
    display: table-cell;
    padding: 0 10px;
    width: auto;
    line-height: 1.5em;
    border-left: 1px solid #e8e8e8;
    vertical-align: middle;
}
.xans-order-dcinfo .description .mileage {
    margin: 6px 0 0;
    padding: 10px 0 0;
    border-top: 1px solid #e8e8e8;
    *zoom: 1;
}
.xans-order-dcinfo .description .mileage li {
    float: left;
    margin: 0 40px 0 0;
}
.xans-order-dcinfo .description .mileage li a {
    text-decoration: none;
    color: #000;
}
.xans-order-dcinfo .description .mileage li strong {
    color: #008bcc;
}
.xans-order-basketpackage .orderListArea .title {
    height: 38px;
    margin: 20px 0 0;
    padding: 0 0 0 9px;
    border: 1px solid #d7d5d5;
    border-bottom: 0;
    line-height: 38px;
    background: #f6f6f6;
}
.xans-order-basketpackage .orderListArea .title h3 {
    color: #353535;
    font-size: 12px;
}
.xans-order-basketpackage .orderListArea .title + table {
    margin: 0;
}
table {
    width: 100%;
    border: 0;
    border-spacing: 0;
    border-collapse: collapse;
}
.ec-base-table.typeList table {
    border-top: 1px solid #d7d5d5;
}
.ec-base-table table {
    position: relative;
    margin: 10px 0 0;
    border: 1px solid #d7d5d5;
    border-top: 0;
    color: #fff;
    line-height: 1.5;
}
caption {
    display: none;
}
colgroup {
    display: table-column-group;
}
.ec-base-table th:first-child {
    border-left: 0;
}
.ec-base-table thead th {
    padding: 11px 0 10px;
    border-left: 1px solid #dfdfdf;
    border-bottom: 1px solid #dfdfdf;
    color: #353535;
    vertical-align: middle;
    font-weight: normal;
    background: #fbfafa;
}
tfoot {
    display: table-footer-group;
    vertical-align: middle;
    border-color: inherit;
}
.ec-base-table .right {
    text-align: right;
}
.ec-base-table.gBorder td:first-child {
    border-left: 0;
}
.ec-base-table.typeList tfoot td {
    padding: 15px 10px 17px;
    background: #fbfafa;
}
.ec-base-table.gBorder td {
    border-left: 1px solid #dfdfdf;
}
.ec-base-table.typeList td {
    padding: 8px 10px 7px;
}
.ec-base-table td {
    padding: 11px 10px 10px;
    border-top: 1px solid #dfdfdf;
    color: #353535;
    vertical-align: middle;
}
.displaynone {
    display: none;
}
.xans-order-basketpackage .ec-base-table tfoot td .gLeft {
    float: left;
    margin: 6px 0 0;
}
.gIndent10 {
    margin-left: 10px;
}
.txtEm {
    color: #008bcc;
}
.txt18 {
    font-size: 18px;
    letter-spacing: -1px;
}
.ec-base-table .center {
    text-align: center;
}
.ec-base-table.typeList.gBorder tbody td {
    border-color: #eee;
}
.ec-base-table.typeList .center td, .ec-base-table.typeList td.center {
    padding-left: 0;
    padding-right: 0;
}
.xans-order-basketpackage .ec-base-table td.thumb img {
    max-width: 80px;
}
.ec-base-table img {
    vertical-align: middle;
}
.ec-base-table.gBorder td.gClearLine {
    border-left: 0;
}
.xans-order-basketpackage .ec-base-table td.button img {
    margin: 1px 0;
}
.ec-base-table.typeList .center td.right {
    padding-right: 10px;
}
.txtInfo {
    color: #707070;
}
.ec-base-qty {
    position: relative;
    display: inline-block;
    width: 50px;
    margin: 0 1px 0 0;
    text-align: left;
}
.ec-base-qty input[type="text"] {
    width: 22px;
    height: 23px;
    padding: 0 0 0 5px;
    line-height: 25px;
    border: 1px solid #d4d8d9;
    border-radius: 3px 0 0 3px;
}
.ec-base-qty .up {
    position: absolute;
    left: 27px;
    top: 0;
}
.ec-base-qty .down {
    position: absolute;
    left: 27px;
    bottom: 0;
}
.ec-base-table.typeList .center td.left {
    padding-left: 10px;
}
.xans-order-basketpackage .ec-base-table td div.option, .xans-order-basketpackage .ec-base-table td ul.option > li {
    margin: 9px 0 0;
    color: #707070;
    line-height: 16px;
}
.ec-base-table .left {
    text-align: left;
}
.xans-order-basketpackage .xans-order-selectorder {
    margin: 0 0 40px;
}
.ec-base-button .gLeft {
    float: left;
    text-align: left;
}
.ec-base-button .text {
    margin: 0 6px 0 10px;
    color: #353535;
    line-height: 24px;
}
.ec-base-button:after {
    display: block;
    content: "";
    clear: both;
}
.xans-order-basketpackage .ec-base-table.total table {
    border-color: #777;
}
.xans-order-basketpackage .ec-base-table.total table th {
    height: 39px;
}
.xans-order-basketpackage .ec-base-table.total table td {
    height: 58px;
}
.xans-order-basketpackage .ec-base-table.total table td .box {
    word-break: normal;
}
.txt16 {
    font-size: 16px;
}
.xans-order-basketpackage .ec-base-table.total table td .txt23 {
    font-size: 23px;
    letter-spacing: -1px;
}
	</style>
</head>
<body>
	<form method="post" id="mainForm">
	<input type="hidden" name="mmSeq" id="mmSeq" value="${sessSeq }">
	<input type="hidden" name="prSeq" id="prSeq" value="">
	<input type="hidden" name="checkboxSeqArray" >
	<!-- header  -->
	<%@include file="/resources/include/header.jsp"%>
	
    <div class="container">
    	<div class="path">
    		<span>현재 위치</span>
    		<ol>
    			<li>
    				<a href="#">홈</a>
    			</li>
    			<li>
		    		<strong>장바구니</strong>
    			</li>
    		</ol>
    	</div>
    	<div class="titleArea">
    		<h2 style="font-weight: bold;">장바구니</h2>
    	</div>
    	<div class="xans-element- xans-order xans-order-basketpackage ">
    		<!-- 로그인했을때 넣고 안했을때 히든처리 s -->
    		<div class="xans-element- xans-order xans-order-dcinfo ec-base-box typeMember  ">
    			<div class="information">
		            <h3 class="title" style="width: 100px;">지금 고객님들이 가장 많이 구매한 상품</h3>
		            <div class="description">
		                <div class="member ">
		                    <p><strong>김민수</strong> 님은, [웰컴] 회원이십니다.</p>
						</div>
		                <ul class="mileage">
							<li>
								<a href="/myshop/mileage/historyList.html" style="color: 000;">가용적립금 : <strong>0원</strong></a>
							</li>
		                    <li>
		                    	<a href="/myshop/coupon/coupon.html" style="color: 000;">쿠폰 : <strong>7개</strong></a>
		                    </li>
		                </ul>
					</div>
		        </div>
    		</div>
    		<!-- 로그인했을때 넣고 안했을때 히든처리 e -->
    		<div class="xans-element- xans-order xans-order-tabinfo ec-base-tab typeLight ">
    			<ul class="menu" style="padding-left: 0px;">
    				<li class="selected ">
    					<a href="#">국내배송상품 (<c:out value="${selectListCount }"/>)</a>
    				</li>
    				<!-- <li class=" ">
    					<a href="#">해외배송상품 (0)</a>
    				</li> -->
    			</ul>
    		</div>
			<c:choose>
				<c:when test="${selectListCount eq 0 }">
					<!-- 장바구니가 비어있을때 s -->
		    		<div class="xans-element- xans-order xans-order-empty ">
		    			<p>장바구니가 비어 있습니다.</p>
		    		</div>
		    		<!-- 장바구니가 비어있을때 e -->
				</c:when>
				<c:otherwise>
					<div class="orderListArea ec-base-table typeList gBorder">
		    			<!-- <div class="xans-element- xans-order xans-order-normtitle title ">
		    				<h3 style="margin: 0px;">87% 이상의 고객님들이 함께 구매한 상품</h3>
						</div> -->
						<table border="1" summary class="xans-element- xans-order xans-order-normnormal xans-record-">
							<caption>기본배송</caption>
							<colgroup>
								<col style="width:27px">
								<col style="width:92px">
								<col style="width:auto">
								<col style="width:98px">
								<col style="width:75px">
								<col style="width:98px">
								<col style="width:98px">
								<col style="width:85px">
								<col style="width:98px">
								<col style="width:110px">
							</colgroup>
							<thead>
								<tr style="text-align: center;">
									<th scope="col">
										<input type="checkbox" onclick="" id="checkboxAll" style="cursor: pointer;">
									</th>
				                    <th scope="col">이미지</th>
				                    <th scope="col">상품정보</th>
				                    <th scope="col">판매가</th>
				                    <th scope="col">수량</th>
				                    <th scope="col" class="mileage">적립금</th>
				                    <th scope="col">배송구분</th>
				                    <th scope="col">배송비</th>
				                    <th scope="col">합계</th>
				                    <th scope="col">선택</th>
				                </tr>
			                </thead>
			                 <tbody class="xans-element- xans-order xans-order-list center">
			                	<c:forEach items="${list }" var="bskList" varStatus="status">
				                	<tr class="xans-record-">
				                		<td><input type="checkbox" id="basket_chk_id_0" name="checkboxSeq" style="cursor: pointer;" value="<c:out value="${bskList.prSeq }"></c:out>"></td>
				                		<td class="thumb gClearLine">
				                			<a href="#" id="param1" style="text-decoration: none;">
				                				<img src="${bskList.upPath }${bskList.upUuidName}" alt="">
			                				</a>
			               				</td>
				                		<td class="left gClearLine">
											<a href="#" style="text-decoration: none; color: #000;">
												<strong><c:out value="${bskList.prName }"></c:out></strong>
											</a>
											<!-- <ul class="xans-element- xans-order xans-order-optionall option" style="padding-left: 0px;">
												<li class="xans-record-">
													<strong class="displaynone">포맨트 시그니처 퍼퓸 코튼 브리즈</strong>
													[옵션: 향수 단품/코튼브리즈 1개] 
													<span class="displaynone">(1개)</span>
													<br>
													<span class="">
														<a href="#none" onclick="Basket.showOptionChangeLayer('option_modify_layer_0', $(this))" class="">
															<img src="/resources/images/btn_option.gif" alt="옵션변경">
														</a>
													</span>
												</li>
											</ul> -->
				                		</td>
				                		<td class="right">
				                	        <div class="">
												<strong><input id="productPrice" type="text" value="${bskList.prTotalPrice }" style="width: 60px; text-align: right; font-weight: 600; border: none; padding-bottom: 4px;">원</strong>
											</div>
					                    </td>
				                		<td>
				                			<span class="">
				                				<span class="ec-base-qty">
				                					<input id="amount${bskList.bskSeq}" name="" size="2" value="${bskList.bskAmount }" type="text" style="width: 28px;">
				                					<a onclick="add(${bskList.bskSeq })" style="text-decoration: none;">
				                						<img src="/resources/images/btn_quantity_up.gif" alt="수량증가" class="up">
			                						</a>
			                						<a onclick="minus(${bskList.bskSeq })" style="text-decoration: none;">
			                							<img src="/resources/images/btn_quantity_down.gif" alt="수량감소" class="down">
			                						</a>
			               						</span>
				                			</span>
				                		</td>
				                		<td>
				                			<span class="txtInfo">-</span>
				                		</td>
				                		<td>
				                			<div class="txtInfo">기본배송<br></div>
				                		</td>
				                		<td rowspan="1" class="">
											<p class="displaynone">0원<span class="displaynone"><br></span><br></p>무료
										</td>
				                		<td class="right">
				                			<strong><input readonly id="productTotalPrice${bskList.bskSeq }" type="text" value="${bskList.bskSell_Price }" style="width: 60px; text-align: right; font-weight: 600; border: none; padding-bottom: 4px;">원</strong>
										</td>
				                		<td class="button">
					                        <a href="javascript:;" class="" onclick="Basket.orderBasketItem(0);" style="text-decoration: none; color: #000;">
					                        	<img src="/resources/images/btn_order.gif" alt="주문하기">
				                        	</a>
					                        <!-- <a href="javascript:;" onclick="BasketNew.moveWish(0);" style="text-decoration: none; color: #000;">
					                        	<img src="/resources/images/btn_wish.gif" alt="관심상품등록">
					                        </a> -->
					                        <a href="javascript:;" onclick="oneDel(${bskList.prSeq})" style="text-decoration: none; color: #000;">
					                        	<img src="/resources/images/btn_delete.gif" alt="삭제">
					                        </a>
					                    </td>
				                	</tr>
				                </c:forEach>    
			                </tbody>
			                <tfoot class="right">
				                <tr>
									<td colspan="10">
									<span class="gLeft">[기본배송]</span> 상품구매금액 
									<strong><c:out value="${totalPrice }"/><span class="displaynone">()</span></strong>
									<span class="displaynone"> </span>
									<span class="displaynone"> + 부가세 <span class="displaynone"> </span></span> + 배송비 0 (무료)
									<span class="displaynone"> </span> 
									<span class="displaynone"> - 상품할인금액 0 </span> = 합계 : <strong class="txtEm gIndent10"><span class="txt18">49,000</span>원</strong> 
									<span class="displaynone"> </span>
									</td>
			                	</tr>
			                </tfoot>
						</table>
						<!-- 선택상품 제어 버튼 -->
						<div class="xans-element- xans-order xans-order-selectorder ec-base-button ">
							<span class="gLeft">
					            <strong class="text">선택상품을</strong>
					            <a href="#none" onclick="" id="MultiDel">
					          	  <img src="/resources/images/btn_delete2.gif" alt="삭제하기">
					            </a>
					        </span>
					        <span class="gRight">
					            <a href="#none" onclick="allDel()">
					            	<img src="/resources/images/btn_clear.gif" alt="장바구니비우기">
					            </a>
					        </span>
						</div>
						<!-- 총 주문금액 : 국내배송상품 -->
						<div class="xans-element- xans-order xans-order-totalsummary ec-base-table typeList gBorder total  ">
							<table border="1" summary>
								<caption>총 주문금액</caption>
								<colgroup>
									<col style="width:17%;">
									<col style="width:17%;" class="displaynone">
									<col style="width:19%;">
									<col style="width:17%;" class="displaynone">
									<col style="width:auto;">
								</colgroup>
								<thead>
									<tr style="text-align: center;">
										<th scope="col"><strong>총 상품금액</strong></th>
					                    <th scope="col"><strong>총 배송비</strong></th>
					                    <th scope="col"><strong>결제예정금액</strong></th>
					                </tr>
				                </thead>
								<tbody class="center">
									<tr>
										<td>
											<div class="box txt16">
												<strong>
													<span class="txt23">
														<span class="total_product_price_display_front" id="">49,000</span>
													</span>원
												</strong> 
											</div>
										</td>	
										<td>
											<div class="box shipping txt16">
												<strong class="txt23">+ </strong>
												<strong>
													<span class="txt23">
														<span class="total_delv_price_front">0</span>
													</span>원
												</strong>
											</div>
										</td>	
										<td>
											<div class="box txtEm txt16">
												<strong class="txt23">= </strong><strong><span class="txt23">108,000</span>원</strong> 
											</div>
										</td>			
									</tr>
								</tbody>		
							</table>
						</div>
		    		</div>
				</c:otherwise>
			</c:choose>
    		<div class="xans-element- xans-order xans-order-totalorder ec-base-button justify">
    			<a href="#none" onclick=""  id="" class=" btn_neo_act " style="text-decoration: none;">전체상품주문</a>
    			<a href="#none" onclick="" class="btn_neo_act gray " style="text-decoration: none;">선택상품주문</a>
    			<span class="gRight">
		            <a href="/" class="btn_neo_act white" style="text-decoration: none;">쇼핑계속하기</a>
		        </span>
		        <div style="color: #ff0000; padding: 20px 0 4px 0; letter-spacing: -1px;width: 300px;margin: 0 auto;" class="xans-element- xans-layout xans-layout-statelogoff ">
		        ! 네이버페이 구매시 회원혜택을 받기 어렵습니다.
				</div>
				<div id=" " style="margin: 10px 0;"></div>
    		</div>
    	</div>
    	<div class="xans-element- xans-order xans-order-basketguide ec-base-help ">
    		<h3 style="margin: 0px;">이용안내</h3>
    		<div class="inner">
    			<h4>장바구니 이용안내</h4>
    			<ol style="padding-left: 20px;">
					<li>1️⃣ 해외배송 상품과 국내배송 상품은 함께 결제하실 수 없으니 장바구니 별로 따로 결제해 주시기 바랍니다.</li>
		            <li>2️⃣ 해외배송 가능 상품의 경우 국내배송 장바구니에 담았다가 해외배송 장바구니로 이동하여 결제하실 수 있습니다.</li>
		            <li>3️⃣ 선택하신 상품의 수량을 변경하시려면 수량변경 후 [변경] 버튼을 누르시면 됩니다.</li>
		            <li>4️⃣ [쇼핑계속하기] 버튼을 누르시면 쇼핑을 계속 하실 수 있습니다.</li>
		            <li>5️⃣ 장바구니와 관심상품을 이용하여 원하시는 상품만 주문하거나 관심상품으로 등록하실 수 있습니다.</li>
		            <li>6️⃣ 파일첨부 옵션은 동일상품을 장바구니에 추가할 경우 마지막에 업로드 한 파일로 교체됩니다.</li>
		        </ol>
    			<h4>무이자할부 이용안내</h4>
   				<ol style="padding-left: 20px;">
					<li>1️⃣ 상품별 무이자할부 혜택을 받으시려면 무이자할부 상품만 선택하여 [주문하기] 버튼을 눌러 주문/결제 하시면 됩니다.</li>
		            <li>2️⃣ [전체 상품 주문] 버튼을 누르시면 장바구니의 구분없이 선택된 모든 상품에 대한 주문/결제가 이루어집니다.</li>
		            <li>3️⃣ 단, 전체 상품을 주문/결제하실 경우, 상품별 무이자할부 혜택을 받으실 수 없습니다.</li>
		        </ol>
    		</div>
    	</div>
    </div>
	</form>
	<!-- footer -->
	<%@include file="/resources/include/footer.jsp"%>
	
	<!--  스크립트  -->		
	<%@include file="/resources/include/script.jsp"%>
	
	<script>
	$(document).ready(function() {
		$("#checkboxAll").click(function() {
			if($("#checkboxAll").is(":checked")) $("input[name=checkboxSeq]").prop("checked", true);
			else $("input[name=checkboxSeq]").prop("checked", false);
		});
	
		$("input[name=checkboxSeq]").click(function() {
			var total = $("input[name=checkboxSeq]").length;
			var checked = $("input[name=checkboxSeq]:checked").length;
	
			if(total != checked) $("#checkboxAll").prop("checked", false);
			else $("#checkboxAll").prop("checked", true); 
		});
	});
	
	var prSeq = $("#prSeq");
	
	var checkboxSeqArray = [];
	
	oneDel = function(key) {
		swal({
			  title: "상품을 삭제하시겠습니까?",
			  text: "장바구니에 담긴 제품이 삭제될수있습니다!",
			  icon: "warning",
			  buttons: true,
			  dangerMode: true,
			})
			.then((willDelete) => {
			  if (willDelete) {
			    swal("상품이 장바구니에서 삭제되었습니다!", {
			      icon: "success",
			    })
			    .then(function() {
			    	prSeq.attr("value", key);
					form.attr("action" , "/basket/oneDel").submit();
			    });
			  } else {
			    swal("변동사항 없습니다");
			  }
			});
	};
	
	allDel = function() {
		swal({
			  title: "장바구니를 비우시겠습니까?",
			  text: "장바구니 목록이 전체 삭제됩니다!",
			  icon: "warning",
			  buttons: true,
			  dangerMode: true,
			})
			.then((willDelete) => {
			  if (willDelete) {
			    swal("상품이 장바구니에서 삭제되었습니다!", {
			      icon: "success",
			    })
			    .then(function() {
					form.attr("action" , "/basket/allDel").submit();
			    });
			  } else {
			    swal("변동사항 없습니다");
			  }
			});
	};
	
	$("#MultiDel").on("click", function() {
		swal({
			  title: "선택하신 상품을 삭제하시겠습니까?",
			  text: "선택하신 제품이 삭제될수있습니다!",
			  icon: "warning",
			  buttons: true,
			  dangerMode: true,
			})
			.then((willDelete) => {
			  if (willDelete) {
			    swal("선택하신 제품이 삭제되었습니다!", {
			      icon: "success",
			    })
			    .then(function() {
			    		$("input[name=checkboxSeq]:checked").each(function() { 
			    			checkboxSeqArray.push($(this).val());
			    		});
			    		$("input:hidden[name=checkboxSeqArray]").val(checkboxSeqArray);
			    		
			    		form.attr("action", "/basket/checkDel").submit();
			    });
			  } else {
			    swal("변동사항 없습니다");
			  }
			});
	});
	window.onload = function(){
		
		var productTotalPrice = $("#productTotalPrice").val();
		var productPrice = $("#productPrice").val();
		
		var Total [];
		
		
		
		add = function(key) {
			
			var num = +$("#amount"+key).val() + 1;
			var productTotalPriceAdd = productPrice * num;
			
			
			$("#amount"+key).val(num);
			$("#productTotalPrice"+key).val(productTotalPriceAdd.toLocaleString());
		};
		
		minus = function(key) {
			var num = +$("#amount"+key).val() - 1;
			
			if(num < 1) {
				alert("수량을 1개 이하로 변경이 불가능합니다.")
				$("#amount"+key).val(1);
			} else {
				var basketTotalPriceminus = productPrice * num;
				
				$("#amount"+key).val(num);
				$("#productTotalPrice"+key).val(basketTotalPriceminus.toLocaleString());
			}
		};
		
		
	};
	
	</script>	
</body>
</html>
