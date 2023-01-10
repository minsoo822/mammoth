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
			.myshopMain {
    margin: 0 0 35px 0;
}
.myshopMain .my_level {
    padding: 20px 0;
    min-height: 215px;
    border: 1px solid #e0e0e0;
    width: 839px;
    float: left;
    box-sizing: border-box;
}
.my_level .level_summ {
    float: left;
    width: calc(100% - 490px);
}
.my_level .member_txt2 {
    font-size: 30.9px;
    color: #000;
    font-weight: 300;
    padding: 50px 0 0 30px;
    margin: 0 0;
    line-height: 1.22;
    letter-spacing: -1.08px;
}
.my_level .member_txt2 strong {
    font-weight: 500;
}
.my_level .member_txt2 span.color {
    color: #000000;
    font-weight: bold;
}
.my_level .level_detail {
    padding: 2px 30px;
    width: 429px;
    float: left;
    border-left: 1px solid #e0e0e0;
}
.my_level .member_txt4 {
    font-size: 15px;
    font-weight: 500;
    color: #000000;
    letter-spacing: -1px;
    margin: 0 0 0 0;
}
.my_level .member_txt3 {
    font-size: 13.5px;
    font-weight: normal;
    margin-bottom: 10px;
    padding: 5px 0 0 0;
    letter-spacing: -1px;
}
.myGraph {
    margin: 0 0 0 0;
    padding: 0 0 15px 0;
    border-bottom: 1px solid #f6f6f6;
}
.myLevel_graph {
    padding: 10px 0;
}
.myLevel_graph .graph_bg {
    background: #eeeeee;
    height: 5px;
    position: relative;
    border-radius: 0;
}
.myLevel_graph .graph_bg .bar {
    position: absolute;
    left: 0;
    top: 0;
    height: 100%;
    border-radius: 0;
    background: #017ee2;
}
.myGraph .gradeGuide {
    text-align: center;
    letter-spacing: -1px;
}
.my_level .member_benefit a {
    display: block;
    line-height: 48px;
    box-sizing: border-box;
    text-align: center;
    border: 1px solid #939393;
    background: #ffffff;
    color: #000000;
    margin: 0 0;
    font-size: 14.6px;
    letter-spacing: -1.02px;
    font-weight: 500;
}
.myshopMain .my_mileage {
    padding: 15px 0 0;
    border: 1px solid #e0e0e0;
    width: 349px;
    float: right;
    box-sizing: border-box;
}
.my_mileage .item:first-child {
    border-bottom: 1px solid #e0e0e0;
    margin-bottom: 15px;
}
.my_mileage .item {
    margin: 0 29px;
}
.my_mileage .item p {
    color: #000;
    opacity: 0.5;
    font-size: 15.8px;
    font-weight: 300;
    letter-spacing: -0.87px;
}
.my_mileage .item .money {
    color: #000;
    font-size: 30.6px;
    line-height: 1.1;
    font-weight: 500;
    letter-spacing: -0.87px;
    margin: 20px 0 15px 0;
}
.my_mileage .item .money a {
    color: #000;
    text-decoration: none;
    color: #000;
}
.myShopping:after {
    content: "";
    display: block;
    clear: both;
}
.myShopping .side {
    width: 250px;
    float: left;
}
.my_shopping_info {
    padding: 0 0 35px 0;
}
.myShopping .my_title {
    font-size: 16.8px;
    font-weight: bold;
    color: #000;
    letter-spacing: -0.55px;
    padding: 0 0 15px;
    border-bottom: 1px solid #000;
}
li {
	list-style: none;
}
.my_shopping_info ul li {
    border-bottom: 1px solid #e0e0e0;
    padding: 19px 0;
    line-height: 1.1;
    background: url(/resources/images/myicon_07.png) no-repeat 100% 50%;
    background-size: 15px 15px;
}
.my_shopping_info ul li a {
    display: block;
    position: relative;
    line-height: 1.5;
    padding: 0 0 0 0;
    font-size: 14px;
    text-decoration: none;
    color: #000;
}
.my_shopping_info ul li img {
    height: 17px;
    vertical-align: top;
    margin: 0 8px 0 0;
}
.my_shopping_info ul li a .value {
    display: block;
    width: 23px;
    height: 23px;
    line-height: 23px;
    border-radius: 100%;
    text-align: center;
    position: absolute;
    right: 20px;
    top: 50%;
    margin-top: -12px;
    background: #212121;
    color: #fff;
    font-size: 10px;
}
.invite_friend {
    padding: 0 0 35px 0;
}
.invite_friend .invite {
    margin: 10px 0 0;
}
.invite_friend .invite .txt {
    font-size: 14px;
    color: #000;
    opacity: 0.6;
    margin: 0 0 10px 0;
    letter-spacing: -0.78px;
}
strong {
    font-weight: bold;
}
.invite_friend .invite .inputBox {
    position: relative;
    box-sizing: content-box;
    padding: 0 0 0 0;
    margin: 0 0 14px;
}
.invite_friend .invite #reco_url {
    width: 100%;
    padding: 3px 3px 3px 6px;
    height: 44px;
    line-height: 44px;
    background: #e2e2e2;
    border: 1px solid #e2e2e2;
    box-sizing: border-box;
}
.invite_friend .invite a {
    display: block;
    width: 100%;
    height: 48px;
    line-height: 48px;
    margin: 10px 0;
    background: #212121;
    color: #fff;
    text-align: center;
    font-size: 15px;
}
.myShopping .conts {
    width: 923px;
    float: right;
}
.myShopping .my_title2 {
    font-size: 16.8px;
    font-weight: bold;
    color: #000;
    letter-spacing: -0.55px;
    padding: 0 0 15px;
    border-bottom: 2px solid #000;
}
.xans-myshop-orderhistorylistitem table {
    border-collapse: separate;
    border: 1px solid #d7d5d5;
    color: #353535;
    line-height: 1.5;
}
table {
    width: 100%;
    border: 0;
    border-spacing: 0;
    text-indent: initial;
}
.xans-myshop-orderhistorylistitem table th:first-child {
    border-left: 0;
}
.xans-myshop-orderhistorylistitem .myShopTable thead th {
    font-weight: 500;
    letter-spacing: -0.55px;
    color: #000;
    background: #ffffff;
    font-size: 14px;
    letter-spacing: -0.55px;
    padding: 18px 0;
    line-height: 1.5;
    border-bottom: 1px solid #000;
    border-left: none;
}
.xans-myshop-orderhistorylistitem table th {
    padding: 11px 0 9px;
    border-left: 1px solid #e9e9e9;
    font-weight: normal;
    vertical-align: middle;
    background: #fbfafa;
}
.xans-myshop-orderhistorylistitem table .thumb {
    width: 92px;
}
.xans-myshop-orderhistorylistitem table .product {
    width: auto;
}
.xans-myshop-orderhistorylistitem table .quantity {
    width: 60px;
}
.xans-myshop-orderhistorylistitem table .number {
    width: 135px;
}
.xans-myshop-orderhistorylistitem table .price {
    width: 110px;
}
.xans-myshop-orderhistorylistitem table td.number {
    letter-spacing: -1px;
}
.xans-myshop-orderhistorylistitem table td a {
    color: #353535;
}
.xans-myshop-orderhistorylistitem table td.thumb img {
    width: 80px;
}
.xans-myshop-orderhistorylistitem table td.product {
    padding-left: 10px;
    text-align: left;
    vertical-align: top;
}
.xans-myshop-orderhistorylistitem table td.product a {
    color: #353535;
}
.xans-myshop-orderhistorylistitem table td.product div.option, .xans-myshop-orderhistorylistitem table td.product ul.option > li {
    margin: 9px 0 0;
    color: #757575;
    line-height: 16px;
}
.xans-myshop-orderhistorylistitem table td.product ul.option > li > strong {
    display: block;
    color: #353535;
}
.xans-myshop-orderhistorylistitem table td.product .free {
    margin: 5px 0 0;
}
.xans-myshop-orderhistorylistitem table .empty {
    padding: 50px 0;
    text-align: center;
    font-weight: bold;
    color: #757575;
}
.xans-myshop-orderhistorylistitem table td {
    padding: 8px 0 5px;
    border-top: 1px solid #e9e9e9;
    text-align: center;
    vertical-align: middle;
}
.displaynone {
    display: none;
}
.displaynone {
    display: none !important;
}
.ordertableMore {
    padding: 30px 0;
    text-align: center;
    font-size: 15.1px;
    color: #000;
    letter-spacing: -0.55px;
}
[class*=" xi-"], [class^=xi-] {
    font-family: xeicon!important;
    display: inline-block;
    speak: none;
    font-style: normal;
    font-weight: 400;
    font-variant: normal;
    text-transform: none;
    line-height: 1;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}
	</style>
</head>
<body>
	<form method="post" id="mainForm" >	
	<input type="hidden" name="mmSeq" id="mmSeq" value="${sessSeq }">
	<!-- header  -->
	<%@include file="/resources/include/header.jsp"%>
	
    <div class="container" style="padding-left: 0; padding-right: 0;">
    	<div class="myshopMain" style="height: 215px;">
    		<div class="xans-element- xans-layout xans-layout-statelogon my_level">
    			<div class="level_summ ">
    				<div class="member_txt2">
						<strong style="font-weight: bold;"><span class="xans-member-var-name"><c:out value="${item.mmName }"></c:out></span> 회원</strong>님은<br>
						<span class="color" id="group_name"><span class="xans-member-var-group_name">웰컴</span></span> 등급입니다.
					</div>
    			</div>
    			<div class="level_detail ">
    				<div class="member_txt4">
    					<span class="xans-member-var-group_name">웰컴</span>
    					등급혜택
    				</div>
    				<div class="member_txt3" id="level_mypage">아래 ‘멤버십 등급별 혜택 보기’로 혜택을 확인해 보세요!</div>
    				<div class="xans-element- xans-myshop xans-myshop-asyncbenefit myGraph ">
    					<div class="myLevel_graph">
							<div class="graph_bg">
								<div class="bar " id="myGrp" style="width: 0%;"></div>
							</div>
						</div>
						<div class=" gradeGuide" id="sGradeAutoDisplayArea">
							<div class=" sAutoGradeDisplay">
								<span id="needVal"><span class="xans-member-var-sGradeIncreasePrice">30,000원</span></span>  추가 구매시 다음달 <span class="xans-member-var-sNextGrade">패밀리</span> 달성</div>
						</div>
    				</div>
    				<div class="member_benefit">
						<a href="#" style="text-decoration: none; font-weight: bold;">멤버십 등급별 혜택 보기</a>
					</div>
    			</div>
    		</div>
    		<div class="xans-element- xans-layout xans-layout-statelogon my_mileage ">
    			<div class="item">
					<p style="margin: 0px;">사용가능한 적립금</p>
					<div class="xans-element- xans-myshop xans-myshop-asyncbankbook money ">
						<a href="/myshop/mileage/historyList.html"><span id="xans_myshop_bankbook_avail_mileage">0</span></a>
					</div>
				</div>
				<div class="item">
					<p style="margin: 0px;">사용가능한 쿠폰</p>
					<div class="xans-element- xans-myshop xans-myshop-asyncbankbook money ">
						<a href="/myshop/coupon/coupon.html"><span id="xans_myshop_bankbook_coupon_cnt">7</span></a>
					</div>
				</div>
    		</div>
    	</div>
    	<div class="myShopping">
    		<div class="side">
    			<div class="xans-element- xans-myshop xans-myshop-orderstate my_shopping_info ">
    				<div class="my_title">나의 쇼핑 정보</div>
    				<ul style="padding-left: 0px; margin: 0px;">
    					<li>
    						<a href="/myshop/order/list.html">
    							<img src="/resources/images/myicon_04.png" alt="">주문/배송현황
								<span class="xans-element- xans-layout xans-layout-statelogon ">
									<span class="xans-element- xans-myshop xans-myshop-orderhistorytab value " style="display: none;">
										<span id="xans_myshop_total_orders">0</span>
									</span>
								</span>
							</a>
    					</li>
    					<li>
    						<a href="/myshop/order/list.html?mode=cs"><img src="/resources/images/myicon_05.png" alt="">취소/교환/반품 내역
							<span class="xans-element- xans-layout xans-layout-statelogon ">
								<span class="xans-element- xans-myshop xans-myshop-orderhistorytab value " style="display: none;">
									<span id="xans_myshop_total_orders_cs">0</span>
								</span>
							</span>
							</a>
    					</li>
    					<li>
    						<a href="" onclick="btnAddrList(${sessSeq})"><img src="/resources/images/myicon_06.png" alt="">배송지 수정</a>
    					</li>
    				</ul>
    			</div>
    			<div class="xans-element- xans-myshop xans-myshop-asyncbenefit invite_friend ">
    				<div class="my_title">친구 초대하기</div>
    				<div class="invite ">
    					<div class="txt">
						아래 주소를 복사하여 친구에게 보내 초대해보세요.
						가입 즉시 친구와 회원님에게 <strong>1000원</strong> 적립금이 지급됩니다.
						</div>
						<div class="inputBox">
							<input type="text" id="reco_url" value="//theforment.com/?reco_id=2595876488@k" readonly="">
							<a href="#none" class="btnStrong" onclick="" style="text-decoration: none;">주소복사</a>
						</div>
    				</div>
    			</div>
    		</div>
    		<div class="conts">
    			<div class="my_title2">최근 주문</div>
    			<div class="xans-element- xans-myshop xans-myshop-orderhistorylistitem">
    				<table border="1" summary="" class="myShopTable" style="border: none;">
					    <thead>
					        <tr style="text-align: center;">
					            <th scope="col" class="number" style="font-weight: bold;">주문일자</th>
					            <th scope="col" class="thumb" style="font-weight: bold;">이미지</th>
					            <th scope="col" class="product" style="font-weight: bold;">상품정보</th>
					            <th scope="col" class="quantity" style="font-weight: bold;">수량</th>
					            <th scope="col" class="number" style="font-weight: bold;">주문번호</th>
					            <th scope="col" class="price" style="font-weight: bold;">상품구매금액</th>
					        </tr>
					    </thead>
					    <tbody class="">
					        <tr class="">
					            <td class="number">2022/10/11</td>
					            <td class="thumb">
					                <a href="#">
					                    <img src="/resources/images/img_product_small.gif"  alt="">
					                </a>
					            </td>
					            <td class="product">
					            	<!-- 상품이름 -->
					                <a href="#" style="text-decoration: none;"><strong>포맨트 올인원 퍼퓸 샤워</strong></a>
					                <!-- 상품옵션 -->
					                <div class="option ">[옵션: 코튼디어나잇/퍼퓸샤워 1개]</div>
					            </td>
					            <!-- 상품수량 -->
					            <td class="quantity">1</td>
					            <td>
					            	<!-- 상품주문번호 -->
					                <a href="" style="text-decoration: none;">20221221-0005206</a>
					            </td>
					            <td class="price">
					            	<strong>24,000원</strong>
					            </td>
					        </tr>
					        
					    </tbody>
					    <!-- <tbody class="emptyBody ">
					        <tr>
					            <td colspan="6" class="empty">주문 내역이 없습니다</td>
					        </tr>
					    </tbody> -->
					</table>
    			</div>
    			<div class="ordertableMore">
    				<!-- 주문조회리스트로이동 -->
    				<a href="#" style="color: #000; text-decoration: none;">더보기 <i class="fa-solid fa-chevron-down"></i></a>
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
		
	btnAddrList = function(key) {
		form.attr("action", "/member/addrList").submit(); 
	}
	
	
	
	</script>	
</body>
</html>
