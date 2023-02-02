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
	

    <style type="text/css">
    
	.join_body {
	    margin: 0 auto;
	    max-width: 390px;
	}
	.xans-member-join {
	    font-size: 15px;
	}
	.title_2020 {
	    text-align: center;
	}
	.title_2020 h2 {
	    font-weight: 500;
	    border-bottom: 1px solid #000;
	    font-size: 26px;
	    color: #000;
	    padding: 23px 0;
	    letter-spacing: -0.6px;
	}
	.xans-member-join .auth_wrap {
	    padding: 50px 0 0 0;
	}
	a {
	    text-decoration: none;
	    color: #000;
	}
	.xans-member-join .phone_auth {
	    display: block;
	    box-sizing: border-box;
	    width: 100%;
	    height: 48px;
	    line-height: 48px;
	    text-align: center;
	    border: 1px solid #000;
	    color: #000;
	    font-size: 18px;
	}
	.input_wrap {
	    border-top: 1px solid #cfcfcf;
	    margin-bottom: 15px;
	}
	.label_plh {
	    border: 1px solid #cfcfcf;
	    border-top: none;
	    padding: 4px 6px;
	    margin-bottom: 0;
	}
	.xans-member-join input[type='password'], .xans-member-join input[type='email'], .xans-member-join input[type="password"], .xans-member-join input[type="text"] {
	    width: calc(100% - 80px);
	    line-height: 40px;
	    height: 40px;
	    padding: 0 0;
	    border: none;
	    outline: none;
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
	.mod_message {
	    color: #ff0000;
	    padding: 0 0 0 0;
	}
	.input_wrap {
	    border-top: 1px solid #cfcfcf;
	    margin-bottom: 15px;
	}
	.label_plh#nameTitle {
	    background: #eeeeee;
	}
	.label_plh {
	    border: 1px solid #cfcfcf;
	    border-top: none;
	    padding: 4px 6px;
	    margin-bottom: 0;
	}
	.label_plh_m {
	    border: 1px solid #cfcfcf;
	    border-top: none;
	    padding: 6px 6px;
	    margin-bottom: 0;
	    position: relative;
	}
	.label_plh_m input[type="tel"], .label_plh_m input[type="text"] {
	    width: 50px;
	}
	.label_plh_m .calendar {
	    position: absolute;
	    right: 5px;
	    top: 10px;
	    text-align: right;
	    display: inline-block;
	}
	.switch-radio {
	    display: flex;
	    margin-bottom: 0;
	}
	.label_plh_m .calendar {
	    position: absolute;
	    right: 5px;
	    top: 10px;
	    text-align: right;
	    display: inline-block;
	}
	.label_plh_hp {
	    border: 1px solid #cfcfcf;
	    border-top: none;
	    padding: 6px 6px;
	    margin-bottom: 0;
	    position: relative;
	}
	.label_plh_hp select {
	    width: 30%;
	    margin-right: 10px;
	    line-height: 36px;
	    height: 36px;
	    background: none;
	    padding: 0 0 0 3px;
	    border: 1px solid #d5d5d5;
	    -webkit-appearance: button;
	}
	.label_plh_hp input[type="text"], .label_plh_hp input[type="tel"] {
	    width: 30%;
	    text-indent: 10px;
	}
	.xans-member-join .btn_join {
	    text-align: center;
	    padding: 0 0;
	    height: 60px;
	    width: 100%;
	}

	button {
	    overflow: visible;
	    padding: 0;
	    margin: 0;
	    border: 0;
	    cursor: pointer;
	}
	* {
	    font-family: "Noto Sans KR",sans-serif;
	}
	user agent stylesheet
	button {
	    appearance: auto;
	    writing-mode: horizontal-tb !important;
	    text-rendering: auto;
	    color: buttontext;
	    letter-spacing: normal;
	    word-spacing: normal;
	    line-height: normal;
	    text-transform: none;
	    text-indent: 0px;
	    text-shadow: none;
	    display: inline-block;
	    text-align: center;
	    align-items: flex-start;
	    cursor: default;
	    box-sizing: border-box;
	    background-color: buttonface;
	    margin: 0em;
	    padding: 1px 6px;
	    border-width: 2px;
	    border-style: outset;
	    border-color: buttonborder;
	    border-image: initial;
	}
	.switch-radio input:checked + label {
	    background-color: #048be3;
	    border: 1px solid #048be3;
	    color: #fff;
	    box-shadow: none;
	}
	.switch-radio label {
	    background-color: #ffffff;
	    color: #878787;
	    font-size: 13px;
	    line-height: 30px;
	    text-align: center;
	    padding: 0 10px;
	    border: 1px solid #cfcfcf;
	    min-height: auto;
	    margin-left: -1px;
	    transition: all 0.1s ease-in-out;
	}
	.switch-radio input {
	    position: absolute !important;
	    clip: rect(0, 0, 0, 0);
	    height: 1px;
	    width: 1px;
	    border: 0;
	    overflow: hidden;
	    margin: 0;
	}
	.mod_message.error {
	    padding: 3px 0 10px 0;
	    border-bottom: 1px solid #cfcfcf;
	}
	.btn_join_submit {
	    border: none;
	    outline: none;
	    display: block;
	    color: #fff;
	    width: 100%;
	    font-size: 16px;
	    text-align: center;
	    background: #048be3;
	    line-height: 56px;
	    height: 56px;
	    font-weight: 700;
	    margin-bottom: 100px;
	}
	body {
		margin: 0
	}
	div {
		box-sizing: border-box;
	}
	.black-bg {
		width: 100%;
		height: 100%;
		background: rgba(0,0,0,0.5);
		position: fixed;
		padding: 150px 500px 0px 500px;
		z-index: 9999;
		display: none;
	}
	.white-bg {
		width: 100%;
		height: 300px;
		background: white;
		border-radius: 8px;
		/* padding: 20px; */
	}
	.modal_head {
		border-bottom: 1px solid #000;
		display: flex;
		justify-content: space-between;
		padding: 10px;
		align-items: center;
	}
	.modal_head a {
		cursor: pointer;
	}
	.close {
		padding-right: 5px;
		font-size: 20pt;
	}
	.modal_body {
		padding: 20px 50px 50px 50px;
	}
	.inputTypeText {
		height: 23.2px;
	}
	#confirmCodeButton {
		font-size: 5pt;
		height: 25px; 
		width: 60px;
		background: #000;
		color: #fff;
	}
	#confirmCodeButton:hover {
		background: #fff;
		color: #000;
		border: 0.5px solid #000;
	}	
    </style>
</head>
<body>
	<form method="post" id="mainForm">
	<!-- header  -->
	<%@include file="/resources/include/header.jsp"%>
	<!-- 휴대폰 인증 모달 s -->
	<div class="black-bg" id="modal">
		<div class="white-bg">
			<div class="modal_head">
				<h4>휴대폰 인증</h4>
				<a id="closeModal">
					<i class="fa-solid fa-xmark close"></i>
				</a>
			</div>
			<div class="modal_body">
				<p>회원인증</p>
				<input id="certName" name="mmName" value="" placeholder="이름" style="width: 80px;"><br><br>
				<select id="telecom" onchange="selectBoxChange(this.value);">
					<option value="" selected hidden>선택</option>
					<option value="3">SKT</option>
					<option value="4">KT</option>
					<option value="5">LGU+</option>
				</select>
				<input id="phoneNumber"  class="inputTypeText" placeholder="- 를 제외한숫자만 입력" value="" type="text" style="height: 25px;"> 
				
				<button type="button" id="phoneNumberButton" onclick="">
					<img src="/resources/images/btn_checkMobile.png" alt="휴대폰 인증" style="margin-bottom: 0px;">
				</button><br>
				<div style="margin-top: 15px;">
					<input id="confirmCode" placeholder="인증번호" type="text" style="width: 80px; height: 25px;">
					<button id="confirmCodeButton" type="button" >인증하기</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 휴대폰 인증 모달 e -->
	<div class="container">
		<div class="join_body">
			<form method="post" id="" name="" enctype="multipart/form-data">
				<div class="xans-element- xans-member xans-member-join">
					<div class="title_2020">
						<h2 style="color: #000;">회원가입</h2>
					</div>
					<div class="auth_wrap">
					    <div id="authMember">
					        <div id="authWrap">
					            <!-- 개인 회원 인증 -->
					            <div id="personAuth">
					                <!-- 휴대폰인증 -->
					                <div id="mobileWrap">
					                    <a href="#" onclick="" style="text-decoration: none;">
					                        <span class="phone_auth" id="certChange">휴대폰 인증하기</span>
					                    </a>
					                </div>
					            </div>
					        </div>
					    </div>
					</div>
					<br>
					<br>
					<div class="input_wrap">
					    <div class="label_plh">
					        <input id="member_id" name="mmId" class="inputTypeText" placeholder="아이디" value="" type="text">
					    </div> 
					    <div class="mod_message error" id="idMsg" style="display: none;">사용하실수 없는 아이디 입니다.</div>
					    <div class="label_plh password">
					        <input id="pw" name="mmPassword" maxlength="16" 0="disabled" value="" type="password" placeholder="비밀번호">
					    </div>
					    <div class="label_plh">
					        <input id="pwCheck" name="pwCheck" fw-label="비밀번호 확인" fw-msg="비밀번호가 일치하지 않습니다." autocomplete="off"
					            maxlength="16" 0="disabled" value="" type="password" placeholder="비밀번호 확인">
					    </div>
					    <div class="mod_message error" id="pwConfirmMsg" style="display: none;">비밀번호가 일치하지 않습니다</div>
					
					    <div class="label_plh">
					        <input id="email1" name="mmEmail" value="" type="text" placeholder="이메일"> 
					    </div>
					    <!-- <div class="mod_message" id="emailMsg">유효한 이메일을 입력해 주세요</div> -->
					</div>
					<div class="input_wrap ">
					    <div class="label_plh" id="nameTitle">
					        이름 &nbsp;
					        <span class="msgInput" id="nameContents">
					        	
					        </span>
					    </div>
					    <div class="label_plh_m ">
					        <input id="birth_year" name="mmYear" class="inputTypeText" placeholder="" maxlength="4" value="" type="text"> 년 
					        <input id="birth_month" name="mmMonth" class="inputTypeText" placeholder="" maxlength="2" value="" type="text"> 월 
					        <input id="birth_day" name="mmDay" class="inputTypeText" placeholder="" maxlength="2" value="" type="text"> 일
					        <!-- <input id="mmBirth" name="mmBirth" type="hidden" value=""> -->
					        <p class="calendar " style="margin: 0px;">
					            <span class="switch-radio">
					                <input id="is_solar_calendar0" name="is_solar_calendar" value="1" type="radio">
					                <label for="is_solar_calendar0">남자</label>
					                <input id="is_solar_calendar1" name="is_solar_calendar" value="2" type="radio">
					                <label for="is_solar_calendar1">여자</label>
					                <input id="gender" name="mmGender" type="hidden" value="0">
					            </span>
					        </p>
					    </div>
				    	<div class="label_plh_hp ">
					        <select id="certTelecom" name="mmTelecom" onchange="selectBoxChange(this.value);">
								<option value="" selected hidden>선택</option>
								<option value="3">SKT</option>
								<option value="4">KT</option>
								<option value="5">LGU+</option>
							</select>
					        <input id="certPhone" name="mmPhoneNumber" value="" type="text">
					        <input type="hidden" id="certYn" name="mmCertNy" value="0">
					    </div>
					</div>
					<br>
					<div class="btn_join">
						<button type="button" class="btn_join_submit" onclick="goSignup()">가입하기</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	</form>
	<!-- footer -->
	<%-- <%@include file="/resources/include/footer.jsp"%> --%>
	
	<!--  스크립트  -->		
	<%@include file="/resources/include/script.jsp"%>
	
	<script type="text/javascript">
		//인증모달여기
		$("#certChange").on("click", function(){
			$("#modal").show();
		});
		//인증모달 닫기
		$("#closeModal").on("click", function(){
			$("#modal").hide();
		});
		/* window.onload = function(){
			var month = $("#birth_month").val();
			var day = $("#birth_day").val();
			
			var birth = $("#birth_month").val() + $("#birth_day").val();
		
			$("#mmBirth").attr("value", birth);			
		}; */
		$(document).ready(function(){
			//통신사 코드 넘겨주는 부분
	    	$("#telecom").change(function(){
	    		$('#certTelecom').val($(this).val()).prop("selected",true);
	    		console.log("Telecom : " + $(this).val());
	    	});
			//성별체크해서 값넘겨주는부분 
	    	$("input[name='is_solar_calendar']").change(function(){
	    		var genderVal = $("input[name='is_solar_calendar']:checked").val();
	    		$("#gender").attr("value", genderVal);
	    	});
		});
		//아이디 중복 체크
		$("#member_id").on("focusout", function() {
			
			$.ajax({
				url : "/member/signUpidCheck",
				type : 'POST',
				datatype : 'json',
				data : {
					mmId : $("#member_id").val()
				},
				success : function(result) {
					if(result.rt == "success") {
						$("#idMsg").show();
						$("#idMsg").html("사용 가능한 아이디 입니다.");
						$("#idMsg").css("color","#048be3;");
					} else {
						$("#idMsg").show();
					}
				}
			});
		});
		//비밀번호 일치 체크
		$('#pwCheck').on("focusout", function(){
			var pwd1 = $("#pw").val();
	        var pwd2 = $("#pwCheck").val();
	  
	        if ( pwd1 != '' && pwd2 == '' ) {
	            null;
	        } else if (pwd1 != "" || pwd2 != "") {
	            if (pwd1 == pwd2) {
	                $("#pwConfirmMsg").show();
	                $("#pwConfirmMsg").html("비밀번호가 일치합니다.");
					$("#pwConfirmMsg").css("color","#048be3;");
	            } else {
            	  	$("#pwConfirmMsg").show();
	            }
	        }
	    });
		
		
		goSignup = function() {

			if($("#member_id").val() == '' || $("#member_id").val() == null ){
				swal({
					  title: '아이디를 입력 해주세요!.',    
					  icon: 'warning',
					});
				return false;				
			}
			if($("#pwCheck").val() == '' || $("#pwCheck").val() == null ){
				swal({
					  title: '비밀번호를 입력 해주세요!.',    
					  icon: 'warning',
					});
				return false;				
			}
			if($("#email1").val() == '' || $("#email1").val() == null ){
				swal({
					  title: '이메일을 입력 해주세요!.',    
					  icon: 'warning',
					});
				return false;				
			}
			if($("#birth_day").val() == '' || $("#birth_day").val() == null ){
				swal({
					  title: '생년월일을 입력 해주세요!.',    
					  icon: 'warning',
					});
				return false;				
			}
			if($("#gender").val() == '0'){
				swal({
					  title: '성별을 선택 해주세요!.',    
					  icon: 'warning',
					});
				return false;				
			}
			if($("#certYn").val() == '0'){
				swal({
					  title: '휴대폰 인증을 완료해주세요!.',    
					  text: '휴대폰 인증을 하지 않으셨습니다.', 
					  icon: 'warning',
					});
				return false;				
			}
			
		form.attr("action", "/member/signUpInst").submit();
			
		};
		
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
			var crName = $("#certName").val();
			
			$("#certPhone").attr("value" , numResult);

			
			swal("인증 성공!",  " 인증이 확인 되었습니다.", "success")
				.then(function() {
					console.log(crName);

					$("#certYn").attr("value", "1");			
					$("#certChange").html('<i class="fa-solid fa-check"></i>휴대폰 인증완료');
					$("#nameContents").html(crName);
					$("#modal").hide();
				});
			

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
