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
		    * {
		margin: 0;
		padding: 0;
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
	img {
	    border: none;
	    vertical-align: top;
	}
	.join_intro .snsSync {
	    padding: 100px 0 21px;
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
	    background: #f8f8f9;
	    color: #000000;
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

	<!-- header  -->
	<%@include file="/resources/include/header.jsp"%>
	
		<div class="container">
		<div class="join_intro">
			<div class="join_title">
				<h2>로그인</h2>
			</div>
			<div class="message">
				<span>
					<img src="/resources/images/로고&배너/메인로고.png" alt="" style="height: 38px; width:180px; margin: 0 0 6px 0;">
				</span>
				<br>
					당신이 가장 빛나는 순간	
			</div>
			<form id="member_form_7671323102" name="" action="/exec/front/Member/login/" method="post" target="_self" enctype="multipart/form-data">
			<!-- <input id="returnUrl" name="returnUrl" value="https://theforment.com/member/privacy.html" type="hidden">
			<input id="forbidIpUrl" name="forbidIpUrl" value="/" type="hidden">
			<input id="certificationUrl" name="certificationUrl" value="/intro/adult_certification.html" type="hidden">
			<input id="sIsSnsCheckid" name="sIsSnsCheckid" value="" type="hidden">
			<input id="sProvider" name="sProvider" value="" type="hidden"> -->
			<div class="xans-element- xans-member xans-member-login snsSync ">
				<a href="#none" id="kakaoBtn" class=" sync kakao" style="text-decoration: none;">
					<img src="/resources/images/log_sns_kakao.png" alt="">카카오로 로그인 하기
				</a>
				<a href="" class="sync" style="text-decoration: none;">다른 방법으로 시작 하기</a>
			</div>
			</form>
			<div class="guest_order_wrap">
				<div class="guest_order">
					<a href="">비회원 주문배송조회 &gt;</a>
					
				</div>
			</div>
		</div>
	</div>
	
	<!-- footer -->
	<%-- <%@include file="/resources/include/footer.jsp"%> --%>
	
	<!--  스크립트  -->		
	<%@include file="/resources/include/script.jsp"%>
	
	<script>
	//카카오
	Kakao.init('c1205ed10c6257b76d998633147ec125'); //발급받은 키 중 javascript키를 사용해준다.
	console.log(Kakao.isInitialized()); // sdk초기화여부판단
	
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
						/*  console.log("picture : " + account.birthday.substring(0,2) + "-" + account.birthday.substring(2,account.birthday.length)); */
						/*  $("form[name=form]").attr("action", "/member/kakaoLoginProc").submit(); */
						
						$.ajax({
							type : 'POST'
							,url : '/member/idCheck'
							,datatype : 'json'
							,data : 
							{
								mmId : id
							}
							,success : function(result) {
								if (result.rt == "fail") {
									
									$.ajax({
										async: true
										,cache: false
										,type:"POST"
										,url: "/member/kakaoLoginProc"
										,datatype: 'json'
										,data: {
											mmId : id
											,mmEmail : account.email
											,mmName : account.profile.nickname
											,mmGender : account.gender == 'male' ? 1 : 2
											,mmBirth : account.birthday		
										}
										,success : function(response) {
											if (response.rt == "fail") {
											alert("아이디와 비밀번호를 다시 확인 후 시도해 주세요.");
											return false;
											} else {
											window.location.href = "/";
											}
										},
										error : function(jqXHR, status, error) {
											alert("카카오 로그인아작스 에러 [ " + error + " ]");
										}
									});
								} else {
									window.location.href = "/";
									return false;
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
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	</script>	
</body>
</html>
