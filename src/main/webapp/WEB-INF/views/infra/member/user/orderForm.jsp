<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>
<jsp:useBean id="CodeServiceImpl" class="com.mammoth.infra.modules.code.CodeServiceImpl" />

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
			.titleArea p {
		    display: inline-block;
		    margin: 0 0 0 6px;
		    padding: 0 0 0 10px;
		    color: #939393;
		    background: url(/resources/images/ico_bar.gif) no-repeat 0 0;
		    *display: inline;
		    *zoom: 1;
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
.xans-order-form .title {
    margin: 40px 0 10px 10px;
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
}
.xans-order-dcinfo .description .mileage li strong {
    color: #008bcc;
}
.xans-order-form .controlInfo {
    padding: 10px 0 8px 10px;
    border-top: 1px solid #e8e5e4;
    color: #f76560;
    font-size: 11px;
    line-height: 1.5;
    background: #fff8f5;
}
.xans-order-form .controlInfo li {
    padding: 0 0 0 23px;
    background: url(../../images/ico_info.gif) no-repeat 0 1px;
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
thead {
    display: table-header-group;
    vertical-align: middle;
    border-color: inherit;
}
.ec-base-table table {
    position: relative;
    margin: 10px 0 0;
    border: 1px solid #d7d5d5;
    border-top: 0;
    color: #fff;
    line-height: 1.5;
}
tr {
    display: table-row;
    vertical-align: inherit;
    border-color: inherit;
}
.ec-base-table table {
    position: relative;
    margin: 10px 0 0;
    border: 1px solid #d7d5d5;
    border-top: 0;
    color: #fff;
    line-height: 1.5;
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
.ec-base-table .right {
    text-align: right;
}
tfoot {
    display: table-footer-group;
    vertical-align: middle;
    border-color: inherit;
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
.xans-order-form .ec-base-table tfoot td .gLeft {
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
.ec-base-table.gBorder td.gClearLine {
    border-left: 0;
}
.xans-order-form .ec-base-table td.thumb img {
    max-width: 75px;
}
.ec-base-table.typeList .center td.left {
    padding-left: 10px;
}
.xans-order-form .ec-base-table td div.option, .xans-order-form .ec-base-table td ul.option > li {
    margin: 9px 0 0;
    color: #707070;
    line-height: 16px;
}
.ec-base-table .left {
    text-align: left;
}
.xans-order-form .controlInfo.typeBtm {
    margin: -1px 0 0;
    border-top: 0;
    border-bottom: 1px solid #e8e5e4;
}
.xans-order-form .controlInfo {
    padding: 10px 0 8px 10px;
    border-top: 1px solid #e8e5e4;
    color: #f76560;
    font-size: 11px;
    line-height: 1.5;
    background: #fff8f5;
}
.xans-order-form .controlInfo li {
    padding: 0 0 0 23px;
    background: url(../../images/ico_info.gif) no-repeat 0 1px;
}
span.ec-base-help, p.ec-base-help, ul.ec-base-help li {
    margin: 2px 9px;
    padding: 1px 0 1px 20px;
    line-height: 1.4;
    background: url(//img.echosting.cafe24.com/skin/base/common/ico_info.gif) no-repeat 0 2px;
}
.xans-order-form .ec-base-button {
    padding: 10px 0 50px;
    border-bottom: 1px solid #868686;
}
.ec-base-button {
    padding: 10px 0;
    text-align: center;
}
.ec-base-button .gLeft {
    float: left;
    text-align: left;
}.ec-base-button .text {
    margin: 0 6px 0 10px;
    color: #353535;
    line-height: 24px;
}
.xans-order-form .orderArea .title .required {
    margin: -15px 0 0;
    color: #353535;
    text-align: right;
}
.xans-order-form .orderArea .title .required img {
    vertical-align: middle;
}
.ec-base-table tbody th {
    padding: 11px 0 10px 18px;
    border: 1px solid #dfdfdf;
    border-bottom-width: 0;
    color: #353535;
    text-align: left;
    font-weight: normal;
    background-color: #fbfafa;
}
.xans-order-form .ec-base-table.typeWrite td {
    color: #707070;
}
.ec-base-table.typeWrite td {
    padding: 8px 10px 7px;
}
.xans-order-form #oname, .xans-order-form #oname2, .xans-order-form #rname, .xans-order-form #fname, .xans-order-form #fname2, .xans-order-form #english_oname, .xans-order-form #pron_name, .xans-order-form #si_gun_dosi, .xans-order-form #ju_do, .xans-order-form #ocity, .xans-order-form #ostate {
    width: 180px;
}
input[type=text], input[type=password] {
    height: 18px;
    line-height: 20px;
    padding: 2px 4px;
    border: 1px solid #d5d5d5;
    color: #353535;
    font-size: 12px;
}
input, select, textarea {
    font-size: 100%;
    color: #353535;
    vertical-align: middle;
}
.xans-order-form .ec-base-table.typeWrite td {
    color: #707070;
}
.ec-base-table.typeWrite td {
    padding: 8px 10px 7px;
}
.gBlank5 {
    display: block;
    margin-top: 5px;
}
.txtInfo {
    color: #707070;
}
.xans-order-form #oaddr1, .xans-order-form #oaddr2, .xans-order-form #raddr1, .xans-order-form #raddr2, .xans-order-form #faddress, .xans-order-form #faddress2 {
    width: 450px;
    margin: 5px 5px 0 0;
}
.xans-order-form .zipcode_red_em {
    color: #f00;
    margin: 0 0 0 10px;
}
textarea {
    padding: 5px 6px;
    border: 1px solid #d5d5d5;
    line-height: 1.5;
}
.xans-order-form .payArea {
    overflow: hidden;
    position: relative;
    padding: 0 241px 0 0;
    border: 1px solid #777;
    color: #353535;
    line-height: 1.5;
}
.xans-order-form .payArea .payment {
    float: left;
    width: 100%;
}.xans-order-form .payArea .method {
    padding: 17px 20px 15px;
    font-weight: bold;
    border-bottom: 3px double #dedede;
}
.xans-order-form .payArea .method span {
    display: inline-block;
    margin: 0 15px 5px 0;
}
.xans-order-form .payArea .payment > .ec-base-table {
    padding: 10px 20px;
}
.xans-order-form .payArea .payHelp {
    margin: 0 0 0 130px;
}
span.ec-base-help, p.ec-base-help, ul.ec-base-help li {
    margin: 2px 9px;
    padding: 1px 0 1px 20px;
    line-height: 1.4;
    background: url(../../images/ico_info.gif) no-repeat 0 2px;
}
.xans-order-form .payArea .total {
    float: right;
    width: 240px;
    margin: 0 -241px 0 0;
    text-align: right;
    background: #fbfafa;
}
.xans-order-form .payArea .total h4 {
    margin: 17px 10px 0 0;
    color: #353535;
    font-size: 12px;
}
.xans-order-form .payArea .total .price {
    margin: 20px 10px 0 0;
    color: #008bcc;
    font-size: 14px;
}
.xans-order-form .payArea .total .price input#total_price {
    width: 190px;
    height: auto;
    padding: 0;
    border: 0;
    color: #008bcc;
    font-size: 28px;
    font-weight: bold;
    letter-spacing: -1px;
    line-height: normal;
    background: #fbfafa;
}
.xans-order-form .payArea .total .button {
    margin: 16px 0 10px;
    text-align: center;
}
.xans-order-form .payArea .total .mileage .ec-base-desc {
    padding: 10px 10px 9px 0;
    border-top: 1px solid #d7d5d5;
}
.ec-base-desc.gLarge dt, .ec-base-desc.gLarge .term {
    width: 50%;
}
.ec-base-desc dt, .ec-base-desc .term {
    float: left;
    width: 100px;
    margin: 0 0 2px;
    padding: 0 4px 0 0;
    line-height: 22px;
    -webkit-box-sizing: border-box;
    -moz-webkit-box: border-box;
    box-sizing: border-box;
    font-weight: normal;
}
.xans-order-form .payArea .total .mileage .ec-base-desc + .ec-base-desc {
    border-color: #e9e9e9;
}
.ec-base-desc.gLarge dd, .ec-base-desc.gLarge .desc {
    padding: 0 0 0 50%;
}
.ec-base-desc dd, .ec-base-desc .desc {
    display: block;
    margin: 0 0 2px;
    padding: 0 5px 0 100px;
    min-height: 22px;
    line-height: 22px;
    word-wrap: break-word;
}
.ec-base-desc dd:after, .ec-base-desc .desc:after {
    content: "";
    display: block;
    clear: left;
}
.xans-order-form .payArea:after {
    position: absolute;
    top: 0;
    right: 240px;
    display: block;
    content: "";
    width: 1px;
    height: 100%;
    background: #777;
}
.xans-order-form .payArea .total .price strong, .xans-order-form .payArea .total .price span {
    vertical-align: -5px;
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
div.ec-base-help ul, div.ec-base-help ol {
    margin: 15px 0 0 11px;
}
	</style>
</head>
<body>
	<form method="post" id="mainFrom">
	<input type="hidden" name="mmSeq" value="${vo.mmSeq }">
	<c:set var="ccgListGrade" value="${CodeServiceImpl.selectListCachedCode(7)}" />
	<!-- header  -->
	<%@include file="/resources/include/header.jsp"%>
	
	<div class="container">
    	<div class="path">
    		<ol>
    			<li>
    				<a href="#">홈</a>
    			</li>
    			<li>
		    		<strong>주문서 작성</strong>
    			</li>
    		</ol>
    	</div>
    	<div class="titleArea">
    		<h2 style="font-weight: bold;">주문서 작성</h2>
    	</div>
    	<form id="" name="" method="post" enctype="multipart/form-data">
    		<div class="xans-element- xans-order xans-order-form xans-record-">
    			<div class="xans-element- xans-order xans-order-dcinfo ec-base-box typeMember  ">
    				<div class="information">
					    <h3 class="title" style="width: 80px;">혜택정보</h3>
					    <div class="description">
					        <div class="member ">
					            <p><strong><c:out value="${item.mmName }"/></strong> 님은, [<c:forEach items="${ccgListGrade}" var="ccgListGrade" varStatus="rvStatus">
																								<c:if test="${ccgListGrade.ccOrder eq item.mmGrade}">
																									<c:out value="${ccgListGrade.ccName}" />
																								</c:if>
																							  </c:forEach>] 회원이십니다.</p>
					        </div>
					        <ul class="mileage">
					            <li>
					            	<a href="#" style="text-decoration: none; color: #000;">가용적립금 : <strong>0원</strong></a>
				            	</li>
					            <li>
					            	<a href="#" style="text-decoration: none; color: #000;">쿠폰 : <strong><c:out value="${item.cuponCount }"/>개</strong></a>
				            	</li>
					        </ul>
					    </div>
					</div>
    			</div>
    			<ul class="ec-base-help controlInfo">
					<li class="txtWarn txt11">상품의 옵션 및 수량 변경은 상품상세 또는 장바구니에서 가능합니다.</li>
					<input type="text" name="lastPrice" value="" />
			    </ul>
    			<div class="orderListArea ">
				    <!-- 개별배송 -->
				    <div class="ec-base-table typeList gBorder ">
				        <table border="1" summary="">
				            <caption>개별배송</caption>
				            <colgroup>
				                <col style="width:27px" class="">
				                <col style="width:92px">
				                <col style="width:auto">
				                <col style="width:98px">
				                <col style="width:75px">
				                <col style="width:98px">
				                <col style="width:98px">
				                <col style="width:85px">
				                <col style="width:98px">
				            </colgroup>
				            <thead>
				                <tr style="text-align: center;">
				                    <th scope="col" class="">
				                	    <input type="checkbox" onclick="">
				                    </th>
				                    <th scope="col">이미지</th>
				                    <th scope="col">상품정보</th>
				                    <th scope="col">판매가</th>
				                    <th scope="col">수량</th>
				                    <th scope="col">적립금</th>
				                    <th scope="col">배송구분</th>
				                    <th scope="col">배송비</th>
				                    <th scope="col">합계</th>
				                </tr>
				            </thead>
				            <c:forEach items="${oderFormList }" var="oderFormList" varStatus="status">
					            <tbody class="xans-element- xans-order xans-order-individuallist center">
					                <tr class="xans-record-">
					                    <td class="">
					                    	<input id="" name="" value="${oderFormList.bskSeq }" type="checkbox">
				                    	</td>
					                    <td class="thumb gClearLine">
					                    	<a href="#">
					                    		<img src="${oderFormList.upPath }${oderFormList.upUuidName}" alt="">
				                    		</a>
					                    </td>
					                    <td class="left gClearLine">
					                        <a href="#" style="text-decoration: none; color: #000;">
					                        	<strong><c:out value="${oderFormList.prName }"/></strong>
				                        	</a>
					                        <!-- <div class="option ">[옵션: [GIFT] 코튼메모리 핸드크림 + 립밤/THANK YOU]</div> -->
					                    </td>
					                    <td class="right">
					                        <div class="">
					                            <strong><fmt:formatNumber pattern="#,###원" value="${oderFormList.prTotalPrice }"/></strong>
					                        </div>
					                    </td>
					                    <td><c:out value="${oderFormList.bskAmount }"></c:out></td>
					                    <td><span class="txtInfo">-</span></td>
					                    <td>
					                        <div class="txtInfo">개별배송<br></div>
					                    </td>
					                    <td rowspan="1" class="">[무료]</td>
					                    <td class="right">
					                        <strong><fmt:formatNumber pattern="#,###원" value="${oderFormList.bskSell_Price }"/></strong>
					                    </td>
					                </tr>
					            </tbody>
				            </c:forEach>
				            <tfoot class="right">
				                <tr>
				                    <td class=""></td>
				                    <td colspan="8">
				                        <span class="gLeft">[개별배송]</span> 상품구매금액 <strong>27,000</strong>
				                         + 배송비 0 (무료)  = 합계 : <strong class="txtEm gIndent10"><span class="txt18">27,000</span>원</strong> 
				                    </td>
				                </tr>
				            </tfoot>
				        </table>
				    </div>
				</div>
				<ul class="ec-base-help controlInfo typeBtm">
					<li class="txtWarn txt11">상품의 옵션 및 수량 변경은 상품상세 또는 장바구니에서 가능합니다.</li>
			    </ul>
    			<div class="ec-base-button">
			        <span class="gLeft ">
			            <strong class="text">선택상품을</strong>
			            <a href="#" id="btn_product_delete"><img src="/resources/images/btn_delete2.gif" alt="삭제하기"></a>
			        </span>
			    </div>
    			<div class="orderArea  ec-shop-ordererForm">
				    <div class="title">
				        <h3>주문 정보</h3>
				        <p class="required"><img src="/resources/images/ico_required.gif" alt="필수">
				            필수입력사항</p>
				    </div>
				    <div class="ec-base-table typeWrite">
				        <table border="1" summary="">
				            <caption>주문 정보 입력</caption>
				            <colgroup>
				                <col style="width:139px;">
				                <col style="width:auto;">
				            </colgroup>
				            <!-- 국내 쇼핑몰 -->
				            <tbody class="address_form  ">
				                <tr>
				                    <th scope="row">주문하시는 분 <img src="/resources/images/ico_required.gif" alt="필수"></th>
				                    <td><input id="mmName" name="mmName" value="${item.mmName }" class="inputTypeText" size="15" type="text"></td>
				                </tr>
				                <tr class="">
				                    <th scope="row">휴대전화 <span class=""><img src="/resources/images/ico_required.gif" alt="필수"></span></th>
				                    <td><input id="mmPhoneNumber" name="mmPhoneNumber" maxlength="12" size="4" value="${item.mmPhoneNumber }" type="text" style="width: 75px;"></td>
				                </tr>
				            </tbody>
				            <!-- 해외 쇼핑몰 -->
				            <!-- 이메일 국내/해외 -->
				            <tbody class="email ec-orderform-emailRow">
				                <tr>
				                    <th scope="row">이메일 <img src="/resources/images/ico_required.gif" alt="필수"></th>
				                    <td>
				                        <input id="oemail1" name="oemail1" class="mailId" value="${item.mmEmail }" type="text">
				                        <ul class="gBlank5 txtInfo" style="padding: 0px;">
				                            <li>- 이메일을 통해 주문처리과정을 보내드립니다.</li>
				                            <li>- 이메일 주소란에는 반드시 수신가능한 이메일주소를 입력해 주세요</li>
				                        </ul>
				                    </td>
				                </tr>
				            </tbody>
				            <!-- 비회원 결제 -->
				            <!-- <tbody class="noMember displaynone">
				                <tr class="ec-orderform-NoMemberPasswdRow">
				                    <th scope="row">주문조회 비밀번호 <img
				                            src="/resources/images/ico_required.gif" alt="필수"></th>
				                    <td> (주문조회시 필요합니다. 4자에서 12자 영문 또는 숫자 대소문자 구분)</td>
				                </tr>
				                <tr class="ec-orderform-NoMemberPasswdRow">
				                    <th scope="row">주문조회 비밀번호<br>확인 <img
				                            src="/resources/images/ico_required.gif" alt="필수"></th>
				                    <td></td>
				                </tr>
				            </tbody> -->
				        </table>
				    </div>
				</div>
    			<div class="orderArea">
				    <div class="title">
				        <h3>배송 정보</h3>
				        <p class="required"><img src="/resources/images/ico_required.gif" alt="필수">
				            필수입력사항</p>
				    </div>
				    <div class="ec-base-table typeWrite">
				        <table border="1" summary="">
				            <caption>배송 정보 입력</caption>
				            <colgroup>
				                <col style="width:139px;">
				                <col style="width:auto;">
				            </colgroup>
				            <!-- 비회원 결제 -->
				            <!-- 국내 배송지 정보 -->
				            <tbody class="">
				                <tr class="">
				                    <th scope="row">배송지 선택</th>
				                    <td>
				                        <div class="address">
				                            <input id="sameaddr0" name="sameaddr" value="" type="radio" autocomplete="off">
				                            <label for="sameaddr0">주문자 정보와 동일</label>
				                            <input id="sameaddr1" name="sameaddr" value="" type="radio" autocomplete="off">
				                            <label for="sameaddr1">새로운 배송지</label> 
				                            <a href="#none" id="btn_shipp_addr" class="">
				                                <img src="/resources/images/btn_address.gif" alt="주소록 보기">
				                            </a>
				                        </div>
				                    </td>
				                </tr>
				                <tr>
				                    <th scope="row">받으시는 분 
				                        <img src="/resources/images/ico_required.gif" alt="필수">
				                    </th>
				                    <td>
				                        <input id="rname" name="rname" class="inputTypeText" placeholder="" size="15" value="${item.mmName }" type="text">
				                    </td>
				                </tr>
				                <tr>
				                    <th scope="row">주소 
				                        <img src="/resources/images/ico_required.gif" alt="필수">
				                    </th>
				                    <td>
				                        <input id="rzipcode1" class="inputTypeText" placeholder="" size="6" maxlength="6" readonly="1" value="${item.adrZipcode }" type="text"> 
				                        <a href="#" id="btn_search_rzipcode">
				                            <img src="/resources/images/btn_zipcode.png" alt="우편번호">
				                        </a><br>
				                        <input id="raddr1" name="raddr1" class="inputTypeText" placeholder="" size="40" readonly="1" value="${item.adrAddress }" type="text"> 
				                        <span class="grid">기본주소</span><br>
				                        <input id="raddr2" name="raddr2" class="inputTypeText" placeholder="" size="40" value="${item.adrAddressDetail }" type="text"> 
				                        <span class="grid">나머지주소</span>
				                        <span class="grid ">(선택입력가능)</span><span class="zipcode_red_em">상세주소(동/호수)를 꼭 기입 바랍니다. </span>
				                    </td>
				                </tr>
				                <tr class="">
				                    <th scope="row">휴대전화 
				                        <span class="">
				                            <img src="/resources/images/ico_required.gif" alt="필수">
				                        </span>
				                    </th>
				                    <td>
				                        <input id="rphone2_3" name="rphone2_[]" maxlength="4"size="11" value="${item.adrPhoneNumber }" type="text">
				                    </td>
				                </tr>
				            </tbody>
				            <!-- 국내 배송관련 정보 -->
				            <tbody class="delivery ">
				                <tr class="">
				                    <th scope="row">배송메시지 </th>
				                    <td>
				                        <textarea id="omessage" name="omessage" fw-filter="" fw-label="배송 메세지" fw-msg="" maxlength="40" cols="70"></textarea>
				                    </td>
				                </tr>
				            </tbody>
				        </table>
				    </div>
				</div>
	    		<div class="title">
			        <h3>결제 예정 금액</h3>
			    </div>	
	    		<div class="row" style="width: 100%; margin: auto;">
	    			<div class="col-8" style=" text-align: left;">
	    				<div class="row" style="height: 21px;">
	    					<div class="col-2" style="padding: 11px 0 10px 18px; border: 1px solid #dfdfdf; ">
	    						<strong>총 할인금액</strong>
	    					</div>
	    					<div class="col-10" style="padding: 11px 0 10px 18px; border: 1px solid #dfdfdf; border-left: 0">
	    						<strong>0원</strong>
	    					</div>
	    				</div>
	    				<div class="row" style="height: 100%; margin-top: 20px; padding-bottom: 40px;">
	    					<div class="col-2" style="padding: 11px 0 10px 18px; border: 1px solid #dfdfdf; border-top: 0">
	    						쿠폰
	    					</div>
	    					<div class="col-10" style="border: 1px solid #dfdfdf; border-top: 0; border-left: 0">
	    						<div class="row text-center">
	    							<div class="col" style="padding: 11px 0 10px 0px; border-bottom: 1px solid #dfdfdf;">
		    							<strong>쿠폰명</strong>
	    							</div>
	    							<div class="col" style="padding: 11px 0 10px 0px; border-bottom: 1px solid #dfdfdf;">
		    							<strong>할인금액</strong>
	    							</div>
	    							<div class="col" style="padding: 11px 0 10px 0px; border: 1px solid #dfdfdf; border-left: 0; border-top: 0">
	    							</div>
	    						</div>
	    						<c:forEach items="${cuponList }" var="cuponList" varStatus="status">
		    						<div class="row text-center">
		    							<div class="col" style="padding: 11px 0 10px 0px; border-bottom: 1px solid #dfdfdf;">
			    							<strong><c:out value="${cuponList.cpName }"/></strong>
		    							</div>
		    							<div class="col" style="padding: 11px 0 10px 0px; border-bottom: 1px solid #dfdfdf;">
			    							<strong><fmt:formatNumber value="${cuponList.cpDiscount }" pattern="#,###원"/></strong>
		    							</div>
		    							<div class="col" style="padding: 11px 0 10px 0px; border: 1px solid #dfdfdf; border-left: 0; border-top: 0">
			    							<a href="">
			    								<img alt="" src="/resources/images/btn_total_coupon.gif" style="padding-left: 5px;">
			    							</a>
		    							</div>
		    						</div>
	    						</c:forEach>
	    					</div>
	    				</div>
	    			</div>
	    			<div class="col-4" style="text-align: center;">
	    				<div class="row" style="background: #fbfafa; padding: 11px 0 10px 18px; border: 1px solid #000; border-bottom: 0;">
	    					<div class="col" style="height: 39px; ">
	    						<strong>총 주문금맥</strong>
	    					</div>
	    				</div>
	    				<div class="row" style="border: 1px solid #000; padding: 11px 0 10px 18px;border-top: 1px solid #eee">
	    					<div class="col" style="height: 58px; ">
	    						<strong style="font-size: 23px;">27,000원</strong>
	    					</div>
	    				</div>
	    				<div class="row" style="background: #fbfafa; padding: 11px 0 10px 18px; border: 1px solid #000; border-bottom: 0;">
	    					<div class="col" style="height: 39px; ">
	    						<strong>총 할인 + 부가결제 금액</strong>
	    					</div>
	    				</div>
	    				<div class="row" style="border: 1px solid #000; padding: 11px 0 10px 18px;border-top: 1px solid #eee">
	    					<div class="col" style="height: 58px; ">
	    						<strong style="font-size: 23px;">- 0원</strong>
	    					</div>
	    				</div>
	    				<div class="row" style="background: #fbfafa; padding: 11px 0 10px 18px; border: 1px solid #000; border-bottom: 0;">
	    					<div class="col" style="height: 39px; ">
	    						<strong>총 결제예정 금액</strong>
	    					</div>
	    				</div>
	    				<div class="row" style="border: 1px solid #000; padding: 11px 0 10px 18px;border-top: 1px solid #eee">
	    					<div class="col" style="height: 58px; ">
	    						<strong style="font-size: 23px; color: #008bcc;">= 27,000원</strong>
	    					</div>
	    				</div>
	    			</div>
	    		</div>	
	    		<!-- 결제수단 -->
	    		<div class="title">
			        <h3>결제수단</h3>
			    </div>
			    <div class="payArea">
				    <div class="payment">
				        <div class="method">
				            <span class="ec-base-label">
				                <input id="addr_paymethod4" name="addr_paymethod" value="kakaopay" type="radio" autocomplete="off" style="cursor: pointer;">
				                <label for="addr_paymethod4">카카오페이(간편결제) </label>
				            </span>
				        </div>
				
				        <!-- 카드사 직접결제 -->
				
				
				
				
				        <div class="ec-base-table">
				            <!-- 카카오페이 도움말 -->
				            <div id="kakaopay_info" class="payHelp" style="">
				                <p class="ec-base-help">휴대폰에 설치된 카카오톡 앱에서 비밀번호 입력만으로 빠르고 안전하게 결제가 가능한 서비스 입니다.</p>
				                <p class="ec-base-help">안드로이드의 경우 구글 플레이, 아이폰의 경우 앱 스토어에서 카카오톡 앱을 설치 한 후,<br>
				                    최초 1회 카드 및 계좌 정보를 등록하셔야 사용 가능합니다.</p>
				                <p class="ec-base-help">인터넷 익스플로러의 경우 8 이상에서만 결제 가능합니다.</p>
				                <p class="ec-base-help">BC카드 중 신한, 하나, 국민카드는 결제가 불가능합니다.</p>
				            </div>
				        </div>
				    </div>
				    <!-- 최종결제금액 -->
				    <div class="total">
				        <h4>
				            <strong id="current_pay_name">카카오페이(간편결제) </strong> <span>최종결제 금액</span>
				        </h4>
				        <p class="price"><span></span>
				            <input id="total_price" name="total_price"class="inputTypeText" placeholder="" style="text-align:right;ime-mode:disabled;clear:none;border:0px;float:none;" size="10" readonly="1" value="27000" type="text"><span>원</span>
				        </p> 
				        <div class="button">
			                <a href="#none" id="btn_payment" class="btnSubmit sizeL">
			                <span class="">
			                	<img src="/resources/images/btn_place_order.gif" alt="결제하기">
		                	</span>
	                	</a>
			            </div>
				        <div class="mileage ">
				            <dl class="ec-base-desc gLarge right">
				                <dt><strong>총 적립예정금액</strong></dt>
				                <dd id="mAllMileageSum" class="txtWarn" style="">0원</dd>
				            </dl>
				            <dl class="ec-base-desc gLarge right">
				                <dt>상품별 적립금</dt>
				                <dd id="mProductMileage">0원</dd>
				                <dt>회원 적립금</dt>
				                <dd id="mMemberMileage">0원</dd>
				                <dt>쿠폰 적립금</dt>
				                <dd id="mCouponMileage">0원</dd>
				            </dl>
				        </div>
				    </div>
				</div>
	    		<div class="ec-base-help">
			    	<h3>이용안내</h3>
				    <div class="inner">
				        <h4>WindowXP 서비스팩2를 설치하신후 결제가 정상적인 단계로 처리되지 않는경우, 아래의 절차에 따라 해결하시기 바랍니다.</h4>
				        <ol>
				            <li class="item1"><a href="javascript:;"
				                    onclick="">안심클릭
				                    결제모듈이 설치되지 않은 경우 ActiveX 수동설치</a></li>
				            <li class="item2"><a href="#" target="_blank">Service
				                    Pack 2에 대한 Microsoft사의 상세안내 </a></li>
				            <li class="item3"></li>
				        </ol>
				        <!-- 크로스 브라우징 지원 -->
				        <div class="">
				            <h4>아래의 쇼핑몰일 경우에는 모든 브라우저 사용이 가능합니다.</h4>
				            <ol>
				                <li class="item1">1️⃣<strong>KG이니시스, KCP, LG U+를 사용하는 쇼핑몰일 경우</strong></li>
				                <li class="item2">2️⃣결제가능브라우저 : 크롬,파이어폭스,사파리,오페라 브라우저에서 결제 가능<br>(단, window os 사용자에 한하며 리눅스/mac os 사용자는 사용불가)</li>
				                <li class="item3">3️⃣최초 결제 시도시에는 플러그인을 추가 설치 후 반드시 브라우저 종료 후 재시작해야만 결제가 가능합니다.<br>(무통장, 휴대폰결제 포함)</li>
				
				            </ol>
				            <h4>부가가치세법 변경에 따른 신용카드매출전표 및 세금계산서 변경안내</h4>
				            <ol>
				                <li class="item1">1️⃣변경된 부가가치세법에 의거, 2004.7.1 이후 신용카드로 결제하신 주문에 대해서는 세금계산서 발행이 불가하며</li>
				                <li class="item2">2️⃣신용카드매출전표로 부가가치세 신고를 하셔야 합니다.(부가가치세법 시행령 57조)</li>
				                <li class="item3">3️⃣상기 부가가치세법 변경내용에 따라 신용카드 이외의 결제건에 대해서만 세금계산서 발행이 가능함을 양지하여 주시기 바랍니다.</li>
				            </ol>
				            <h4>현금영수증 이용안내</h4>
				            <ol>
				                <li class="item1">1️⃣현금영수증은 1원 이상의 현금성거래(무통장입금, 실시간계좌이체, 에스크로, 예치금)에 대해 발행이 됩니다.</li>
				                <li class="item2">2️⃣현금영수증 발행 금액에는 배송비는 포함되고, 적립금사용액은 포함되지 않습니다.</li>
				                <li class="item3">3️⃣발행신청 기간제한 현금영수증은 입금확인일로 부터 48시간안에 발행을 해야 합니다.</li>
				                <li class="item4">4️⃣현금영수증 발행 취소의 경우는 시간 제한이 없습니다. (국세청의 정책에 따라 변경 될 수 있습니다.)</li>
				                <li class="item5">5️⃣현금영수증이나 세금계산서 중 하나만 발행 가능 합니다.</li>
				            </ol>
				        </div>
				    </div>
				</div>
    		</div>
    	</form>
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
