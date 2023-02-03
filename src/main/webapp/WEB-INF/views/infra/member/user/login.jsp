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
	    margin: 0 0 35px 0;
	    text-align: center;
	    border-bottom: 1px solid #000;
	    padding: 0 0 23px 0;
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
	    padding: 14px 0 21px;
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
	.loginbox {
		position: relative;
	    margin: 0px 0 0;
	    font-size: 13px;
	}
	.loginbox .box {
		margin: 0 0px 0 0;
	}
	.join_intro .loginbox .box input[type="text"] {
	    margin: 0 0 7px;
	}
	.join_intro .loginbox .box input[type="text"], .join_intro .loginbox .box input[type="password"] {
	    font-size: 16px;
	    width: 100%;
	    text-indent: 5px;
	    margin: 0;
	    padding: 0;
	    height: 54px;
	    line-height: 54px;
	    background: #ffffff;
	    border: 1px solid #d4d4d4;
	    -webkit-box-sizing: border-box;
	    -moz-box-sizing: border-box;
	    box-sizing: border-box;
	}
	.btn_wrap.ptmore {
	    padding: 20px 0 0 0;
	}
	button.btnSubmit {
	    display: block;
	    background: #000000;
	    border: none;
	    text-align: center;
	    width: 100%;
	    color: #fff;
	    height: 61px;
	    line-height: 61px;
	    font-size: 18px;
	    letter-spacing: -1px;
	}
	.typeLogin {
	    height: 43px;
	    margin: 0 auto;
	    font-size: 13px;
	    line-height: 43px;
	    text-align: right;
	}
	.typeLogin .btnLogin {
	    position: relative;
	    display: inline-block;
	    padding: 0 8px 0 0;
	    color: #000000;
	    font-weight: normal;
	    font-size: 14px;
	}
	.typeLogin .btnLogin.bar {
	    padding: 0 0 0 8px;
	}
	.typeLogin .btnLogin.bar:before {
    display: block;
    content: "";
    position: absolute;
    top: 16px;
    left: 0;
    width: 1px;
    height: 13px;
    background: #848484;
}
	</style>
</head>
<body>
	<form id="" name="" action="" method="post" enctype="multipart/form-data">
		<!-- header  -->
		<%@include file="/resources/include/header.jsp" %>
		<div class="container">
			<div class="join_intro">
				<div class="join_title">
					<h2>로그인</h2>
				</div>
				<div class="loginbox">
					<div class="box">
						<label class="ePlaceholder " title="아이디" style="width: 100%; margin: 0 0 7px;">
							<input id="member_id" name="member_id" class="inputTypeText" placeholder="아이디" value=""
								type="text">
						</label>
						<label class="ePlaceholder " title="비밀번호" style="width: 100%;">
							<input id="member_passwd" name="member_passwd" value="" type="password" placeholder="비밀번호">
						</label>
					</div>
					<div class="btn_wrap ptmore">
						<button type="button" class="btnSubmit" onclick="signIn()">로그인</button>
					</div>
					<div class=" typeLogin">
						<a href="#" class="btnLogin">아이디찾기</a>
						<a href="#" class="btnLogin bar">비밀번호찾기</a>
					</div>
					<div class="xans-element- xans-member xans-member-login snsSync ">
						<a href="#" id="kakaoBtn" class=" sync kakao" style="text-decoration: none;">
							<img src="/resources/images/log_sns_kakao.png" alt="">카카오로 로그인 하기
						</a>
						<a href="#" id="naverBtn" class="sync" style="text-decoration: none; background: #03C75A;">
							<img src="/resources/images/log_sns_naver.png" alt="" style="width: 50px;height: 50px;">네이버로
							로그인 하기
						</a>
					</div>
				</div>
			</div>
		</div>
	</form>
	<!-- footer -->
	<%-- <%@include file="/resources/include/footer.jsp"%> --%>
	
	<!--  스크립트  -->		
	<%@include file="/resources/include/script.jsp"%>
	
	<script>
	//카카오
	Kakao.init('c1205ed10c6257b76d998633147ec125'); //발급받은 키 중 javascript키를 사용해준다.
	console.log(Kakao.isInitialized()); // sdk초기화여부판단
	
	/* 카카오 로그인 s */
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
									swal("로그인 성공!", result.name + " 회원님 로그인되었습니다.", "success")
									.then(function() {
										location.href="/";
									});
								} else {
									
									if(account.email == null || account.email == '') {
										swal({
											  title: '이메일 정보수집을 동의해주세요.!',    
											  icon: 'warning',
											});
										return false;
									}
									if(account.gender == null || account.gender == '') {
										swal({
											  title: '성별 정보수집을 동의해주세요.!',    
											  icon: 'warning',
											});
										return false;
									}
									
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
											if (response.rt == "success") {
												window.location.href = "/";
											return false;
											} else {
												alert("아이디와 비밀번호를 다시 확인 후 시도해 주세요.");
											}
										},
										error : function(jqXHR, status, error) {
											alert("카카오 로그인아작스 에러 [ " + error + " ]");
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
	/* 카카오 로그인 e */
	
	signIn = function() {
		
		if($("#member_id").val() == '' || $("#member_id").val() == null) {
			swal({
				  title: '아이디를 입력해주세요.!',    
				  icon: 'warning',
				});
			return false;
		}
		if($("#member_passwd").val() == '' || $("#member_passwd").val() == null) {
			swal({
				  title: '비밀번호를를 입력해주세요.!',    
				  icon: 'warning',
				});
			return false;
		}
		$.ajax({
			url : '/member/signInCd',
			type : 'POST',	
			datatype : 'json',	
			data : {
				mmId : $("#member_id").val(),
				mmPassword : $("#member_passwd").val()
			},	
			success : function(result) {
				if (result.rt == "success") {
					swal("로그인 성공!", result.name + " 회원님 로그인되었습니다.", "success")
					.then(function() {
						location.href="/";
					});
				} else {
					swal({
						  title: '로그인 실패!.',    
						  text: "아이디와 비밀번호를 다시 확인 후 시도해 주세요.", 
						  icon: 'warning',
						});
				}
			},
			error : function(){
				alert("ajax error..!");
			}
		});
	};
	
	/* 네이버 로그인 s */
	$("#naverBtn").on("click", function() {
		swal("준비중입니다",);
	});
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	</script>	
</body>
</html>
