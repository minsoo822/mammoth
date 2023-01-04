<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="Are you interior design company and looking for startup your website. Download Free Interior Design Website Templates for you suitable to you.">
    <meta name="keywords" content="interior design, furniture, exterior furniture, furniture company, bootstrap interior design website templates, interior design & furniture website templates">
    <!-- Bootstrap -->
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600,600i,700" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
    <!-- Style -->
    <link href="/resources/css/style.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <title>마이페이지</title>
    <style type="text/css">
     /* div {
    	border: 1px solid orange;
    }  */
    
    .Searchbtn {
    	border: 1px solid #efefef;
    	background: #f3f0eb;
    	color: #372d2b;
    	text-align: center;
    	width: 100px;
    	height: 50px;
    	border-radius: 6px;
    	font-size: 13pt;
    	font-weight: bold;
    	margin-left: auto;
    	margin-right: auto;
   	}
   	.Searchbtn:hover {
    	background: #372d2b;
    	color: #f3f0eb;
    	cursor: pointer;
    }
    .post-img  {
    	background: gray;
    	width: 212px;
    	height: 250px;
    }
    .text {
    	padding-top: 10px;
    	padding-left: 15px;
    	font-weight: bold;
    }
    .contents {
    	padding-top: 10px;
    	padding-left: 40px;
    }
    .myPage {
    	margin-bottom: 30px;
    	font-weight: bold;
    }
    </style>
</head>

<body>
    <!-- herder s -->
    <%@include file="../../../common/xdmin/include/header.jsp"%>
    <!-- header e -->
    <form id="mypageForm" method="post">
    <input type="hidden" name="ifmmSeq" value="${sessSeq }">
	    <div class="totalContent">
		    <div class="content">
		        <div class="container" style="min-width: 1320px;">
		            <div class="row">
		            	<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
		                    <div class="widget widget-categories" style="text-align: right; background: #fff;">
		                        <!-- widget categories -->
		                        <!-- widget start -->
		                        <h3 class="widget-title myPage"> 마이페이지 </h3>
		                        <ul class="listnone">
		                            <li><a href="#" id="changepw">비밀번호 변경</a></li>
		                            <li><a href="/member/memberDel1">회원탈퇴</a></li>
		                        </ul>
		                    </div>
		                    <!-- /.widget categories -->
		                </div>
		                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
		                    <div class="row">
		                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
		                            <div class="post-block">
		                                <!-- post block -->
		                                <div class="post-img">
		                                    <a href="#"><img src="${item.mmPath }${item.mmuuidName}" alt="Interior Design Website Templates Free Download" class="img-responsive" style="max-width: 100%; height: 100%;"></a>
		                                </div>
		                                <!-- /.post block -->
		                            </div>
		                        </div>
		                        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
		                            <div class="row" >
		                            	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">이름</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 contents">
											<c:out value="${item.ifmmName }"/>
										</div>
										<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">아이디</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 contents">
											<c:out value="${item.ifmmID }"/>
										</div>                      	
		                            </div>
		                            <div class="row" >
		                            	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">닉네임</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 contents">
											<c:out value="${item.ifmmNickname }"/>
										</div>
										<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">연락처</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 contents">
											<c:out value="${item.ifmmTel }"/>
										</div>                      	
		                            </div>
		                            <div class="row">
		                            	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">소개글</div>
										<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 contents">
											<c:out value="${item.ifmmIntroduction }"/>
										</div>                             	
		                            </div>
		                            <div class="row">
		                            	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">이메일</div>
										<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 contents">
											<c:out value="${item.ifmmEmail }"/>
										</div>                            	 
		                            </div>
		                            <div class="row">
										<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">주소</div>
										<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 contents" style="padding-right: 0px;">
											<c:out value="${item.ifmmAddr1 }"/>
										</div>
									</div>
		                            <div class="row">
		                            	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">&nbsp;</div>
										<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 contents">
											<c:out value="${item.ifmmAddr3 }"/>
										</div>                            	
		                            </div>
		                            <div class="row">
		                            	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">&nbsp;</div>
										<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 contents">
											<c:out value="${item.ifmmAddr2 }"/>
										</div>                            	
		                            </div>
		                            <hr> 
		                        </div>
		                    </div>
		                    <div class="row">
		                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
		                            <div class="post-block">
		                                <!-- post block -->
		                                <div class="post-img" style="width: 212px; height: 250px;">
		                                    <a href="#"><img src="${item.petPath}${item.petuuidName}" alt="Interior Design Website Templates Free Download" class="img-responsive" style="max-width: 100%; height: 100%;"></a>
		                                </div>
		                                <!-- /.post block -->
		                            </div>
		                        </div>
		                        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
		                            <div class="row" >
		                            	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">집사이름</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 contents">
											<c:out value="${item.ifmmName }"/>
										</div>
										<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">성별</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 contents">
											<c:out value="${item.ifamGender }"/>
										</div>                      	
		                            </div>
		                            <div class="row" >
		                            	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">이름</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 contents">
											<c:out value="${item.ifamName }"/>
										</div>
										<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">나이</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 contents">
											<c:out value="${item.ifamAge }"/>살
										</div>                      	
		                            </div>
		                            <div class="row">
		                            	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">품종</div>
										<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12 contents">
											<c:out value="${item.ifamKind }"/>
										</div>                            	
		                            </div>
		                            <div class="row">
		                            	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">칩</div>
										<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12 contents">
											<%-- <c:out value="${item.ifamChipNY }"/> --%>
											<c:choose>
												<c:when test="${list.ifamChipNY eq 0 }">N</c:when>
												<c:otherwise>Y</c:otherwise>
											</c:choose>
										</div>                            	
		                            </div>
		                            <div class="row">
		                            	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text">접종</div>
										<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12 contents">
											<%-- <c:out value="${item.ifamVaccinateNY }"/> --%>
											<c:choose>
												<c:when test="${list.ifamVaccinateNY eq 0 }">N</c:when>
												<c:otherwise>Y</c:otherwise>
											</c:choose>
										</div>                            	
		                            </div>
		                            <hr>
		                        </div>
		                    </div>
		                </div>
		            </div>
		            <div class="row">
		            	<div class="col" style="display: flex; justify-content: flex-end; margin-right: 20px;">
		            		<div class="btn-group">
		            		<!-- <button type="button" class="Searchbtn">버튼</button> -->
		            		<button type="button" class="Searchbtn" id="modBtn">수정하기</button>
		            		</div>
		            	</div>
		            </div>
		        </div>
		    </div>
		</div>
	</form>	
    <!-- footer s -->
    <%@include file="../../../common/xdmin/include/footer.jsp"%>
    <!-- footer e -->
    <!-- footScript s -->
    <%@include file="../../../common/xdmin/include/footScript.jsp"%>
    <!-- footScript e -->
    
    <script type="text/javascript">
    
	    $("#changepw").on("click", function(){
	    	alert("준비 중입니다.");
	    	return false;
		});
    
    </script>
    
    <script type="text/javascript">
    
    	var goUrlMod = "/member/mypageMod"
   		
    	var seq = $("input:hidden[name=ifmmSeq]");
    	var form = $("#mypageForm");
    
	    $("#modBtn").on("click", function(){
	    	form.attr("action", goUrlMod).submit();
		});
    	
    </script>
</body>

</html>

