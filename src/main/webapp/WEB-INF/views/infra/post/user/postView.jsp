<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="kr">
<head>

	<title>NOTICE 상세 글</title>
	
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
		
    	.table td {
    		border: 1px solid #d5d5d5;
    		font-size: 10pt;
    	}
    	
		.table th {
			border: 1px solid #d5d5d5;
    		font-size: 10pt;
    		text-align: center;
    		font-weight: normal;
    	}
    	
    	table {
    		line-height: 1.0;
    	}
	</style>
</head>
<body>

	<!-- header  -->
	<%@include file="/resources/include/header.jsp"%>
	
	<form id="mainForm">
		
		<!-- section --> <!-- NOTICE-->
		<div class="container" style="margin-top: 100px; margin-bottom: 150px;">
			<div class="row"style="margin: 0 30px 0 40px;">
				<div class="col">
					<span>NOTICE</span> 
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
				    		<strong>NOTICE</strong>
		    			</li>
		    		</ol>
				</div>
			</div>
			<div class="row"style="margin: 0 30px 0 40px;">
				<div class="col d-flex justify-content-center">
					<ul>
						<li class="upperMenuList"><u>NOTICE</u></li>
						<li class="upperMenuList" style="border-left: 1px solid black; padding-left: 20px;">Q&A</li>
						<li class="upperMenuList" style="border-left: 1px solid black; padding-left: 20px;">FAQ</li>
						<li class="upperMenuList" style="border-left: 1px solid black; padding-left: 20px;">MEMBERSHIP</li>
					</ul> 
				</div>
			</div>
			<div class="row"style="margin: 20px 30px 80px 30px;">
				<div class="col">
					<table class="table">
						<colgroup>
							<col style="width: 130px;">
							<col style="width: auto;">
						</colgroup>
						<thead>
							<tr>
								<td style="background: #fbfafa;">제목</td>
								<td>적립금 소멸기준 공지사항</td>
							</tr>
							<tr>
								<td style="background: #fbfafa;">작성자</td>
								<td>포맨트</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td colspan="2">
									<span style="margin-left: 30px;"><b>조회수</b> 518</span>
									<p style="text-align: center;">
										[적립금 소멸 공지]<br/>
										2022년도 1월 1일부터 적용되는 포맨트의 적립금 소멸 기간 안내드립니다.<br/>
										적립금은 지급된 날짜로부터 1년간 사용할 수 있으며, 1년 이상 사용하지 않으실 경우 소멸됩니다.<br/>
										하기 기간에 적립된 적립금은 기재된 소멸일자에 자동으로 소멸될 예정이며<br/>
										소멸 예정인 적립금은 소멸일 30일 이전에 알림톡, 소멸일 15일 이전에 이메일을 통해 미리 공지드리는 점 참고 부탁드립니다.<br/>
										적립금 보유 기간을 필히 확인하시어, 소중한 적립금을 모두 사용해주세요 🙏<br/>
										감사합니다.<br/>
										<img src="/resources/images/pointRemove.png" style="margin-top: 50px;">
									</p>
								</td>
							</tr>
						</tbody>
					</table>
					<a href="#"><img src="/resources/images/btn_list.gif"></a>
					<table class="table mt-5">
						<tr>
							<td><i class="fa-solid fa-angle-down"></i> 다음글</td>
							<td>포맨트 네이버 알림 서비스 오픈 공지</td>
						</tr>
					</table>
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
