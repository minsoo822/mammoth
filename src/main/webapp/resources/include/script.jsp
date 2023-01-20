<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 
 
<!-- 공통 script -->
<script src="https://kit.fontawesome.com/63aa3074b3.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<!-- Chart.js 라이브러리 스크립트 -->
<!-- <script src="https://cdn.jsdelivr.net/npm/chart.js"></script> -->
<!-- 카카오 api 사용을 위한 스크립트 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<!-- 카카오 우편번호 api 사용을 위한 스크립트 -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>
	
	var form = $("#mainForm");
	var mmSeq = $("#mmSeq").val();
	
	var goMyinfo = "/member/myinfo";
	var orderList = "/member/orderList";
	var basket = "/basket/basketList";
	var mypage = "/member/mypage";
	var adrList = "/member/adrList";
	var adrListForm = "/member/adrListForm";
	
	
	

	/* 로그아웃 s */
	function btnLogout() {
		$.ajax({
			async: true
			,cach: false
			,type: "post"
			,url: "/member/logout"
			,datatype: 'json'
			,data: {}
			,success: function(response) {
				if(response.rt == "success"){
					location.href = "/";
				} else {
					//by pass
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate" + jqXHR.textStatus + ": " + jqXHR.errorThrown);
			}
		});
	};
	/* 로그아웃 e */
	btnMyinfo = function(key) {
		form.attr("action" , goMyinfo ).submit();
	}
	btnOderlist = function(key) {
		form.attr("action" , orderList ).submit();
	}
	btnBasket = function(key) {
		form.attr("action" , basket ).submit();
	}
	btnMypage = function(key) {
		form.attr("action" , mypage ).submit();
	}


</script>