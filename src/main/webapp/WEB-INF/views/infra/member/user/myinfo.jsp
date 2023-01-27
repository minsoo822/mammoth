<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
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
		.xans-myshop-asyncbenefit {
		    margin: 0 0 20px;
		    color: #353535;
		}
		.ec-base-box {
		    padding: 20px;
		    margin-left: auto;
		    margin-right: auto;
		    border: 5px solid #e8e8e8;
		    color: #404040;
		}
		.ec-base-box.typeMember.gMessage {
		    border-width: 1px;
		    border-color: #d7d5d5;
		}
		.ec-base-box.typeMember {
		    padding: 0;
		}
		.ec-base-box.typeMember .information {
		    display: table;
		    table-layout: fixed;
		    padding: 10px 0;
		    width: 100%;
		    box-sizing: border-box;
		}
		.ec-base-box.typeMember .information > .title, .ec-base-box.typeMember .information > .thumbnail {
		    display: table-cell;
		    padding: 0 15px;
		    width: 70px;
		    text-align: center;
		    vertical-align: middle;
		}
		img {
		    overflow-clip-margin: content-box;
		    overflow: clip;
		}
		.xans-myshop-asyncbenefit .thumbnail img {
		    max-width: 70px;
		    max-height: 70px;
		}
		.ec-base-box.typeMember .information > .thumbnail img {
		    max-width: 70px;
		}
		.xans-myshop-asyncbenefit .description {
	   		min-height: 70px;
		}
		.ec-base-box.typeMember .information .description {
		    display: table-cell;
		    padding: 0 10px;
		    width: auto;
		    line-height: 1.5em;
		    border-left: 1px solid #e8e8e8;
		    vertical-align: middle;
		}
		.txtEm {
		    color: #008bcc;
		}
		.xans-member-edit h3 {
		    margin: 50px 0 10px;
		    font-size: 16px;
		    color: #2e2e2e;
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
		col {
		    display: table-column;
		}
		tbody {
		    display: table-row-group;
		    vertical-align: middle;
		    border-color: inherit;
		}
		.displaynone {
		    display: none !important;
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
		td {
		    display: table-cell;
		    vertical-align: inherit;
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
		.xans-member-edit .ec-base-table .certifForm {
		    margin: 20px 0 0;
		}
		.xans-member-edit .ec-base-table ul.certifInfo li, .xans-member-edit .ec-base-table p.certifInfo {
		    color: #757575;
		    padding: 0 0 0 9px;
		}
		input[type=radio] + label, input[type=checkbox] + label {
		    margin: 0 4px 0 2px;
		}
		.ec-base-table img {
		    vertical-align: middle;
		}
		.xans-member-edit .ec-base-table .certifForm img {
		    margin: 0 0 5px;
		}
		.xans-member-edit .required {
		    margin: -25px 0 10px;
		    color: #353535;
		    text-align: right;
		}
		.xans-member-edit .required img {
		    vertical-align: middle;
		}
		input:disabled {
		    cursor: default;
		    background-color: -internal-light-dark(rgba(239, 239, 239, 0.3), rgba(59, 59, 59, 0.3));
		    color: -internal-light-dark(rgb(84, 84, 84), rgb(170, 170, 170));
		    border-color: rgba(118, 118, 118, 0.3);
		}
		.xans-member-edit #postcode1, .xans-member-edit #postcode2 {
		    width: 40px;
		    text-align: center;
		}
		.xans-member-edit #addr1, .xans-member-edit #addr2 {
		    width: 280px;
		    margin: 5px 0 0;
		}
		.xans-member-edit #phone1, .xans-member-edit #mobile1 {
	    width: 60px;
	    margin: 0 4px 0 0;
		}
		.xans-member-edit #phone2, .xans-member-edit #phone3, .xans-member-edit #mobile2, .xans-member-edit #mobile3 {
		    width: 50px;
		    margin: 0 4px;
		}
		.xans-member-edit #birth_year, .xans-member-edit #marry_year, .xans-member-edit #partner_year {
		    width: 60px;
		    margin: 0 4px 0 0;
		}
		.xans-member-edit #birth_month, .xans-member-edit #marry_month, .xans-member-edit #partner_month, .xans-member-edit #birth_day, .xans-member-edit #marry_day, .xans-member-edit #partner_day {
		    width: 30px;
		    margin: 0 4px 0 0;
		}
		.gIndent20 {
		    margin-left: 20px;
		}
		.ec-base-button.justify {
		    position: relative;
		}
		.ec-base-button {
		    padding: 10px 0;
		    text-align: center;
		}
		.ec-base-button.justify .gRight {
		    position: absolute;
		    right: 0;
		}
		.ec-base-button .gRight {
		    float: right;
		    text-align: right;
		}
	</style>
</head>
<body>
	<form method="post" id="mainForm">
	<c:set var="ccgListGrade" value="${CodeServiceImpl.selectListCachedCode(7)}" />
	<input type="hidden" name="mmSeq" id="mmSeq" value="${sessSeq}">	
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
		    		<strong>회원 정보 수정</strong>
    			</li>
    		</ol>
    	</div>
    	<div class="titleArea">
    		<h2 style="font-weight: bold;">회원 정보 수정</h2>
    	</div>
    	<div class="xans-element- xans-myshop xans-myshop-asyncbenefit">
    		<div class="ec-base-box typeMember gMessage ">
    			<div class="information">
    				<p class="thumbnail" style="width: 100px;">
    					<img src="/resources/images/img_member_default.gif" alt="" class="myshop_benefit_group_image_tag">
    				</p>
    				<div class="description">
    					<p>
    						저희 쇼핑몰을 이용해 주셔서 감사합니다. 
    					<strong class="txtEm"><span><span class="xans-member-var-name"><c:out value="${item.mmName }"/></span></span></strong>
    						님은
						<strong>[<span class="xans-member-var-group_name">
									<c:forEach items="${ccgListGrade}" var="ccgListGrade" varStatus="rvStatus">
										<c:if test="${ccgListGrade.ccOrder eq item.mmGrade}">
											<c:out value="${ccgListGrade.ccName}" />
										</c:if>
									</c:forEach>
								</span>]</strong>
							회원이십니다.   						
    					</p>
    				</div>
    			</div>
    		</div>
    	</div>
    	<div class="xans-element- xans-member xans-member-edit">
    		<c:choose>
    			<c:when test="${item.mmCertNy eq 0 }">
	    			<div id="certN">
		    			<h3>회원인증</h3>
		    			<div class="ec-base-table typeWrite">
		    				<table border="1" summary>
		    					<caption>회원인증</caption>
		    					<colgroup>
									<col style="width:150px;">
									<col style="width:auto;">
								</colgroup>
								<tbody>
									<tr class="displaynone">
										<th scope="row">회원구분</th>
										<td>개인</td>
					                </tr>
									<tr>
										<th scope="row">인증여부</th>
										<td>
									    <strong class="txtEm">미인증</strong>
									    <ul class="certifInfo" style="padding-left: 0px;">
											<li>정보통신망법에 따라 고객의 주민등록번호를 수집하지 않습니다.</li>
											<li>안전한 전자상거래를 위하여 아래 수단으로 본인인증을 완료하여 주시기 바랍니다.</li>                        
										</ul>
										</td>
									</tr>
									<tr class="">
									<th scope="row">회원인증</th>
									<td>
									<input id="personal_type0" name="personal_type" fw-filter="isFill" fw-label="회원인증" fw-msg="" value="m" type="radio" checked="checked"><label for="personal_type0">휴대폰인증</label>                        
									<div class="certifForm" id="mobileWrap" style="margin-top: 10px;">
										<select id="telecom" onchange="selectBoxChange(this.value);">
											<option value="" selected hidden>선택</option>
											<option value="3">SKT</option>
											<option value="4">KT</option>
											<option value="5">LGU+</option>
										</select>
										<input id="phoneNumber"  class="inputTypeText" placeholder="- 를 제외한숫자만 입력" value="" type="text"> 
										<input id="certTelecom" name="certTelecom" value="" type="hidden">
										<input id="certPhone" name="certPhone" value="" type="hidden">
										<!-- 통신사, 번호, 인증요청버튼, 인증번호, 인증확인버튼  -->
										<button type="button" id="phoneNumberButton" onclick="">
											<img src="/resources/images/btn_checkMobile.png" alt="휴대폰 인증" style="margin-bottom: 0px;">
										</button><br>
										<input id="confirmCode" placeholder="인증번호" type="text" style="width: 80px; margin-top: 5px;">
										<button id="confirmCodeButton" type="button" style="vertical-align: middle; font-size: 5pt; padding: 2px; background-color: white; border-radius: 5px; margin-top: 4px; border: #353535 1px solid;">인증하기</button>
									    <p class="certifInfo" style="margin: 0px;">- 본인 명의의 휴대폰으로 본인인증을 진행합니다.</p>
									</div>
									    </td>
									</tr>
								</tbody>
		    				</table>
		    			</div>
	    			</div>
    			</c:when>
    			<c:otherwise>
    				<div>
    					
    				</div>
    			</c:otherwise>
    		</c:choose>
    		<h3 class>기본정보</h3>
    		<p class="required "><img src="/resources/images/ico_required.gif" alt="필수"> 필수입력사항</p>
    		<div class="ec-base-table typeWrite">
    			<table border="1" summary>
    				<caption>회원 기본정보</caption>
    				<colgroup>
						<col style="width:150px;">
						<col style="width:auto;">
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">아이디 <img src="/resources/images/ico_required.gif" alt="필수"></th>
			                <td>
			                    <input name="mmId" readonly="readonly" value="${item.mmId }" type="text">(영문소문자/숫자, 4~16자)
			                </td>
			            </tr>
						<tr>
							<th scope="row">비밀번호 <img src="/resources/images/ico_required.gif" class="" alt="필수"></th>
			                <td><input name="" maxlength="16" disabled="1" value="${item.mmPassword }" type="password" style="background-color: rgba(239, 239, 239, 0.3);"> (영문 대소문자/숫자/특수문자 중 3가지 이상 조합, 8자~16자)</td>
			            </tr>
			            <tr class="">
							<th scope="row">비밀번호 확인 <img src="/resources/images/ico_required.gif" alt="필수"></th>
			                <td>
			                	<input name="user_passwd_confirm" fw-filter="isMatch[passwd]" fw-label="비밀번호 확인" fw-msg="비밀번호가 일치하지 않습니다." autocomplete="off" maxlength="16" disabled="1" value="" type="password" style="background-color: rgba(239, 239, 239, 0.3);"> <span id="pwConfirmMsg"></span>
							</td>
			            </tr>
			            <tr style="display:1">
							<th scope="row" id="nameTitle">이름 <img src="/resources/images/ico_required.gif" alt="필수"></th>
			                <td><input name="mmName"maxlength="30" readonly="readonly" value="${item.mmName }" type="text"></td>
			            </tr>
			            <tr class="">
							<th scope="row">주소</th>
			                <td>
			                	<input type="hidden" name="adrSeq" value="${adritem.adrSeq }">
			                    <input id="postcode1" name="mmZipcode" class="inputTypeText" placeholder="" readonly="readonly" maxlength="14" value="${adritem.mmZipcode }" type="text">                    
			                    <a href="#none" onclick="sample6_execDaumPostcode()" id="postBtn">
			                    	<img src="/resources/images/btn_zipcode.png" alt="우편번호">
		                    	</a><br>
			                    <input id="addr1" name="mmAddress" class="inputTypeText" placeholder="" readonly="readonly" value="${adritem.mmAddress }" type="text"> 기본주소<br>
			                    <input id="addr2" name="mmAddressDetail" class="inputTypeText" placeholder="" value="${adritem.mmAddressDetail }" type="text"> 나머지주소 (선택입력가능)                
		                    </td>
			            </tr>
			            <tr class="">
							<th scope="row">일반전화</th>
							<td>
								<input name="mmTel" maxlength="11" value="" type="text" placeholder="- 를 뺀 숫자만 입력해주세요">
							</td>
			            </tr>
			            <tr class="">
							<th scope="row">휴대전화 <img src="/resources/images/ico_required.gif" class="" alt="필수"></th>
			                <td>
			                	<select id="mmTelecom" name="mmTelecom">
									<option value="3" <c:if test="${item.mmTelecom eq 3 }">selected</c:if>>SKT</option>
									<option value="4" <c:if test="${item.mmTelecom eq 4 }">selected</c:if>>KT</option>
									<option value="5" <c:if test="${item.mmTelecom eq 5 }">selected</c:if>>LGU+</option>
								</select>
								<input name="mmPhoneNumber" maxlength="11" value="${item.mmPhoneNumber }" type="text" placeholder="- 를 뺀 숫자만 입력해주세요" style="width: 170px; height: 22.4px;" >
								<!-- <input id="" name="" maxlength="4" fw-filter="isNumber&amp;isFill" fw-label="휴대전화" fw-alone="N" fw-msg="" value="" type="text"> -->
							</td>
			            </tr>
			            <tr class="">
							<th scope="row">SMS 수신여부 <img src="/resources/images/ico_required.gif" alt="필수"></th>
			                <td>
			                	<input id="is_sms0" name="is_sms" fw-filter="isFill" fw-label="is_sms" fw-msg="" value="T" type="radio"><label for="is_sms0">수신함</label>
								<input id="is_sms1" name="is_sms" fw-filter="isFill" fw-label="is_sms" fw-msg="" value="F" type="radio" checked="checked"><label for="is_sms1">수신안함</label>
								<p style="margin: 0px;">쇼핑몰에서 제공하는 유익한 이벤트 소식을 SMS로 받으실 수 있습니다.</p>
							</td>
			            </tr>
			            <tr>
							<th scope="row">이메일 <img src="/resources/images/ico_required.gif" alt="필수"></th>
			                <td>
			                    <input id="email1" name="email1"value="${item.mmEmail }" type="text"> <span id="emailMsg"></span>
			                </td>
			            </tr>
			            <tr class="">
							<th scope="row">이메일 수신여부 <img src="/resources/images/ico_required.gif" alt="필수"></th>
	      	         		<td>
	      	         			<input id="is_news_mail0" name="is_news_mail" value="T" type="radio">
	      	         			<label for="is_news_mail0">수신함</label>
								<input id="is_news_mail1" name="is_news_mail" value="F" type="radio" checked="checked">
								<label for="is_news_mail1">수신안함</label>
								<p style="margin: 0px;">쇼핑몰에서 제공하는 유익한 이벤트 소식을 이메일로 받으실 수 있습니다.</p>
							</td>
						</tr>
					</tbody>
    			</table>
    		</div>
    		<h3 class=" ">추가정보</h3>
    		<div class="ec-base-table typeWrite ">
    			<table border="1" summary>
    				<caption>회원 추가정보</caption>
    				<colgroup>
						<col style="width:150px;">
						<col style="width:auto;">
					</colgroup>
					<tbody>
						<tr class="">
							<th scope="row">성별 <img src="/resources/images/ico_required.gif" class="" alt="필수"></th>
							<c:if test="${item.mmGender eq 1 }">
								<td>
									<input id="is_sex0" name="is_sex" disabled="1" value="M" type="radio" checked="checked">
									<label for="is_sex0">남자</label>
									<input id="is_sex1" name="is_sex" disabled="1" value="F" type="radio">
									<label for="is_sex1">여자</label>
								</td>
							</c:if>
							<c:if test="${item.mmGender eq 2 }">
								<td>
									<input id="is_sex0" name="is_sex" disabled="1" value="M" type="radio" >
									<label for="is_sex0">남자</label>
									<input id="is_sex1" name="is_sex" disabled="1" value="F" type="radio" checked="checked">
									<label for="is_sex1">여자</label>
								</td>
							</c:if>
			            </tr>
			            <c:choose>
			            	<c:when test="${kakaoCheck == true}">
			            		<tr class="">
									<th scope="row">생년월일 <img src="/resources/images/ico_required.gif" class="" alt="필수"></th>
					                <td>
						                <input id="birth_month" name="birth_month" class="inputTypeText" maxlength="2" value="${month }" type="text"> 월 
						                <input id="birth_day" name="birth_day" class="inputTypeText" placeholder="" maxlength="2" value="${day }" type="text"> 일 
						                <!-- <span class="gIndent20 ">
							                <input id="is_solar_calendar0" name="is_solar_calendar" fw-filter="isFill" fw-label="생년월일" fw-msg="" value="T" type="radio" checked="checked">
							                <label for="is_solar_calendar0">양력</label>
											<input id="is_solar_calendar1" name="is_solar_calendar" fw-filter="isFill" fw-label="생년월일" fw-msg="" value="F" type="radio">
											<label for="is_solar_calendar1">음력</label>
										</span> -->
									</td>
					            </tr>
			            	</c:when>
			            	<c:otherwise>
					            <tr class="">
									<th scope="row">생년월일 <img src="/resources/images/ico_required.gif" class="" alt="필수"></th>
					                <td>
						                <input id="birth_year" name="birth_year" fw-filter="isFill" fw-label="생년월일" fw-msg="" class="inputTypeText" placeholder="" maxlength="4" value="" type="text"> 년 
						                <input id="birth_month" name="birth_month" fw-filter="isFill" fw-label="생년월일" fw-msg="" class="inputTypeText" placeholder="" maxlength="2" value="" type="text"> 월 
						                <input id="birth_day" name="birth_day" fw-filter="isFill" fw-label="생년월일" fw-msg="" class="inputTypeText" placeholder="" maxlength="2" value="" type="text"> 일 
						                <!-- <span class="gIndent20 ">
							                <input id="is_solar_calendar0" name="is_solar_calendar" fw-filter="isFill" fw-label="생년월일" fw-msg="" value="T" type="radio" checked="checked">
							                <label for="is_solar_calendar0">양력</label>
											<input id="is_solar_calendar1" name="is_solar_calendar" fw-filter="isFill" fw-label="생년월일" fw-msg="" value="F" type="radio">
											<label for="is_solar_calendar1">음력</label>
										</span> -->
									</td>
					            </tr>
			            	</c:otherwise>
			            </c:choose>
					</tbody>
				</table>
    		</div>
    		<div class="ec-base-button justify">
    			<a href="#" onclick="btnMyinfoSave()"><img src="/resources/images/btn_modify_member.gif" alt="회원정보수정"></a>
    			<a href="#"><img src="/resources/images/btn_modify_cancel.gif" alt="취소"></a>
    			<span class="gRight">
		            <a href="#" onclick="">
		            	<img src="/resources/images/btn_modify_out.gif" alt="회원탈퇴">
	            	</a>
		        </span>
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
                    }[]
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    //document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    //document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postcode1').value = data.zonecode;
                document.getElementById("addr1").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("addr2").focus();
            }
        }).open();
    };
    
    btnMyinfoSave = function() {
    	form.attr("action", "/member/myinfoUpda").submit();
    }
    
    $(document).ready(function(){
    	$("#telecom").change(function(){
    		$("#certTelecom").attr("value",$(this).val());
    		console.log("Telecom : " + $(this).val());
    	});
    });
    
	</script>	
	<script type="module">
		// Import the functions you need from the SDKs you need
		import { initializeApp } from "https://www.gstatic.com/firebasejs/9.15.0/firebase-app.js";
		import { getAnalytics } from "https://www.gstatic.com/firebasejs/9.15.0/firebase-analytics.js";
		import { getAuth, signInWithPopup, GoogleAuthProvider, signInWithPhoneNumber, RecaptchaVerifier  } from "https://www.gstatic.com/firebasejs/9.15.0/firebase-auth.js";
		// TODO: Add SDKs for Firebase products that you want to use
		// https://firebase.google.com/docs/web/setup#available-libraries
	  
		// Your web app's Firebase configuration
		// For Firebase JS SDK v7.20.0 and later, measurementId is optional
		const firebaseConfig = {
		  apiKey: "AIzaSyCuCoTR_yTOYzvWBvwF71zaRJpQImMRrj4",
		  authDomain: "forment-1579e.firebaseapp.com",
		  projectId: "forment-1579e",
		  storageBucket: "forment-1579e.appspot.com",
		  messagingSenderId: "535405719783",
		  appId: "1:535405719783:web:1b0d388e43151cda557242",
		  measurementId: "G-FZPS0215L0"
		};
	  
		// Initialize Firebase
		const app = initializeApp(firebaseConfig);
		const analytics = getAnalytics(app);

		const provider = new GoogleAuthProvider();
		const auth = getAuth();
		auth.languageCode = 'ko';

		window.recaptchaVerifier = new RecaptchaVerifier('phoneNumberButton', {
		'size': 'invisible',
		'callback': (response) => {
			// reCAPTCHA solved, allow signInWithPhoneNumber.
			onSignInSubmit();
		}
		}, auth);

		document.getElementById('phoneNumberButton').
		addEventListener('click', (event) => {
			event.preventDefault()
			
			const phoneNumber = document.getElementById('phoneNumber').value;
			const appVerifier = window.recaptchaVerifier;

			signInWithPhoneNumber(auth, '+82'+phoneNumber, appVerifier)
				.then((confirmationResult) => {
				// SMS sent. Prompt user to type the code from the message, then sign the
				// user in with confirmationResult.confirm(code).
				window.confirmationResult = confirmationResult;
				console.log(confirmationResult)
				// ...
				}).catch((error) => {
				console.log(error)
				// Error; SMS not sent
				// ...
				});
		})

		document.getElementById('confirmCodeButton').
		addEventListener('click', (event) => {
			event.preventDefault()

			const code = document.getElementById('confirmCode').value;
			confirmationResult.confirm(code).then((result) => {
			// User signed in successfully.
			const user = result.user;
			console.log(result);
			console.log(user.phoneNumber);

			var phoneNum = user.phoneNumber;
			var numResult = phoneNum.replace('+82','0');

			
			$("#certPhone").attr("value" , numResult);

			$.ajax({
				url : '/member/certUpdt',
				type : 'POST',
				datatype : 'json',
				data : {
					mmPhoneNumber : $("#certPhone").val()
					,mmTelecom : $("#certTelecom").val()
					,mmSeq : $("#mmSeq").val()
				}
				,success : function(result) {
					if(result.rt == "success") {
						swal("인증 성공!", "휴대폰 인증이 완료되었습니다.", "success");
						$("#certN").html("");
					}
				}
				,error : function() {
					alert("ajax error..!");
				}
			});
			
			// 1. 전화번호를 받아오는값을 콘솔로 찍어보면서 확인하기.  
			//	==> user.phoneNumber로 전화번호를 가져옴
			// 2. 받아온 전화번호 값 '+8210' 국제번호로 받아오는값을 010 으로 변환하기. 
			//	==>		var test = user.phoneNumber;
			//			var result = test.replace('+82','0');
			//			console.log(result);
			// 3. 변환한 값을 인증 테이블에 업데이트 시켜주기. ( 인증했을시 인증값도 1로)
			// 4. mmSeq 값으로 인증했는지 안했는지 카운터 받아오기.
			// 5. myInfo에 넣어준 전화번호 selectOne에 조인시켜주기.

			// ...
			}).catch((error) => {
				console.log(error);
				alert("인증번호를 다시한번 확인해주세요");
			// User couldn't sign in (bad verification code?)
			// ...
			});
		})
	  </script>
</body>
</html>
