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
    				<p class="thumbnail">
    					<img src="/resources/images/img_member_default.gif" alt="" class="myshop_benefit_group_image_tag">
    				</p>
    				<div class="description">
    					<p>
    						저희 쇼핑몰을 이용해 주셔서 감사합니다. 
    					<strong class="txtEm"><span><span class="xans-member-var-name">김민수</span></span></strong>
    						님은
						<strong>[<span class="xans-member-var-group_name">웰컴</span><span class="myshop_benefit_ship_free_message"></span>]</strong>
							회원이십니다.   						
    					</p>
    				</div>
    			</div>
    		</div>
    	</div>
    	<div class="xans-element- xans-member xans-member-edit">
    		<div class>
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
							    <ul class="certifInfo">
									<li>정보통신망법에 따라 고객의 주민등록번호를 수집하지 않습니다.</li>
									<li>안전한 전자상거래를 위하여 아래 수단으로 본인인증을 완료하여 주시기 바랍니다.</li>                        
								</ul>
								</td>
							</tr>
							<tr class="">
							<th scope="row">회원인증</th>
							<td>
							<input id="personal_type0" name="personal_type" fw-filter="isFill" fw-label="회원인증" fw-msg="" value="m" type="radio" checked="checked"><label for="personal_type0">휴대폰인증</label>                        
							<div class="certifForm" id="mobileWrap" style="">
								<select id="" name="" fw-filter="isNumber&amp;isNumber" fw-label="일반전화" fw-alone="N" fw-msg="">
									<option value="">SKT</option>
									<option value="011">KT</option>
									<option value="016">LGU+</option>
								</select>
								<input id="" name=""  class="inputTypeText" placeholder="- 를 제외한숫자만 입력" value="" type="text"> 
								<!-- 통신사, 번호, 인증요청버튼, 인증번호, 인증확인버튼  -->
								<a href="#" onclick="">
									<img src="/resources/images/btn_checkMobile.png" alt="휴대폰 인증" style="margin-bottom: 0px;">
								</a><br>
								<input id="" name="" value="" placeholder="인증번호" type="text" style="width: 80px; margin-top: 5px;">
								<a href="#" onclick="">
									<button type="button" style="vertical-align: middle; font-size: 5pt; padding: 2px; background-color: white; border-radius: 5px; margin-top: 4px; border: #353535 1px solid;">인증하기</button>
								</a>
							    <p class="certifInfo" style="margin: 0px;">- 본인 명의의 휴대폰으로 본인인증을 진행합니다.</p>
							</div>
							    </td>
							</tr>
						</tbody>
    				</table>
    			</div>
    		</div>
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
			                    <input id="member_id" name="member_id" fw-filter="isFill&amp;isFill&amp;isMin[4]&amp;isMax[16]&amp;isIdentity" fw-label="아이디" fw-msg="" class="inputTypeText" placeholder="" readonly="readonly" value="" type="text">                     (영문소문자/숫자, 4~16자)
			                </td>
			            </tr>
						<tr>
							<th scope="row">비밀번호 <img src="/resources/images/ico_required.gif" class="" alt="필수"></th>
			                <td><input id="passwd" name="passwd" fw-filter="isMin[4]&amp;isMax[16]" fw-label="비밀번호" fw-msg="" autocomplete="off" maxlength="16" disabled="1" value="" type="password" style="background-color: rgba(239, 239, 239, 0.3);"> (영문 대소문자/숫자/특수문자 중 3가지 이상 조합, 8자~16자)</td>
			            </tr>
			            <tr class="">
							<th scope="row">비밀번호 확인 <img src="/resources/images/ico_required.gif" alt="필수"></th>
			                <td>
			                	<input id="user_passwd_confirm" name="user_passwd_confirm" fw-filter="isMatch[passwd]" fw-label="비밀번호 확인" fw-msg="비밀번호가 일치하지 않습니다." autocomplete="off" maxlength="16" disabled="1" value="" type="password" style="background-color: rgba(239, 239, 239, 0.3);"> <span id="pwConfirmMsg"></span>
							</td>
			            </tr>
			            <tr style="display:1">
							<th scope="row" id="nameTitle">이름 <img src="/resources/images/ico_required.gif" alt="필수"></th>
			                <td><input id="name" name="name" fw-filter="isFill&amp;isMax[30]" fw-label="이름" fw-msg="" class="ec-member-name" placeholder="" maxlength="30" readonly="readonly" value="" type="text"></td>
			            </tr>
			            <tr class="">
							<th scope="row">주소</th>
			                <td>
			                    <input id="postcode1" name="postcode1" fw-filter="isLengthRange[1][14]" fw-label="우편번호1" fw-msg="" class="inputTypeText" placeholder="" readonly="readonly" maxlength="14" value="" type="text">                    
			                    <a href="#none" onclick="" id="postBtn">
			                    	<img src="/resources/images/btn_zipcode.png" alt="우편번호">
		                    	</a><br>
			                    <input id="addr1" name="addr1" fw-filter="" fw-label="주소" fw-msg="" class="inputTypeText" placeholder="" readonly="readonly" value="" type="text"> 기본주소<br>
			                    <input id="addr2" name="addr2" fw-filter="" fw-label="주소" fw-msg="" class="inputTypeText" placeholder="" value="" type="text"> 나머지주소 (선택입력가능)                
		                    </td>
			            </tr>
			            <tr class="">
							<th scope="row">일반전화</th>
							<td>
								<input id="" name="" maxlength="11" value="" type="text" placeholder="- 를 뺀 숫자만 입력해주세요">
							</td>
			            </tr>
			            <tr class="">
							<th scope="row">휴대전화 <img src="/resources/images/ico_required.gif" class="" alt="필수"></th>
			                <td>
			                	<select id="moble1" name="">
									<option value="">SKT</option>
									<option value="">KT</option>
									<option value="">LGU+</option>
								</select>
								<input id="" name="" maxlength="11" value="" type="text" placeholder="- 를 뺀 숫자만 입력해주세요">
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
			                    <input id="email1" name="email1" fw-filter="isFill&amp;isEmail" fw-label="이메일" fw-alone="N" fw-msg="" value="" type="text"> <span id="emailMsg"></span>
			                </td>
			            </tr>
			            <tr class="">
							<th scope="row">이메일 수신여부 <img src="/resources/images/ico_required.gif" alt="필수"></th>
	      	         		<td>
	      	         			<input id="is_news_mail0" name="is_news_mail" fw-filter="isFill" fw-label="is_news_mail" fw-msg="" value="T" type="radio">
	      	         			<label for="is_news_mail0">수신함</label>
								<input id="is_news_mail1" name="is_news_mail" fw-filter="isFill" fw-label="is_news_mail" fw-msg="" value="F" type="radio" checked="checked">
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
							<td>
								<input id="is_sex0" name="is_sex" fw-filter="isFill" fw-label="성별" fw-msg="" disabled="1" value="M" type="radio" checked="checked">
								<label for="is_sex0">남자</label>
								<input id="is_sex1" name="is_sex" fw-filter="isFill" fw-label="성별" fw-msg="" disabled="1" value="F" type="radio">
								<label for="is_sex1">여자</label>
							</td>
			            </tr>
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
					</tbody>
				</table>
    		</div>
    		<div class="ec-base-button justify">
    			<a href="#" onclick=""><img src="/resources/images/btn_modify_member.gif" alt="회원정보수정"></a>
    			<a href="#"><img src="/resources/images/btn_modify_cancel.gif" alt="취소"></a>
    			<span class="gRight">
		            <a href="#" onclick="">
		            	<img src="/resources/images/btn_modify_out.gif" alt="회원탈퇴">
	            	</a>
		        </span>
    		</div>
    	</div>
    </div>
	
	<!-- footer -->
	<%@include file="/resources/include/footer.jsp"%>
	
	<!--  스크립트  -->		
	<%@include file="/resources/include/script.jsp"%>
	
	<script>
		
	</script>	
</body>
</html>
