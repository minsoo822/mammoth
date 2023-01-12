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
	<link href="/resources/css/modal.css" rel="stylesheet">
	<style type="text/css"> /* productList style */
	
		#productCard {
			cursor: pointer;
		}
	
	</style>
	<style type="text/css"> /* basket modal style */
	    .modal-content {
		    width: 600px;
		    pointer-events: auto;
		    background-color: white;
		    border: 1px solid black;
		    border-radius: 0rem;
		    outline: 0;
		    box-sizing: content-box;
		    font-size: 12pt;
		}
		.modal-header {
			background: #495164;
			border-radius: 0rem;
			color: white;
			height: 45px;
		}
	</style>
	<style type="text/css"> /* 장바구니 버튼 */
		.basket {
			border-radius: 50%;
			height: 35px;
			width: 35px;
			position: relative;
			bottom: 365px;
			left: 225px;
		}
	</style>
	<style type="text/css"> /* 상품 태그 style css */
		.bombTag, .newTag{
			background: #a92517;
			color: white;
			padding: 5px 8px 5px 8px;
			position: relative;
			left: -39px;
			bottom: 119px;
			font-size: 9pt;
		}
		
		.limitedTag, .bestTag{
			background: black;
			color: white;
			padding: 5px 8px 5px 8px;
			position: relative;
			left: -39px;
			bottom: 119px;
			font-size: 9pt;
		}
    </style>
</head>
<body>
			<%-- <br>sessSeq: <c:out value="${sessSeq }"/><br>
				sessName: <c:out value="${sessName }"/><br>
				sessId: <c:out value="${sessId }"/><br>
				sessAdmin: <c:out value="${sessAdmin }"/><br> --%>
	<form action="" method="post" id="mainForm">
	<input type="hidden" name="mmSeq" id="mmSeq" value="${sessSeq }">
	<!-- header  -->
	<%@include file="/resources/include/header.jsp"%>
	
	<!-- main carousel -->
	<div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
	  <div class="carousel-inner">
	    <div class="carousel-item">
	      <img src="/resources/images/로고&배너/1.jpg" class="d-block w-100" alt="...">
	    </div>
	    <div class="carousel-item">
	      <img src="/resources/images/로고&배너/2.jpg" class="d-block w-100" alt="...">
	    </div>
	    <div class="carousel-item active">
	      <img src="/resources/images/로고&배너/3.jpg" class="d-block w-100" alt="...">
	    </div>
	    <div class="carousel-item">
	      <img src="/resources/images/로고&배너/4.jpg" class="d-block w-100" alt="...">
	    </div>
	  </div>
	  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
	    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Previous</span>
	  </button>
	  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
	    <span class="carousel-control-next-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Next</span>
	  </button>
	</div>
	
	<!-- section1 --> <!-- MD's PICK -->
	<div class="container" style="margin-top: 100px; margin-bottom: 150px;">
		<div class="row" style="margin: 0 30px 0 30px;">
			<div class="col">
				<span><b>MD's PICK</b></span> 
			</div>
		</div>
		<div class="row" style="margin: 20px 30px 50px 30px;">
			<div class="col col-3" style="font-size: 10pt;" id="productCard" onclick="location.href='/product/productView'">
				<div class="row">
					<div class="col">
						<img src="/resources/images/main/mainProduct8.jpg" style="height: 100%; width: 100%;">
					</div>
				</div>
				<div class="row mt-3">
					<div class="col">
						<span>포맨트 시그니처 퍼퓸 코튼허그 에디션 '첫 눈'</span>
					</div>
				</div>
				<div class="row  mt-2">
					<div class="col col-4" style="width: 50px; color: red;">
					20%
					</div>
					<div class="col col-4" style="width: 100px;">
					<b>49,000원</b>
					</div>
					<div class="col col-4" style="width: 100px;">
					<s>61,000원</s>
					</div>
				</div>
				<div class="row mt-1">
					<div class="col">
						<span><i class="fa-solid fa-star"></i>4.9(378)</span>
					</div>
				</div>
				<a><img src="/resources/images/ico_cart.svg" class="basket" id="openPopup"></a>
				<span class="bombTag">주문폭주</span>
				<span class="limitedTag">LIMITED</span>
			</div>
			<div class="col col-3" style="font-size: 10pt;" id="productCard">
				<div class="row">
					<div class="col">
						<img src="/resources/images/main/mainProduct7.jpg" " style="height: 100%; width: 100%;">
					</div>
				</div>
				<div class="row mt-3">
					<div class="col">
						<span>포맨트 시그니처 퍼퓸 코튼허그 에디션 '첫 눈'</span>
					</div>
				</div>
				<div class="row  mt-2">
					<div class="col col-4" style="width: 50px; color: red;">
					20%
					</div>
					<div class="col col-4" style="width: 100px;">
					<b>49,000원</b>
					</div>
					<div class="col col-4" style="width: 100px;">
					<s>61,000원</s>
					</div>
				</div>
				<div class="row mt-1">
					<div class="col">
						<span><i class="fa-solid fa-star"></i>4.9(378)</span>
					</div>
				</div>
				<a><img src="/resources/images/ico_cart.svg" class="basket" onclick="btnProduc()"></a>
				<span class="newTag">NEW</span>
			</div>
			<div class="col col-3" style="font-size: 10pt;" id="productCard">
				<div class="row">
					<div class="col">
						<img src="/resources/images/main/mainProduct6.jpeg" style="height: 100%; width: 100%;">
					</div>
				</div>
				<div class="row mt-3">
					<div class="col">
						<span>포맨트 시그니처 퍼퓸 코튼허그 에디션 '첫 눈'</span>
					</div>
				</div>
				<div class="row  mt-2">
					<div class="col col-4" style="width: 50px; color: red;">
					20%
					</div>
					<div class="col col-4" style="width: 100px;">
					<b>49,000원</b>
					</div>
					<div class="col col-4" style="width: 100px;">
					<s>61,000원</s>
					</div>
				</div>
				<div class="row mt-1">
					<div class="col">
						<span><i class="fa-solid fa-star"></i>4.9(378)</span>
					</div>
				</div>
				<a><img src="/resources/images/ico_cart.svg" class="basket" onclick="javascript:event.stopPropagation(); basket()"></a>
				<span class="bestTag">BEST</span>
			</div>
			<div class="col col-3" style="font-size: 10pt;" id="productCard">
				<div class="row">
					<div class="col">
						<img src="/resources/images/main/mainProduct5.jpg" style="height: 100%; width: 100%;">
					</div>
				</div>
				<div class="row mt-3">
					<div class="col">
						<span>포맨트 시그니처 퍼퓸 코튼허그 에디션 '첫 눈'</span>
					</div>
				</div>
				<div class="row  mt-2">
					<div class="col col-4" style="width: 50px; color: red;">
					20%
					</div>
					<div class="col col-4" style="width: 100px;">
					<b>49,000원</b>
					</div>
					<div class="col col-4" style="width: 100px;">
					<s>61,000원</s>
					</div>
				</div>
				<div class="row mt-1">
					<div class="col">
						<span><i class="fa-solid fa-star"></i>4.9(378)</span>
					</div>
				</div>
				<a><img src="/resources/images/ico_cart.svg" class="basket" onclick="javascript:event.stopPropagation(); basket()"></a>
				<span class="limitedTag">LIMITED</span>
			</div>
		</div>
		<div class="row" style="margin: 0 30px -30px 30px;">
			<div class="col col-3" style="font-size: 10pt;" id="productCard">
				<div class="row">
					<div class="col">
						<img src="/resources/images/main/mainProduct4.jpg" style="height: 100%; width: 100%;">
					</div>
				</div>
				<div class="row mt-3">
					<div class="col">
						<span>포맨트 시그니처 퍼퓸 코튼허그 에디션 '첫 눈'</span>
					</div>
				</div>
				<div class="row  mt-2">
					<div class="col col-4" style="width: 50px; color: red;">
					20%
					</div>
					<div class="col col-4" style="width: 100px;">
					<b>49,000원</b>
					</div>
					<div class="col col-4" style="width: 100px;">
					<s>61,000원</s>
					</div>
				</div>
				<div class="row mt-1">
					<div class="col">
						<span><i class="fa-solid fa-star"></i>4.9(378)</span>
					</div>
				</div>
				<a><img src="/resources/images/ico_cart.svg" class="basket" onclick="javascript:event.stopPropagation(); basket()"></a>
			</div>
			<div class="col col-3" style="font-size: 10pt;" id="productCard">
				<div class="row">
					<div class="col">
						<img src="/resources/images/main/mainProduct3.jpg" style="height: 100%; width: 100%;">
					</div>
				</div>
				<div class="row mt-3">
					<div class="col">
						<span>포맨트 시그니처 퍼퓸 코튼허그 에디션 '첫 눈'</span>
					</div>
				</div>
				<div class="row  mt-2">
					<div class="col col-4" style="width: 50px; color: red;">
					20%
					</div>
					<div class="col col-4" style="width: 100px;">
					<b>49,000원</b>
					</div>
					<div class="col col-4" style="width: 100px;">
					<s>61,000원</s>
					</div>
				</div>
				<div class="row mt-1">
					<div class="col">
						<span><i class="fa-solid fa-star"></i>4.9(378)</span>
					</div>
				</div>
				<a><img src="/resources/images/ico_cart.svg" class="basket" onclick="javascript:event.stopPropagation(); basket()"></a>
			</div>
			<div class="col col-3" style="font-size: 10pt;" id="productCard">
				<div class="row">
					<div class="col">
						<img src="/resources/images/main/mainProduct2.jpg" style="height: 100%; width: 100%;">
					</div>
				</div>
				<div class="row mt-3">
					<div class="col">
						<span>포맨트 시그니처 퍼퓸 코튼허그 에디션 '첫 눈'</span>
					</div>
				</div>
				<div class="row  mt-2">
					<div class="col col-4" style="width: 50px; color: red;">
					20%
					</div>
					<div class="col col-4" style="width: 100px;">
					<b>49,000원</b>
					</div>
					<div class="col col-4" style="width: 100px;">
					<s>61,000원</s>
					</div>
				</div>
				<div class="row mt-1">
					<div class="col">
						<span><i class="fa-solid fa-star"></i>4.9(378)</span>
					</div>
				</div>
				<a><img src="/resources/images/ico_cart.svg" class="basket" onclick="javascript:event.stopPropagation(); basket()"></a>
			</div>
			<div class="col col-3" style="font-size: 10pt;">
				<div class="row">
					<div class="col">
						<img src="/resources/images/main/mainProduct1.jpg" style="height: 100%; width: 100%;">
					</div>
				</div>
				<div class="row mt-3">
					<div class="col">
						<span>포맨트 시그니처 퍼퓸 코튼허그 에디션 '첫 눈'</span>
					</div>
				</div>
				<div class="row  mt-2">
					<div class="col col-4" style="width: 50px; color: red;">
					20%
					</div>
					<div class="col col-4" style="width: 100px;">
					<b>49,000원</b>
					</div>
					<div class="col col-4" style="width: 100px;"> 
					<s>61,000원</s>
					</div>
				</div>
				<div class="row mt-1">
					<div class="col">
						<span><i class="fa-solid fa-star"></i>4.9(378)</span>
					</div>
				</div>
				<a><img src="/resources/images/ico_cart.svg" class="basket" onclick="javascript:event.stopPropagation(); basket()"></a>
			</div>
		</div>
	</div>
	
	<!-- section2 --> <!-- FORMENT VIDEO -->
	<div class="section" style="padding: 80px 150px 150px 150px; background: #f8f8f8;">
		<div class="row mb-2">
			<div class="col">
				<span><b>FORMENT VIDEO</b></span> 
			</div>
		</div>
		<div class="row">
			<div class="col col-9"">
				<iframe width="100%" height="100%" src="https://www.youtube.com/embed/0kcLbkptq-k" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<div class="col col-3">
				<div class="row m-1">
					<div class="col" style="height: 160px; width: 280px;">
						<img src="/resources/images/로고&배너/비디오 이미지1.png" style="height: 100%; width: 100%;">
					</div>
				</div>
				<div class="row m-1">
					<div class="col" style="height: 160px; width: 200px;">
						<img src="/resources/images/로고&배너/비디오 이미지2.png" style="height: 100%; width: 100%;">
					</div>
				</div>
				<div class="row m-1">
					<div class="col" style="height: 160px; width: 280px;">
						<img src="/resources/images/로고&배너/비디오 이미지3.png" style="height: 100%; width: 100%;">
					</div>
				</div>
			</div>
		</div>
		<div class="row mt-3">
			<div class="col">
				<span><b>마스터 퍼퓨머가 '성공'에 영감을 받아 탄생한 향수</b></span>
			</div>
		</div>
	</div>
	
	<!-- modal section -->
		<!-- 장바구니 modal s -->
		<div id="popup">
			<div class="xans-element- xans-product xans-product-optionselectlayer ec-base-layer " style="border: 1px solid #000;">
				<div class="header">
					<h1 style="margin: 0px; font-weight: 600;">옵션 선택</h1>
				</div>
				<div class="content">
					<div class="xans-element- xans-product xans-product-detail inner">
						<h2 class="name">
							<strong>포맨트 시그니처 퍼퓸 코튼허그</strong>
						</h2>
						<div class="productNormal  ">
							<div class="xans-element- xans-product xans-product-image imgArea ">
								<img src="" class="" style="background: #000;">
				                &nbsp;
							</div>
							<table border="1" summary="">
								<caption>상품 옵션</caption>
								<colgroup>
									<col width="120px">
									<col width="auto">
								</colgroup>
								<tbody class="xans-element- xans-product xans-product-option xans-record-">
								<tr class="xans-element- xans-product xans-product-option xans-record-">
									<th scope="row">세트 선택</th>
									<td>
										<select name="option1" id="product_option_id1" class="ProductOption0" option_style="select" required="true">
											<option value="*" selected="" link_image="">- [필수] 옵션을 선택해 주세요 -</option>
											<option value="**" disabled="" link_image="">-------------------</option>
											<option value="향수 단품" link_image="">향수 단품</option>
											<option value="코튼허그 세트" link_image="">코튼허그 세트</option>
											<option value="[레이어링추천] 향수 세트" link_image="">[레이어링추천] 향수 세트</option>
										</select>
									</td>
								</tr>
								<tr class="xans-element- xans-product xans-product-option xans-record-">
									<th scope="row">수량 선택</th>
									<td>
										<select name="option2" id="product_option_id2" class="ProductOption0" option_style="select" required="true">
											<option value="*" selected="" link_image="">- [필수] 옵션을 선택해 주세요 -</option>
											<option value="**" disabled="" link_image="">-------------------</option>
										</select>
									</td>
								</tr>
								</tbody>
							</table>
						</div>
						<div id="totalProducts" class=" ">
							<p class="ec-base-help txtWarn txt11 "> 위 옵션선택 박스를 선택하시면 아래에 상품이 추가됩니다.</p>
							<table blrder="0" summary>
								<caption>상품 목록</caption>
								<colgroup>
									<col style="width:284px;">
									<col style="width:80px;;">
									<col style="width:110px;">
								</colgroup>
								<tbody class="option_products">
									<tr class="option_product " data-option-index="1" target-key="79">
										<td>
											<input type="hidden" class="option_box_id" id="option_box1_id" value="P00000DB000A" name="item_code[]">
											<p class="product" style="margin: 0px;">포맨트 시그니처 퍼퓸 코튼허그<br> 
											- <span>향수 단품/코튼허그 1개</span></p>
										</td>
										<td>
											<span class="quantity" style="width:65px;"><input type="text" id="option_box1_quantity" name="quantity_opt[]" class="quantity_opt eProductQuantityClass" value="1">
												<a href="#none" class="up eProductQuantityUpClass" "="" data-target="option_box1_up">
													<img src="/resources/images/btn_quantity_up.gif" id="option_box1_up" class="option_box_up" alt="수량증가">
												</a>
												<a href="#none" class="down eProductQuantityDownClass" data-target="option_box1_down">
													<img src="/resources/images/btn_quantity_down.gif" id="option_box1_down" class="option_box_down" alt="수량감소">
												</a>
											</span>
											<a href="#none" class="delete">
												<img src="/resources/images/btn_price_delete.gif" alt="삭제" id="option_box1_del" class="option_box_del" style="vertical-align: middle;">
											</a>
										</td>
										<td class="right">
											<span id="option_box1_price">
												<input type="hidden" class="option_box_price" value="39000" product-no="79" item_code="P00000DB000A">
												<span class="ec-front-product-item-price" code="P00000DB000A" product-no="79">39,000원</span>
											</span>
										</td>
									</tr>
								</tbody>
								<tfoot>
									<tr>
										<td colspan="3">
											<strong>총 상품금액</strong>(수량) : <span class="total"><strong><em>39,000원</em></strong> (1개)</span>
										</td>
			                        </tr>
		                        </tfoot>
							</table>
						</div>
					</div>
				</div>
				<div class="xans-element- xans-product xans-product-action ec-base-button">
					<a href="#none" onclick="" class="btn_apr  ">바로구매하기</a>
					<a href="#none" onclick="" class="btn_apr  ">장바구니 담기</a>
					<a href="#none" class="btn_apr white close">닫기</a>
				</div>
				<a class="close" id="closeModal" style="position: absolute; left: 560px; top:15px;">
					<img src="/resources/images/btn_close.gif" alt="닫기">
				</a>
			</div>
		</div>
		<!-- 장바구니 modal e -->
        
        
        
	
	</form>
	<!-- footer -->
	<%@include file="/resources/include/footer.jsp"%>
	
	<!--  스크립트  -->		
	<%@include file="/resources/include/script.jsp"%>
	
	<script>
	const modal = document.getElementById("popup");
    const buttonAddFeed = document.getElementById("openPopup");
	
    buttonAddFeed.addEventListener("click", e => {
		modal.style.top = window.pageYOffset + 'px'; // top을 이용해 시작 y위치를 바꿔줌 
    	modal.style.display = "flex";
        
		/* document.body.style.overflowY = "hidden"; // 스크롤 없애기 */
    
	}); 
 	// 모달 닫기 코드
    const buttonCloseModal = document.getElementById("closeModal");
    		
	buttonCloseModal.addEventListener("click", e => {
		modal.style.display = "none";
		document.body.style.overflowY = "visible";
	});
	
	</script>	
</body>
</html>
