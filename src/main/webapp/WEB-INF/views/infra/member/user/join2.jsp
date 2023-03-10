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
		    a {
	    text-decoration: none;
	    cursor: pointer;
	}
    .container {
		width: 1200px;
	    margin: 0 auto;
	    padding-top: 60px;
	    position: relative;
    }
    .join_intro {
	    margin: 0px auto 80px;
	    max-width: 393px;
	}
	.join_intro .join_title {
	    margin: 0 0 40px 0;
	    text-align: center;
	    border-bottom: 1px solid #d4d4d4;
	    padding: 0 0 40px 0;
	}
	.join_intro .join_title h2 {
	    font-size: 26px;
	    letter-spacing: -0.85px;
	    color: #000;
	    font-weight: 500;
	    line-height: 1.1;
	}
	.join_intro .message {
	    color: rgba(0,0,0,0.76);
	    font-size: 28px;
	    letter-spacing: -2px;
	    line-height: 1.3;
	    font-weight: bold;
	    text-align: center;
	}
	.join_intro .message span {
	    font-weight: 600;
	    letter-spacing: -0.4px;
	}
	.join_intro .message .msc {
	    color: rgba(45,45,45,0.7);
	    font-size: 12px;
	    letter-spacing: -0.75px;
	    font-weight: normal;
	    margin: 20px 0 0 0;
	}
	img {
	    border: none;
	    vertical-align: top;
	}
	.join_intro .snsSync {
	    padding: 50px 0 50px;
	    margin: 0 0;
	}
	.join_intro .snsSync a.sync {
	    display: block;
	    background: #000000;
	    color: #fefffe;
	    font-size: 15.2px;
	    font-weight: normal;
	    line-height: 61px;
	    border-radius: 32px;
	    letter-spacing: -0.85px;
	    text-align: center;
	    margin: 0 0 11px 0;
	    position: relative;
	}
	.join_intro .snsSync a.sync.kakao {
	    background: #fae101;
	    color: #3c1e1e;
	    font-weight: 500;
	}
	.join_intro .snsSync a.sync {
        display: block;
	    background: #000000;
	    color: #fefffe;
	    font-size: 15.2px;
	    font-weight: normal;
	    line-height: 61px;
	    border-radius: 32px;
	    letter-spacing: -0.85px;
	    text-align: center;
	    margin: 0 0 11px 0;
	    position: relative;
	}
	.join_intro .snsSync a.sync img {
	    height: 19px;
	    vertical-align: middle;
	    display: inline;
	    margin-right: 14px;
	}
	.join_intro .guest_order_wrap .guest_order {
	    padding: 10px 0 20px 0;
	    text-align: center;
	}
	.join_intro .guest_order_wrap .guest_order a {
	    font-size: 14px;
	    color: rgba(0,0,0,.8);
	    font-weight: 500;
	    letter-spacing: -0.8px;
	}
	</style>
</head>
<body>
	<form id="mainForm" method="post">
	<!-- header  -->
	<%@include file="/resources/include/header.jsp"%>
	
	<div class="container">
		<div class="join_intro">
			<div class="join_title">
				<h2 style="font-weight: 600;">????????????</h2>
			</div>
			<div class="message">
				<span>
					<img src="/resources/images/??????&??????/????????????.png" alt="" style="height: 38px; width:180px; margin: 0 0 6px 0;">
				</span>
				<br>
					????????? ?????? ????????? ??????	
					<div class="msc">?????? ?????? ??? ?????? ????????? 10,000??? ??????</div>
			</div>
			<form id="member_form_7671323102" name="" action="/exec/front/Member/login/" method="post" target="_self" enctype="multipart/form-data">
			<!-- <input id="returnUrl" name="returnUrl" value="https://theforment.com/member/privacy.html" type="hidden">
			<input id="forbidIpUrl" name="forbidIpUrl" value="/" type="hidden">
			<input id="certificationUrl" name="certificationUrl" value="/intro/adult_certification.html" type="hidden">
			<input id="sIsSnsCheckid" name="sIsSnsCheckid" value="" type="hidden">
			<input id="sProvider" name="sProvider" value="" type="hidden"> -->
			<div class="xans-element- xans-member xans-member-login snsSync ">
				<a href="/member/signUp" class="sync" style="text-decoration: none; margin-bottom: 25px">?????? ????????????</a>
				<a href="#none" id="kakaoBtn" class=" sync kakao" style="text-decoration: none;">
					<img src="/resources/images/log_sns_kakao.png" alt="">???????????? ????????? ??????
				</a>
			</div>
			</form>
			<div class="guest_order_wrap">
				<div class="guest_order">
					<a href="">????????? ?????????????????? &gt;</a>
					
				</div>
			</div>
		</div>
	</div>
	</form>
	<!-- footer -->
	<%-- <%@include file="/resources/include/footer.jsp"%> --%>
	
	<!--  ????????????  -->		
	<%@include file="/resources/include/script.jsp"%>
	
	<script>
	//?????????
	Kakao.init('c1205ed10c6257b76d998633147ec125'); //???????????? ??? ??? javascript?????? ???????????????.
	console.log(Kakao.isInitialized()); // sdk?????????????????????
	
	/* ????????? ????????? s */
	$("#kakaoBtn").on("click", function() {
		/* Kakao.Auth.authorize({
		redirectUri: 'http://localhost:8080/member/kakaoCallback',
		}); */

		Kakao.Auth.login({
			success:function(response){
				Kakao.API.request({ 
					url:'/v2/user/me',
					success:function(response){
						
						var token = Kakao.Auth.getAccessToken(); 

						Kakao.Auth.setAccessToken(token);
						var account = response.kakao_account;  
						var id = response.id;
						
						console.log(response)
						console.log("id : " + id);
						console.log("email : " + account.email);
						console.log("name : " + account.profile.nickname);
						console.log("picture : " + account.profile.thumbnail_image_url);
						console.log("gender : " + account.gender);
						console.log("birthday : " + account.birthday);
						
						$.ajax({
							type : 'POST'
							,url : '/member/idCheck'
							,datatype : 'json'
							,data : 
							{
								mmId : id +"@K"
							}
							,success : function(result) {
								if (result.rt == "success") {
									swal("????????? ??????!", result.name + " ????????? ????????????????????????.", "success")
									.then(function() {
										location.href="/";
									});
								} else {
									$.ajax({
										async: true
										,cache: false
										,type:"POST"
										,url: "/member/kakaoLoginProc"
										,datatype: 'json'
										,data: {
											mmId : id +"@K"
											,mmEmail : account.email
											,mmName : account.profile.nickname
											,mmGender : account.gender == 'male' ? 1 : 2
											,mmBirth : account.birthday		
										}
										,success : function(response) {
											if (response.rt == "fail") {
											alert("???????????? ??????????????? ?????? ?????? ??? ????????? ?????????.");
											return false;
											} else {
											window.location.href = "/";
											}
										},
										error : function(jqXHR, status, error) {
											alert("????????? ?????????????????? ?????? [ " + error + " ]");
										}
									});
								}
							}
						});
					},
					fail: function (error) {
					console.log(error)
					},
				})
			},
			fail: function (error) {
			console.log(error)
			},
		})
	});
	/* ????????? ????????? e */
	</script>	
</body>
</html>
