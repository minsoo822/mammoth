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
		    .xans-myshop-orderhistorynologin {
	    position: relative;
	    width: 390px;
	    margin: 0 auto;
	    padding: 0 0 23px 0;
	}
    .xans-myshop-orderhistorynologin {
	    position: relative;
	    width: 390px;
	    margin: 0 auto;
	    padding: 0 0 23px 0;
	}
    .xans-myshop-orderhistorynologin .login_title {
	    font-size: 26.5px;
	    color: #000;
	    padding: 0 0 23px 0;
	    border-bottom: 1px solid #000;
	    margin-bottom: 35px;
	    text-align: center;
	}
	label {
	    cursor: default;
	}
	.xans-myshop-orderhistorynologin .button {
	    padding: 20px 0 10px 0;
	}
	button {
	    overflow: visible;
	    padding: 0;
	    margin: 0;
	    border: 0;
	    cursor: pointer;
	}
	.xans-myshop-orderhistorynologin .button .oerder_submit {
	    display: block;
	    width: 100%;
	    background: #000000;
	    color: #fff;
	    font-size: 15px;
	    line-height: 61px;
	}
	</style>
</head>
<body>

	<!-- header  -->
	<%@include file="/resources/include/header.jsp"%>
	
    <div class="container">
    	<form action="">
	    	<div class="xans-element- xans-myshop xans-myshop-orderhistorynologin ">
	    		<div class="login_title">비회원 주문배송조회</div>
	    		<div class="form">
					<label class="ePlaceholder " title="주문자명">
						<input id="order_name" name="order_name" placeholder="주문자명" value="" type="text" style="width: 388px;">
					</label>
					<div class="half">
						<div class="ePlaceholder " title="주문번호">
							<input id="order_id" name="order_id" maxlength="18" value="" type="text" placeholder="주문번호">
						</div>
					</div>
					<label class="ePlaceholder " title="비회원 비밀번호">	
						<input id="order_password" name="order_password" type="password" placeholder="비회원 비밀번호" style="width: 388px;">
					</label>
				</div>
				<p class="button">
					<button type="submit" class="oerder_submit">확인</button>
				</p>
				<p>- 비회원 상품을 구매하신 경우에만 주문/배송조회가 가능합니다.</p>
	    	</div>
    	</form>
    </div>

	
	<!-- footer -->
	<%@include file="/resources/include/footer.jsp"%>
	
	<!--  스크립트  -->		
	<%@include file="/resources/include/script.jsp"%>
	
	<script>
		
	</script>	
</body>
</html>
