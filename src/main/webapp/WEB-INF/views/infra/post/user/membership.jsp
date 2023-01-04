<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="kr">
<head>

	<title>MEMBERSHIP</title>
	
	<!-- link -->
	<%@include file="/resources/include/link.jsp"%>

	<style type="text/css"> /* c/s center 부분 */
    
    	.upperMenuList {
	    	 list-style: none;
	    	 float: left;
	    	 margin-right: 25px;
	    	 font-size: 11pt;
    	}
    	
    	.pathList {
			list-style: none;
			float: left;
			margin-right: 10px;
			font-size: 11pt;
    	}
    	
    	.pathList i {
    		color: grey;
    	}
    	
    	.xans-board-search {
		    padding: 20px 0 20px 10px;
		    color: #2e2e2e;
		    font-size: 12px;
		}
    	
    	.xans-board-search .boardSearch {
		    display: block;
		}
		
		fieldset {
		    border: none;
		    vertical-align: top;
		    margin-inline-start: 2px;
		    margin-inline-end: 2px;
		    padding-block-start: 0.35em;
		    padding-inline-start: 0.75em;
		    padding-inline-end: 0.75em;
		    padding-block-end: 0.625em;
		    min-inline-size: min-content;
		}
		    
		.xans-board-search p {
		    margin: 0 0 10px;
		    padding: 0 0 0 7px;
		}
		
		p {
			display: block;
		   	margin-block-start: 1em;
		   	margin-block-end: 1em;
		   	margin-inline-start: 0px;
		   	margin-inline-end: 0px;
		}
		select {
		    height: 24px;
		    border: 1px solid #d5d5d5;
		}
		
    </style>
</head>
<body>

	<!-- header  -->
	<%@include file="/resources/include/header.jsp"%>
	
	<form id="mainForm">
		
		<!-- section --> <!-- MEMBERSHIP-->
		<div class="container" style="margin-top: 100px; margin-bottom: 150px;">
			<div class="row"style="margin: 0 30px 0 40px;">
				<div class="col">
					<span>MEMBERSHIP</span> 
				</div>
				<div class="col d-flex justify-content-end" name="path">
					<ol>
		    			<li class="pathList">
		    				<a href="#"><i class="fa-solid fa-house-chimney"></i></a>
		    			</li>
		    			<li class="pathList">
		    				<i class="fa-solid fa-chevron-right"></i>
		    			</li>
		    			<li class="pathList">
				    		<strong>MEMBERSHIP</strong>
		    			</li>
		    		</ol>
				</div>
			</div>
			<div class="row"style="margin: 0 30px 30px 40px;">
				<div class="col d-flex justify-content-center">
					<ul>
						<li class="upperMenuList">NOTICE</li>
						<li class="upperMenuList" style="border-left: 1px solid black; padding-left: 20px;">Q&A</li>
						<li class="upperMenuList" style="border-left: 1px solid black; padding-left: 20px;">FAQ</li>
						<li class="upperMenuList" style="border-left: 1px solid black; padding-left: 20px;"><u>MEMBERSHIP</u></li>
					</ul> 
				</div>
			</div>
			<div class="row">
				<div class="col d-flex justify-content-center">
					<img src="/resources/images/grade.png">
				</div>
			</div>
		</div>
		
	  </form>
	
	<!-- footer -->
	<%@include file="/resources/include/footer.jsp"%>
	
	<!--  스크립트  -->		
	<%@include file="/resources/include/script.jsp"%>
	
	<script>
		
	</script>	
</body>
</html>
