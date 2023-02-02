<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="kr">
<head>

	<title>Notice</title>
	
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
	<form id="mainForm">

	<!-- header  -->
	<%@include file="/resources/include/header.jsp"%>
	
		
		<!-- section -->
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
			
			<!-- 상단 c/s center 카테고리 -->
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
			
			<!-- notice 공지글 table -->
			<div class="row"style="margin: 20px 30px 80px 30px;">
				<div class="col">
					<table class="table">
						<colgroup class="colgroup">
							<col style="width: 70px;">
							<col style="width: auto;">
							<col style="width: 84px;">
							<col style="width: 55px;">
						</colgroup>
						<thead>
							<tr style="background: #fbfafa;">
								<th>번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>조회</th>
							</tr>
						</thead>
						<tbody>
							<!-- <tr>
								<th>공지</th>
								<td>[FORMENT] 배송비 변경 및 무료배송 기준 변경 공지사항</td>
								<th>포맨트</th>
								<th>270</th>
							</tr>
							<tr>
								<th>공지</th>
								<td>[FORMENT] 개인정보처리방침 변경 안내 <i class="fa-solid fa-paperclip"></i></td>
								<th>포맨트</th>
								<th>513</th>
							</tr> -->
							<c:forEach items="${list}" var="list">
								<tr>
									<th>공지</th>
									<td><c:out value="${list.poTitle}"/></td>
									<th><c:out value="${list.mmName}"/></th>
									<th><c:out value="${list.poViewCount}"/></th>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			
			<!-- pagination -->
			<%@include file="/resources/include/pagination.jsp"%>
			
			
			<!-- 하단 검색 부분 -->
			<div class="xans-element- xans-board xans-board-search-1002 xans-board-search xans-board-1002 mt-3">
			    <fieldset class="boardSearch">
			        <p>
			        	<select id="search_date" name="search_date" fw-filter="" fw-label="" fw-msg="">
			                <option value="week">일주일</option>
			                <option value="month">한달</option>
			                <option value="month3">세달</option>
			                <option value="all">전체</option>
			            </select> 
			            <select id="search_key" name="search_key" fw-filter="" fw-label="" fw-msg="">
			                <option value="subject">제목</option>
			                <option value="content">내용</option>
			                <option value="writer_name">글쓴이</option>
			                <option value="member_id">아이디</option>
			                <option value="nick_name">별명</option>
			            </select> 
			            <input id="search" name="search" fw-filter="" fw-label="" fw-msg="" class="inputTypeText" placeholder="" value="" type="text"> 
			           	<a href="#none" onclick="" style="border: 1px solid black; background: black; padding: 2px; color: white;">찾기</a>
			       </p>
			    </fieldset>
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
