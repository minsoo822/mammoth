<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="kr">
<head>

	<title>상품등록</title>
	
	<!-- link -->
	<%@include file="/resources/include/link.jsp"%>
	
	<style type="text/css"> /* productForm style */
		textarea {
		    width: 100%;
		    height: 10em;
		    border: none;
		    resize: none;
		}
		
		.right {
			float: right;
			margin-left: 5px;
		}
		
		input [type=text] {
			height: 100%;
			line-height: 20px;
			padding: 2px 4px;
			border: 1px solid #d5d5d5;
			color: #353535;
			font-size: 12px;
		}
	</style>
	
</head>
<body>

	<!-- header  -->
	<%@include file="/resources/include/header.jsp"%>
	
	<form id="mainForm">
	
		<!-- section1 -->
		<div class="container" style=" margin-bottom: 150px;">
			<h3>상품등록</h3>
			<div class="row">
				<div class="col-3">
					<br>
					<label for="itemImg" class="form-label">상품 기본 이미지</label>
					<div class="d-flex flex-row">
						<div class="justify-content-center text-center" style="border-radius:10px; width:200px; height:200px; background: white; border: 1px solid #ced4da; position:relative;" id="basiciImgContainer">
		    				<i class="fa-solid fa-camera" style="font-size:40pt; position:absolute; top:30%; right:36%;"></i> 
							<input class="form-control" type="file" onChange="upload(basicImg, 1)" id="basicImg" name="basicImg" style="position:absolute; opacity:0%; width:50px; height:50px; top:30%; right:37%; cursor:pointer;" >
						</div>
					</div>
				</div>
				<div class="col-9">
					<br>
					<label for="itemImg" class="form-label">상품 상세 이미지</label> 
					<div class="d-flex flex-row">  
			    		<div style="margin-right:25px;"> 
			    			<div class="justify-content-center text-center" style="border-radius:10px; width:200px; height:200px; background: white; border: 1px solid #ced4da; position:relative; ">
			    				<i class="fa-solid fa-camera" style="font-size:40pt; position:absolute; top:30%; right:36%;"></i> 
			    				<br>
			    				<span id="imageCounter" style="font-size:16pt; font-weight:bold; position:absolute; top:60%; right:38%;">0/5</span>
			    				<input class="form-control" type="file" multiple="multiple"  id="multipartFile" name="multipartFile" onChange="upload('multipartFile', 2);" style="position:absolute; opacity: 0%; width:50px; height:50px; top:30%; right:37%; cursor:pointer;">    
			    			</div>
			    			<!-- <div style="background:red; width:200px; height:200px;"></div> -->			 
			    		</div> 
			    		<div class="d-flex flex-row slimscroll" style="width: 100%; background: white; border-radius: 10px; border: 1px solid #ced4da; overflow:auto;" id="multImgContainer">			     		
				    		<!-- 첨부 이미지들 들어오는 곳 -->
			    		</div>  
			    	</div>
				</div>
				<div class="col-12">
					<br>
					<label for="name" class="form-label">상품명</label>
					<input type="text" class="form-control" id="prName" name="prName" value="">
				</div>
				<div class="col-6">
					<br>
					<label for="price" class="form-label">가격</label>
					<input type="text" class="form-control" id="prPrice" name="prPrice" placeholder="\">
				</div>
				<div class="col-6">
					<br>
					<label for="salePrice" class="form-label">할인가</label>
					<input type="text" class="form-control" id="prDiscount" name="prDiscount" placeholder="%">
				</div>
				<div class="col-12">
					<br>
					<label for="info_item" class="form-label">상품 설명</label>
					<textarea class="form-control" id="prInfo" name="prInfo"  placeholder="내용을 입력해주세요."></textarea>
				</div>
				<div class="col-12">
					<br>
					<label for="option_item" class="form-label">옵션</label>
					<button type="button" class="btn btn-space btn-light btn-sm" id="btnSave" style="margin-bottom: 0.25rem;"><i class="fa-solid fa-plus"></i></button>
					<div class="row mt-2">
						<div class="col-8">
							<input type="text" class="form-control" id="prOption" name="prOption" value="">
						</div>
						<div class="col-4">
							<button type="button" class="btn btn-space btn-light btn-sm" id=""><i class="fa-solid fa-minus"></i></button>
						</div>
					</div>
					<div class="row mt-2">
						<div class="col-8">
							<input type="text" class="form-control" id="prOption" name="prOption" value="">
						</div>
						<div class="col-4">
							<button type="button" class="btn btn-space btn-light btn-sm" id=""><i class="fa-solid fa-minus"></i></button>
						</div>
					</div>
				</div>
				<div class="col-6">
					<br>
					<label for="useNY2" class="form-label">사용여부</label>
					<select class="form-select" aria-label="Default select example" id="prUseNy" name="prUseNy">
						<option value="0">N</option>
						<option value="1" selected>Y</option>
					</select>
				</div>
				<div class="col-6">
					<br>
					<label for="useNY2" class="form-label">삭제여부</label>
					<select class="form-select" aria-label="Default select example" id="prDelNy" name="prDelNy">
						<option value="0" selected>N</option>
						<option value="1">Y</option>
					</select>
				</div>
			</div>
			<br>
			<br>
			
			
			<!-- x버튼 Modal -->
			<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel2" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel2"><b>FORMENT</b></h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						<div class="modal-body">
							정말로 삭제하시겠습니까?
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
							<button type="button" class="btn btn-dark" id="btnDelete">삭제 </button>
						</div>
					</div>
				</div>
			</div>
		
			<!-- 휴지통 Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel"><b>FORMENT</b></h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						<div class="modal-body">
							정말로 삭제하시겠습니까?
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
							<button type="button" class="btn btn-dark" id="btnUelete">삭제 </button>
						</div>
					</div>
				</div>
			</div>
			<button type="button" class="btn btn-space right btn-success" onclick="save()"><i class="fa-solid fa-pen"></i></button>
			<button type="button" class="btn btn-danger btn-space right" data-bs-toggle="modal" data-bs-target="#exampleModal2"
				id="btnDelete"><i class="fa-solid fa-x"></i></button>
			<button type="button" class="btn btn-danger btn-space right" data-bs-toggle="modal" data-bs-target="#exampleModal"
				id="btnUelete"><i class="fa-solid fa-trash-can"></i></button>
			<button type="button" class="btn btn-secondary" onclick="back()"><i class="fa-solid fa-list-ul"></i></button>
			<!-- <button class="btn btn-space btn-danger right"><i class="fa-solid fa-trash-can"></i></button>		
			<button type="button" class="btn btn-space btn-danger right">
				   <i class="fa-solid fa-x"></i>
			</button> -->
		</div>
  	</form>
	
	<!-- footer -->
	<%@include file="/resources/include/footer.jsp"%>
	
	<!--  스크립트  -->		
	<%@include file="/resources/include/script.jsp"%>
	
	<script>
		var form = $("#mainForm");
		
		/* 상품등록 버튼 */
		save = function() {
			alert("save");
			form.attr("action", "/product/productInst").submit();
			
		}
		
		/* 뒤로가기 버튼 */
		back = function() {
			alert("back");
			location.href='/product/productList';
		}
	</script>
	<script>
		/* 이미지 파일 첨부 */
	    upload = function(objName, uiType) {
			
			/* 상품 기본 이미지 한장 */
			if(uiType == 1) {
				var file = $("#" + objName +"").file;
				console.log(file);
				
				var txt = "";
				
				
			}
			
			/* 한개의 첨부파일시 append 되는 div부분 */
		    addEventListenerCustom = function (i, file) { 
				return function(event) {
					var imageFile = event.target;
					var sort = i;
					var txt = "";
					
					txt += '<div style="margin-right:10px; position:relative;" name="img" id="img'+i+'">';
					txt += '<div class="justify-content-center text-center" style="border-radius:10px; width:200px; height:200px; background:#1F2122; position:relative; ">';
					txt += '<img alt="" src="'; 
					txt += imageFile.result;
					txt += '" style="width:100%; height:100%; border-radius:10px;"></div>';
					
					$("#basiciImgContainer").append(txt);
			    };
			};
			
			/* 상품 상세 이미지 여러장 */
			if(uiType == 2) {
				
		    	$("#multImgContainer").empty();	
				
				var files = $("#" + objName +"")[0].files;
				console.log(files);
				
				if(files.length == 0 ) {
					$("#multImgContainer").empty();	
				} else {
					
					if(files.length > 5) {
						alert("상품 이미지는 최대 5장까지만 등록 가능합니다.");
						return false;
					} else {
						
						for(var i = 0; i<files.length; i++){
							
							console.log("파일 이름 : " + files[i].name);
							console.log("파일 순서 : " + (i+1) + "번째");
							
							var file = files[i];
							var picReader = new FileReader();
							
						    picReader.addEventListener("load", addEventListenerCustom (i, file));
						    picReader.readAsDataURL(file);
						}
					}
				}
				
				$("#imageCounter").html(files.length+"/5");
			}
			
			/* 여러개의 첨부파일시 append 되는 div부분 */
		    addEventListenerCustom = function (i, file) { 
				return function(event) {
					var imageFile = event.target;
					var sort = i;
					var txt = "";
					
					txt += '<div style="margin-right:10px; position:relative;" name="img" id="img'+i+'">';
					txt += '<div class="justify-content-center text-center" style="border-radius:10px; width:200px; height:200px; background:#1F2122; position:relative; ">';
					txt += '<img alt="" src="'; 
					txt += imageFile.result;
					txt += '" style="width:100%; height:100%; border-radius:10px;"></div>';
					
					$("#multImgContainer").append(txt);
			    };
			};
			
		};
		
	</script>
</body>
</html>
