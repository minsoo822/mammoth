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
table {
    width: 100%;
    border: 0;
    border-spacing: 0;
    border-collapse: collapse;
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
caption {
    display: none;
}
colgroup {
    display: table-column-group;
}
.ec-base-table th:first-child {
    border-left: 0;
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
.ec-base-table.typeWrite td {
    padding: 8px 10px 7px;
}
.ec-base-table td {
    padding: 11px 10px 10px;
    border-top: 1px solid #dfdfdf;
    color: #353535;
    vertical-align: middle;
}
.xans-myshop-addrregister #ma_rcv_title, .xans-myshop-addrregister #ma_rcv_name {
    width: 180px;
}
input[type=text], input[type=password] {
    height: 24px;
    line-height: 20px;
    padding: 2px 4px;
    border: 1px solid #d5d5d5;
    color: #353535;
    font-size: 12px;
}
.xans-myshop-addrregister #ma_rcv_title, .xans-myshop-addrregister #ma_rcv_name {
    width: 180px;
}
.xans-myshop-addrregister #sample6_address, .xans-myshop-addrregister #sample6_detailAddress {
    width: 450px;
    margin: 5px 0 0;
}
.ec-base-table .right {
    text-align: right;
}
.ec-base-table.typeWrite td {
    padding: 8px 10px 7px;
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
input[type=radio] + label, input[type=checkbox] + label {
    margin: 0 4px 0 2px;
}
.ec-base-button {
    padding: 10px 0;
    text-align: center;
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
<input type="hidden" name="mmSeq" id="mmSeq" value="${sessSeq }">
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
    				<a href="#" style="text-decoration: none;">마이쇼핑</a>
    			</li>
    			<li>
		    		<strong>배송 주소록 관리</strong>
    			</li>
    		</ol>
    	</div>
    	<div class="titleArea">
    		<h2>배송 주소록 관리</h2>
    		<p>자주 쓰는 배송지를 등록 관리하실 수 있습니다.</p>
    	</div>
    	<form id="" name="" method="post" target="_self" enctype="multipart/form-data">
		    <div class="xans-element- xans-myshop xans-myshop-addrregister ">
		        <div class="ec-base-table typeWrite">
		            <table border="1" summary="">
		                <caption>배송 주소록 입력</caption>
		                    <colgroup>
		                        <col style="width:120px">
		                        <col style="width:auto">
		                </colgroup>
		                <tbody>
		                    <tr>
		                        <th scope="row">배송지명 <img src="/resources/images/ico_required.gif" alt="필수"></th>
		                        <td>
		                            <input id="" name="adrAddrName" class="inputTypeText" placeholder="" value="" type="text">
		                        </td>
		                    </tr>
		                    <tr>
		                        <th scope="row">성명 <img src="/resources/images/ico_required.gif" alt="필수"></th>
		                        <td>
		                            <input id="" name="adrName" class="ec-member-name" placeholder="" value="" type="text">
		                        </td>
		                    </tr>
		                    <tr>
		                        <th scope="row">주소 <img src="/resources/images/ico_required.gif" alt="필수"></th>
		                        <td>
		                            <input id="sample6_postcode" name="adrZipcode" class="inputTypeText" placeholder="" readonly="readonly" maxlength="14" value="" type="text">                        
		                            <a href="#" onclick="sample6_execDaumPostcode()" id="SearchAddress">
		                                <img src="/resources/images/btn_zipcode.png" alt="우편번호">
		                            </a><br>
		                            <input id="sample6_address" name="adrAddress" class="inputTypeText" placeholder="" readonly="readonly" value="" type="text"> 기본주소<br>
		                            <input id="sample6_detailAddress" name="adrAddressDetail" class="inputTypeText" placeholder="" value="" type="text"> 나머지주소
		                        </td>
		                    </tr>
		                    <tr>
		                        <th scope="row">일반전화 </th>
		                        <td>
		                            <input id="" name="adrTel" maxlength="11"value="" type="text" placeholder="-를뺀 숫자만입력해주세요">
		                        </td>
		                    </tr>
		                    <tr>
		                        <th scope="row">휴대전화 
		                            <span class=""><img src="/resources/images/ico_required.gif" alt="필수"></span>
		                        </th>
		                        <td>
		                            <input id="" name="adrPhoneNumber" maxlength="11" value="" type="text" placeholder="-를뺀 숫자만입력해주세요">
		                        </td>
		                    </tr>
		                    <tr class="right">
		                        <td colspan="2">
		                            <input id="adrdefault" name="adrdefaultNy" type="checkbox" value="1">
		                            <input id="adrdefault_hidden" name="adrdefaultNy" type="hidden" value="0">
		                            <label for="ma_main_flag0">기본 배송지로 저장</label>
		                        </td>
		                    </tr>
		                </tbody>
		            </table>
		        </div>
		        <div class="ec-base-button">
		            <span class="gRight">
		                <a href="#" onclick="btnAddrInst()" style="text-decoration: none;">
		                    <img src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_address_register2.gif" alt="등록">
		                </a>
		                <a href="#"  style="text-decoration: none;">
		                    <img src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_address_cancel.gif" alt="취소">
		                </a>
		            </span>
		        </div>
		    </div>
		</form>
		<div class="ec-base-help">
		    <h3 style="margin: 0px;">배송주소록 유의사항</h3>
		    <div class="inner">
		        <ol><li class="item1">배송 주소록은 최대 10개까지 등록할 수 있으며, 별도로 등록하지 않을 경우 최근 배송 주소록 기준으로 자동 업데이트 됩니다.</li>
		            <li class="item2">자동 업데이트를 원하지 않을 경우 주소록 고정 선택을 선택하시면 선택된 주소록은 업데이트 대상에서 제외됩니다.</li>
		            <li class="item3">기본 배송지는 1개만 저장됩니다. 다른 배송지를 기본 배송지로 설정하시면 기본 배송지가 변경됩니다.</li>
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
	    function sample6_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수
	
	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }
	
	                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	                if(data.userSelectedType === 'R'){
	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있고, 공동주택일 경우 추가한다.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    // 조합된 참고항목을 해당 필드에 넣는다.
	                    //document.getElementById("sample6_extraAddress").value = extraAddr;
	                
	                } else {
	                    //document.getElementById("sample6_extraAddress").value = '';
	                }
	
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('sample6_postcode').value = data.zonecode;
	                document.getElementById("sample6_address").value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("sample6_detailAddress").focus();
	            }
	        }).open();
	    };
	    
	    if($("#adrdefault").checked) {
	    	$("#adrdefault_hidden").disabled = true;
	    };
	    
	    btnAddrInst = function() {
	    	form.attr("action", "/member/addrInst").submit();
	    };
	</script>	
</body>
</html>
