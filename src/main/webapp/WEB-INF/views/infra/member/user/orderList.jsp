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
.ec-base-tab .menu li a {
    display: block;
    min-width: 187px;
    margin: 0 0 0 -1px;
    padding: 12px 5px 11px;
    border-right: 1px solid #cbcdce;
    color: #707070;
    text-decoration: none;
    outline: 0;
    text-align: center;
    background: #f2f2f2;
}
.ec-base-tab .menu li.selected:first-child a {
    left: -1px;
}
.ec-base-tab .menu li.selected a {
    position: relative;
    top: -1px;
    left: -2px;
    margin: 0 0 -1px;
    border: 1px solid #202020;
    border-bottom: 0;
    color: #fff;
    font-weight: bold;
    background: #000000;
}
.ec-base-tab .menu:after {
    content: "";
    display: block;
    clear: both;
}
.ec-base-box {
    padding: 20px;
    margin-left: auto;
    margin-right: auto;
    border: 5px solid #e8e8e8;
    color: #404040;
}
legend {
    visibility: hidden;
    position: absolute;
    left: -9999px;
    top: -9999px;
    width: 0;
    height: 0;
    line-height: 0;
}
.xans-myshop-orderhistoryhead .stateSelect {
    display: inline-block;
    padding: 0 12px 0 0;
    margin: 0 5px 0 2px;
    background: url(/resources/images/ico_bar.gif) no-repeat 100% 6px;
}
.xans-myshop-orderhistoryhead fieldset .period {
    margin: 0 7px;
}
.xans-myshop-orderhistoryhead fieldset .period a {
    margin: 0 0 0 -5px;
}
.xans-myshop-orderhistoryhead fieldset img {
    vertical-align: middle;
}
.xans-myshop-orderhistoryhead fieldset .fText {
    width: 72px;
    height: 22px;
    margin: 0 0 0 2px;
    padding: 0 6px;
    border: 1px solid #d5d5d5;
    line-height: 22px;
    font-size: 12px;
}
.xans-myshop-orderhistoryhead fieldset button {
    width: 14px;
    height: 14px;
    margin: 0 5px 0 2px;
    background: none;
}
.xans-myshop-orderhistoryhead fieldset img {
    vertical-align: middle;
}
.xans-myshop-orderhistoryhead ul {
    margin: 10px 0 0;
    color: #939393;
    line-height: 1.5;
}
.xans-myshop-orderhistoryhead ul li {
    padding: 0 0 0 9px;
    background: url(/resources/images/ico_square2.gif) no-repeat 4px 7px;
}
.xans-myshop-orderhistorylistitem .title {
    margin: 40px 0 10px 10px;
}
.xans-myshop-orderhistorylistitem .title h3 {
    color: #353535;
    font-size: 12px;
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
.xans-myshop-orderhistorylistitem table {
    border-collapse: separate;
    border: 1px solid #d7d5d5;
    color: #353535;
    line-height: 1.5;
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
.xans-myshop-orderhistorylistitem table th:first-child {
    border-left: 0;
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
.xans-myshop-orderhistorylistitem table th {
    padding: 11px 0 9px;
    border-left: 1px solid #e9e9e9;
    font-weight: normal;
    vertical-align: middle;
    background: #fbfafa;
}
.ec-base-table table:before {
    position: absolute;
    top: 0;
    left: 0;
    display: block;
    content: "";
    width: 100%;
    height: 1px;
    background: #d7d5d5;
}
.ec-base-table table + .message {
    margin: -1px 0 0;
}
.ec-base-table .message {
    border: 1px solid #d7d5d5;
    padding: 50px 0;
    text-align: center;
    color: #757575;
    font-weight: bold;
}
.ec-base-paginate {
    margin: 30px 0;
    text-align: center;
    font-size: 0;
    line-height: 0;
}
.ec-base-paginate a:first-child img {
    display: none;
}
.ec-base-paginate img {
    vertical-align: top;
}
.ec-base-paginate ol {
    display: inline-block;
    font-size: 0;
    line-height: 0;
    vertical-align: top;
    *display: inline;
    *zoom: 1;
    *margin: 0;
}
.ec-base-paginate li:first-child {
    margin-left: 0;
}
.ec-base-paginate li {
    display: inline-block;
    margin: 0 0 0 0;
    font-size: 12px;
    color: #757575;
    vertical-align: top;
    *display: inline;
    *zoom: 1;
}
.ec-base-paginate a:last-child img {
    display: none;
}
ol {
    display: block;
    list-style-type: decimal;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}
.ec-base-table .center {
    text-align: center;
}
.ec-base-table.typeList .center td, .ec-base-table.typeList td.center {
    padding-left: 0;
    padding-right: 0;
}
.xans-myshop-orderhistorylistitem table td.number {
    letter-spacing: -1px;
}
.ec-base-table.typeList td {
    padding: 8px 10px 7px;
}
.xans-myshop-orderhistorylistitem table .number {
    width: 135px;
}
.xans-myshop-orderhistorylistitem table td {
    padding: 8px 0 5px;
    border-top: 1px solid #e9e9e9;
    text-align: center;
    vertical-align: middle;
}
.ec-base-table td {
    padding: 11px 10px 10px;
    border-top: 1px solid #dfdfdf;
    color: #353535;
    vertical-align: middle;
}
.xans-myshop-orderhistorylistitem table td .line {
    text-decoration: underline;
}
.xans-myshop-orderhistorylistitem table td a {
    color: #353535;
}
.xans-myshop-orderhistorylistitem table .thumb {
    width: 92px;
}
.xans-myshop-orderhistorylistitem table td.thumb img {
    width: 80px;
}
.ec-base-table.typeList .center td.left {
    padding-left: 10px;
}
.xans-myshop-orderhistorylistitem table td.product {
    padding-left: 10px;
    text-align: left;
    vertical-align: top;
}
.xans-myshop-orderhistorylistitem table td.product div.option, .xans-myshop-orderhistorylistitem table td.product ul.option > li {
    margin: 9px 0 0;
    color: #757575;
    line-height: 16px;
}
.ec-base-table.typeList .center td.right {
    padding-right: 10px;
}
.ec-base-table .right {
    text-align: right;
}
.xans-myshop-orderhistorylistitem table .state {
    width: 110px;
}
.xans-myshop-orderhistorylistitem table td.state p {
    color: #008bcc;
    font-weight: 800;
}
	</style>
</head>
<body>
	<form method="post" id="mainForm">
	<input type="hidden" name="mmSeq" id="mmSeq" value="${sessSeq }">
	<!-- header  -->
	<%@include file="/resources/include/header.jsp"%>
	
	    <div class="container">
    	<div class="path">
    		<span>?????? ??????</span>
    		<ol>
    			<li>
    				<a href="#">???</a>
    			</li>
    			<li>
    				<a href="#" style="text-decoration: none;">????????????</a>
    			</li>
    			<li>
		    		<strong>?????? ??????</strong>
    			</li>
    		</ol>
    	</div>
    	<div class="titleArea">
    		<h2>?????? ??????</h2>
    	</div>
    	<div class="xans-element- xans-myshop xans-myshop-orderhistorytab ec-base-tab ">
    		<ul class="menu">
    			<li class="tab_class selected">
    				<a href="#">?????????????????? (<span id="">0</span>)</a>
    			</li>
    			<li class="tab_class_cs">
    				<a href="#">??????/??????/?????? ?????? (<span id="">0</span>)</a>
    			</li>
    		</ul>
    	</div>
    		<div class="xans-element- xans-myshop xans-myshop-orderhistoryhead ">
    			<fieldset class="ec-base-box">
    				<legend>???????????? ??????</legend>
    				<div class="stateSelect ">
			            <select id="order_status" name="order_status" class="fSelect">
							<option value="">?????? ??????????????????</option>
							<option value="">?????????</option>
							<option value="">????????????(??????/????????????)</option>
							<option value="">?????????</option>
							<option value="">????????????</option>
							<option value="">??????</option>
							<option value="">??????</option>
							<option value="">??????</option>
						</select>        
					</div>
					<span class="period">
			            <a href="#none" class="btnNormal" days="00"><img src="/resources/images/btn_date1.gif" alt="??????"></a>
			            <a href="#none" class="btnNormal" days="07"><img src="/resources/images/btn_date2.gif" alt="1??????"></a>
			            <a href="#none" class="btnNormal" days="30"><img src="/resources/images/btn_date3.gif" alt="1??????"></a>
			            <a href="#none" class="btnNormal" days="90"><img src="/resources/images/btn_date4.gif" alt="3??????"></a>
			            <a href="#none" class="btnNormal" days="180"><img src="/resources/images/btn_date5.gif" alt="6??????"></a>
			        </span>
			        <input id="" name="" class="fText hasDatepicker" readonly="readonly" size="10" value="" type="text">
			        <button type="button" class="ui-datepicker-trigger"><img src="/resources/images/ico_cal.gif" alt="..." title="..."></button>
			        ~
			        <input id="" name="" class="fText hasDatepicker" readonly="readonly" size="10" value="" type="text">
			        <button type="button" class="ui-datepicker-trigger"><img src="/resources/images/ico_cal.gif" alt="..." title="..."></button>
			        <a href="" onclick="">
			        	<img alt="" src="/resources/images/btn_search.gif">
		        	</a>
    			</fieldset>
    			<ul>
					<li>??????????????? ?????? 3???????????? ????????? ????????????, ?????? ????????? ?????? ??????????????? ???????????? ??? ????????????.</li>
			        <li>??????????????? ??????????????? ?????? ????????? ?????? ??????????????? ???????????? ??? ????????????.</li>
			    </ul>
    		</div>
    	<div class="xans-element- xans-myshop xans-myshop-orderhistorylistitem ec-base-table typeList">
    		<div class="title">
		        <h3>?????? ?????? ??????</h3>
		    </div>
		    <table border="1" summary style="width: 100%;">
		    	<caption>?????? ?????? ??????</caption>
		    	<colgroup>
					<col style="width:135px;">
					<col style="width:93px;">
					<col style="width:auto;">
					<col style="width:61px;">
					<col style="width:111px;">
					<col style="width:111px;">
					<col style="width:111px;">
				</colgroup>
				<thead>
					<tr style="text-align: center;">
						<th scope="col">????????????<br>[????????????]</th>
		                <th scope="col">?????????</th>
		                <th scope="col">????????????</th>
		                <th scope="col">??????</th>
		                <th scope="col">??????????????????</th>
		                <th scope="col">??????????????????</th>
		                <th scope="col">??????/??????/??????</th>
		            </tr>
	            </thead>
			    <tbody class="center ">
			    	<tr class="xans-record-">
			    		<td rowspan="3" class="number ">
		                    2022-12-21                    
		                    <p style="margin: 0px;">
		                    	<a href="#" class="line">[20221221-0005206]</a>
		                   	</p>
		                </td>
		                <td class="thumb">
		                	<a href="#">
		                		<img src="/resources/images/pum.jpg" alt="">
	                		</a>
                		</td>
                		<td class="product left top">
		                    <a href="#"><strong>????????? ????????? ?????? ??????</strong></a>
		                    <div class="option ">[??????: ??????????????????/???????????? 1???]</div>
		                </td>
		                <td>1</td>
		                <td class="right">
							<strong>24,000???</strong>
						</td>
						<td class="state">
		                    <p class="txtEm">????????????</p>
		                    <!-- <p class="txtEm">???????????????</p> -->
		                </td>
		                <td>
		                    <p class="">
		                    	<a href="#none" class="line" onclick="" style="font-weight: 700;">[????????????]</a>
	                    	</p>
		                </td>
			    	</tr>
			    </tbody>
		    </table>
		    <!-- ??????????????? ????????? -->
		    <!-- <p class="message ">?????? ????????? ????????????.</p> -->
    	</div>
    	<!-- ????????? s -->
    	<div class="xans-element- xans-myshop xans-myshop-orderhistorypaging ec-base-paginate">
    		<!-- <a href="?page=1&history_start_date=2022-09-28&history_end_date=2022-12-27&past_year=2021" class="first"><img src="//img.echosting.cafe24.com/skin/base/common/btn_page_first.gif" alt="??? ?????????" /></a> -->
    		<a href="#">
    			<img src="/resources/images/btn_page_prev.gif" alt="?????? ?????????">
    		</a>
    		<ol>
				<li class="xans-record-">
					<a href="#" class="this">1</a>
				</li>
            </ol>
            <a href="#">
            	<img src="/resources/images/btn_page_next.gif" alt="?????? ?????????">
           	</a>
    	</div>
    	<!-- ????????? e -->
    	<div style="padding: 18px 0 0 0;">
    		<img src="/resources/images/forment_info_web@3x.jpg" alt="" style="max-width:100%">
    	</div>
    </div>
	</form>
	<!-- footer -->
	<%@include file="/resources/include/footer.jsp"%>
	
	<!--  ????????????  -->		
	<%@include file="/resources/include/script.jsp"%>
	
	<script>
		
	</script>	
</body>
</html>
