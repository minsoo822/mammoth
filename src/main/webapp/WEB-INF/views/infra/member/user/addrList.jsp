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
			.titleArea p {
		    display: inline-block;
		    margin: 0 0 0 6px;
		    padding: 0 0 0 10px;
		    color: #939393;
		    background: url(/resources/images/ico_bar.gif) no-repeat 0 0;
		    *display: inline;
		    *zoom: 1;
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
input[type="checkbox" i] {
    background-color: initial;
    cursor: default;
    appearance: auto;
    box-sizing: border-box;
    margin: 3px 3px 3px 4px;
    padding: initial;
    border: initial;
}
input[type=radio], input[type=checkbox] {
    width: 13px;
    height: 13px;
    border: 0;
}
input, select, textarea {
    font-size: 100%;
    color: #353535;
    vertical-align: middle;
}
.ec-base-table .center {
    text-align: center;
}
.ec-base-table.typeList .center td, .ec-base-table.typeList td.center {
    padding-left: 0;
    padding-right: 0;
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
input[type=radio], input[type=checkbox] {
    width: 13px;
    height: 13px;
    border: 0;
}
input, select, textarea {
    font-size: 100%;
    color: #353535;
    vertical-align: middle;
}
.ec-base-table table td.message {
    padding: 50px 0;
}

.ec-base-table.typeList td {
    padding: 8px 10px 7px;
}
.ec-base-table .message {
    border: 1px solid #d7d5d5;
    padding: 50px 0;
    text-align: center;
    color: #757575;
    font-weight: bold;
}
.ec-base-table td {
    padding: 11px 10px 10px;
    border-top: 1px solid #dfdfdf;
    color: #353535;
    vertical-align: middle;
}
.ec-base-button {
    padding: 10px 0;
    text-align: center;
}
.ec-base-button .gLeft {
    float: left;
    text-align: left;
}
.ec-base-button .gRight {
    float: right;
    text-align: right;
}
.ec-base-button:after {
    display: block;
    content: "";
    clear: both;
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
div.ec-base-help ul, div.ec-base-help ol {
    margin: 15px 0 0 11px;
}
div.ec-base-help ol .item1 {
    background-position: -484px 0;
}
div.ec-base-help ol li {
    padding: 0 0 0 25px;
}
div.ec-base-help li {
    color: #707070;
}
	</style>
</head>
<body>
	<form method="post" id="mainForm">
	<input type="hidden" name="mmSeq" name="mmSeq" value="${sessSeq }">
	<input type="hidden" name="adrSeq" id="adrSeq" >
	<input type="hidden" name="checkboxSeqArray" >
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
		    		<strong>?????? ????????? ??????</strong>
    			</li>
    		</ol>
    	</div>
    	<div class="titleArea">
    		<h2 style="font-weight: bold;">?????? ????????? ??????</h2>
    		<p>?????? ?????? ???????????? ?????? ???????????? ??? ????????????.</p>
    	</div>
    	<form id="" name="" method="post" enctype="multipart/form-data">
		    <div class="ec-base-table typeList">
		        <table border="1" summary="">
		            <caption>?????? ????????? ??????</caption>
		            <colgroup>
		                <col style="width:27px">
		                <col style="width:80px">
		                <col style="width:95px">
		                <col style="width:95px">
		                <col style="width:120px">
		                <col style="width:120px">
		                <col style="width:auto">
		                <col style="width:76px">
		            </colgroup>
		            <thead>
		                <tr style="text-align: center; font-weight: 600;">
		                    <th scope="col">
		                        <span class="">
		                            <input id="checkboxAll" value="" type="checkbox">
		                        </span>
		                    </th>
		                    <th scope="col">????????? ??????</th>
		                    <th scope="col">????????????</th>
		                    <th scope="col">?????????</th>
		                    <th scope="col">????????????</th>
		                    <th scope="col">????????????</th>
		                    <th scope="col">??????</th>
		                    <th scope="col">??????</th>
		                </tr>
		            </thead>
		            <c:choose>
		            	<c:when test="${fn:length(adrList) eq 0}">
		            		<!-- ????????? ????????? -->
				            <tbody class="">
				                <tr>
				                    <td colspan="8" class="message">????????? ????????? ????????????.</td>
				                </tr>
				            </tbody>
		            	</c:when>
		            	<c:otherwise>
		            		<c:forEach items="${adrList }" var="adrList" varStatus="status">
			            		<tbody class=" center">
					                <tr class="xans-record-">
					                    <td>
					                        <input name="checkboxSeq" type="checkbox" value="<c:out value="${adrList.adrSeq }"></c:out>">
					                    </td>
					                    <td>
					                        <span class="">-</span>
					                    </td>
					                    <td>
					                       <c:if test="${adrList.adrdefaultNy eq 1 }">
						                       <img src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/ico_addr_default.gif" class="" alt="??????"> 
					                       </c:if> 
						                       <span><c:out value="${adrList.adrAddrName }"/></span>
					                    </td>
					                    <td><span><c:out value="${adrList.adrName }"/></span></td>
					                    <td><span><c:out value="${adrList.adrTel }"/></span></td>
					                    <td><span><c:out value="${adrList.adrPhoneNumber }"/></span></td>
					                    <td class="left">(<span><c:out value="${adrList.adrZipcode }"/></span>)<span><c:out value="${adrList.adrAddress }"/></span> <span><c:out value="${adrList.adrAddressDetail }"/></span></td>
					                    <td>
					                    	<a href="#" onclick="btnAdrForm(${adrList.adrSeq})">
					                    		<img src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_address_modify.gif" class="" alt="??????">
				                    		</a>
			                    		</td>
					                </tr>
					            </tbody>
		            		</c:forEach>
		            	</c:otherwise>
		            </c:choose>
		        </table>
		    </div>
		    <div class="ec-base-button">
		            <span class="gLeft ">
		                <a href="#none" onclick="adrCheckDel()">
		                    <img src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_address_delete.gif" alt="?????? ????????? ??????">
		                </a>
		            </span>
		            <span class="gRight">
		                <a href="/member/adrForm">
		                    <img src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_address_register.gif" alt="????????? ??????">
		                </a>
		            </span>
		        </div>
		<div class="ec-base-help">
		    <h3 style="margin: 0px;">??????????????? ????????????</h3>
		    <div class="inner">
		        <ol><li class="item1">?????? ???????????? ?????? 10????????? ????????? ??? ?????????, ????????? ???????????? ?????? ?????? ?????? ?????? ????????? ???????????? ?????? ???????????? ?????????.</li>
		            <li class="item2">?????? ??????????????? ????????? ?????? ?????? ????????? ?????? ????????? ??????????????? ????????? ???????????? ???????????? ???????????? ???????????????.</li>
		            <li class="item3">?????? ???????????? 1?????? ???????????????. ?????? ???????????? ?????? ???????????? ??????????????? ?????? ???????????? ???????????????.</li>
		        </ol>
		    </div>
		</div>
		    </div>
		</form>
	</div>
	</form>
	<!-- footer -->
	<%@include file="/resources/include/footer.jsp"%>
	
	<!--  ????????????  -->		
	<%@include file="/resources/include/script.jsp"%>
	
	<script>
	var adrSeq = $("#adrSeq");
	
	var checkboxSeqArray = [];
	
	btnAdrForm = function(key) {
		adrSeq.attr("value", key);
		form.attr("action", "/member/adrForm").submit();
	};
	
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
	
	adrCheckDel = function() {
		swal({
			  title: "???????????? ????????? ?????????????????????????",
			  text: "???????????? ????????? ????????????????????????!",
			  icon: "warning",
			  buttons: true,
			  dangerMode: true,
			})
			.then((willDelete) => {
			  if (willDelete) {
			    swal("???????????? ????????? ?????????????????????!", {
			      icon: "success",
			    })
			    .then(function() {
			    		$("input[name=checkboxSeq]:checked").each(function() { 
			    			checkboxSeqArray.push($(this).val());
			    		});
			    		$("input:hidden[name=checkboxSeqArray]").val(checkboxSeqArray);
			    		
			    		form.attr("action", "/member/checkDel").submit();
			    });
			  } else {
			    swal("???????????? ????????????");
			  }
			});
	}
	
	</script>	
</body>
</html>
