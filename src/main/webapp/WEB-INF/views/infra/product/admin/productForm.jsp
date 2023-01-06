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
				<div class="col-6">
					<br>
					<label for="itemImg" class="form-label">상품 기본 이미지</label>
					<input class="form-control" type="file">
					<div id="ifmmUploadedImagePreview" class="addScroll">
		
					</div>
				</div>
				<div class="col-6">
					<br>
					<label for="itemImg" class="form-label">상품 상세 이미지</label>
					<input class="form-control" type="file">
					<div id="ifmmUploadedImagePreview" class="addScroll">
		
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
	
		upload = function (objName, seq, allowedMaxTotalFileNumber, allowedExtdiv, allowedEachFileSize, allowedTotalFileSize, uiType) {
	        //		objName 과 seq 는 jsp 내에서 유일 하여야 함.
	        //		memberProfileImage: 1
	        //		memberImage: 2
	        //		memberFile : 3
	
	        var totalFileSize = 0;
	        var obj = $("#" + objName + "")[0].files;
	        var fileCount = obj.length;
	        
	        if (uiType == 1) {
	            /* 			
	                        $("#ulFile" + seq).children().remove();
	                    	
	                        for (var i = 0 ; i < fileCount ; i++) {
	                            addUploadLi(seq, i, $("#" + objName +"")[0].files[i].name);
	                        }
	             */
	            for (var i = 0; i < fileCount; i++) {
	
	                var divImage = "";
	                divImage += '<div style="display: inline-block; height: 95px;">';
	                /*divImage += '	<img src="' + obj[i] + '" class="rounded" width= "85px" height="85px">';*/
	                divImage += '<img id="aaa' + i + '" src="" class="rounded" width= "85px" height="85px">';
	                divImage += '<div style="position: relative; top:-85px; left:5px"><span style="color: red;">X</span></div>';
	                divImage += '</div> ';
	
	                $("#ifmmUploadedImage1View").append(divImage);
	
	                var fileReader = new FileReader();
	                fileReader.readAsDataURL($("#" + objName + "")[0].files[i]);
	                //alert($("#" + objName + "")[0].files[i]);
	                fileReader.onload = function () {
	                    /* alert(i + " : " + fileReader.result); */
	                    //alert($("#aaa" + i + ""));
	
	                    if (i == 0) {
	                        $("#aaa0").attr("src", fileReader.result);		/* #-> */
	                    } else if (i == 1) {
	                        $("#aaa0").attr("src", fileReader.result);		/* #-> */
	                    } else {
	
	                    }
	                    /* $("#aaa"+i+"").attr("src", fileReader.result);		/* #-> */
	                    /* $("#aaa1").attr("src", fileReader.result);		/* #-> */
	                }
	            }
	
	        } else if (uiType == 2) {
	            $("#ulFile" + seq).children().remove();
	
	            for (var i = 0; i < fileCount; i++) {
	                addUploadLi(seq, i, $("#" + objName + "")[0].files[i].name);
	            }
	        } else if (uiType == 3) {
	            var fileReader = new FileReader();
	            fileReader.readAsDataURL($("#" + objName + "")[0].files[0]);
	
	            fileReader.onload = function () {
	                $("#imgProfile").attr("src", fileReader.result);		/* #-> */
	            }
	        } else {
	            return false;
	        }
	        return false;
	    }
	</script>
</body>
</html>
