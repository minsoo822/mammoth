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
			<c:forEach items="${list}" var="prList">
				<div class="col col-3" style="font-size: 10pt;" id="productCard" onclick="productView(${prList.prSeq})">
					<div class="row">
						<div class="col">
							<img src="${prList.upPath}${prList.upUuidName}" style="height: 100%; width: 100%;">
						</div>
					</div>
					<div class="row mt-3">
						<div class="col">
							<span><c:out value="${prList.prName}"/></span>
						</div>
					</div>
					<div class="row  mt-2">
						<div class="col col-4" style="width: 50px; color: red;">
							<strong><c:out value="${prList.prDiscount}"/>%</strong>
						</div>
						<div class="col col-4" style="width: 100px; font-size: 11pt;">
							<b><fmt:formatNumber pattern="##,###원" value="${prList.prTotalPrice}"/></b>
						</div>
						<div class="col col-4" style="width: 100px;">
							<s><fmt:formatNumber pattern="#,###원" value="${prList.prPrice}"/></s>
						</div>
					</div>
					<div class="row mt-1">
						<div class="col">
							<span><i class="fa-solid fa-star"></i><c:out value="${prList.rvStarAver}"/>(<c:out value="${prList.rvTotalCount}"/>)</span>
						</div>
					</div>
					<div id="openPopup">
						<a class="basket" onclick="javascript:event.stopPropagation();goProduct(${prList.prSeq})" >
							<img src="/resources/images/ico_cart.svg" >
						</a>
					</div>
					<!-- <span class="bombTag">주문폭주</span> -->
					<!-- <span class="limitedTag">LIMITED</span> -->
				</div>
			</c:forEach>
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
			<div class="col col-9" id="youtibeShow1" style="display: flex;">
				<iframe width="100%" height="100%" src="https://www.youtube.com/embed/0kcLbkptq-k" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<div class="col col-9" id="youtibeShow2" style="display: none;">
				<iframe width="900" height="506" src="https://www.youtube.com/embed/EJkEAo5QewU" title="[NEW RELEASE] 향기가 실린 바람과 우연의 시작, COTTON BREEZE" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
			</div>
			<div class="col col-9" id="youtibeShow3" style="display: none;">
				<iframe width="900" height="506" src="https://www.youtube.com/embed/ZQDWl6HCHpE" title="포맨트 '최초' 여성 향수 출시💕 #메모리퍼퓸" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
			</div>
			<div class="col col-3">
				<div class="row m-1">
					<div class="col" style="height: 160px; width: 280px;">
						<a onclick="youtube1()" style="cursor: pointer;">
							<img src="/resources/images/로고&배너/비디오 이미지1.png" style="height: 100%; width: 100%;">
						</a>
					</div>
				</div>
				<div class="row m-1">
					<div class="col" style="height: 160px; width: 200px;">
						<a onclick="youtube2()" style="cursor: pointer;">
							<img src="/resources/images/로고&배너/비디오 이미지2.png" style="height: 100%; width: 100%;">
						</a>
					</div>
				</div>
				<div class="row m-1">
					<div class="col" style="height: 160px; width: 280px;">
						<a onclick="youtube3()" style="cursor: pointer;">
							<img src="/resources/images/로고&배너/비디오 이미지3.png" style="height: 100%; width: 100%;">
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class="row mt-3">
			<div class="col" id="youtibeTextShow1" style="display: flex;">
				<span><b>마스터 퍼퓨머가 '성공'에 영감을 받아 탄생한 향수</b></span>
			</div>
			<div class="col" id="youtibeTextShow2" style="display: none;">
				<span><b>향기가 실린 바람과 우연의 시작</b></span>
			</div>
			<div class="col" id="youtibeTextShow3" style="display: none;">
				<span><b>향기와 함께 피어오르는 코랄빛 설렘의 기억</b></span>
			</div>
		</div>
	</div>
	<!-- modal section -->
		<!-- 장바구니 modal s -->
		<div id="popup">
			<input type="hidden" id="modalprSeq" name="prSeq" value="">
			<input type="hidden" id="modalbskSell_Price" name="bskSell_Price" value="">
			<div class="xans-element- xans-product xans-product-optionselectlayer ec-base-layer " style="border: 1px solid #000;">
				<div class="header">
					<h1 style="margin: 0px; font-weight: 600;">옵션 선택</h1>
				</div>
				<div class="content">
					<div class="xans-element- xans-product xans-product-detail inner">
						<h2 class="name">
							<strong id="basketName1">포맨트 시그니처 퍼퓸 코튼허그</strong>
						</h2>
						<div class="productNormal  ">
							<div class="xans-element- xans-product xans-product-image imgArea ">
								<img src="" class="" id="basketImg">
				                &nbsp;
							</div>
							<table border="1" summary="">
								<caption>상품 옵션</caption>
								<colgroup>
									<col width="120px">
									<col width="auto">
								</colgroup>
								<!-- <tbody class="xans-element- xans-product xans-product-option xans-record-">
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
								</tbody> -->
							</table>
						</div>
						<div id="totalProducts" class=" ">
							<!-- <p class="ec-base-help txtWarn txt11 "> 위 옵션선택 박스를 선택하시면 아래에 상품이 추가됩니다.</p> -->
							<table blrder="0" summary>
								<caption>상품 목록</caption>
								<colgroup>
									<col style="width:284px;">
									<col style="width:80px;;">
									<col style="width:110px;">
								</colgroup>
								<div id="product_area">
									
		                        </div>
							</table>
						</div>
					</div>
				</div>
				<div class="xans-element- xans-product xans-product-action ec-base-button">
					<a href="#none" id="buyNowBtn" class="btn_apr  ">바로구매하기</a>
					<a href="#none" onclick="" class="btn_apr  " id="basketInst">장바구니 담기</a>
					<a href="#none" class="btn_apr white close" id="closeModal1" >닫기</a>
				</div>
				<a class="close" id="closeModal2" style="position: absolute; left: 560px; top:15px; cursor: pointer;">
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
	
	youtube1 = function() {
		$("#youtibeShow1").show();
		$("#youtibeShow2").hide();
		$("#youtibeShow3").hide();
		$("#youtibeTextShow1").show();
		$("#youtibeTextShow2").hide();
		$("#youtibeTextShow3").hide();
	};
	
	youtube2 = function() {
		$("#youtibeShow1").hide();
		$("#youtibeShow2").show();
		$("#youtibeShow3").hide();	
		$("#youtibeTextShow1").hide();
		$("#youtibeTextShow2").show();
		$("#youtibeTextShow3").hide();
	};
	
	youtube3 = function() {
		$("#youtibeShow1").hide();
		$("#youtibeShow2").hide();
		$("#youtibeShow3").show();
		$("#youtibeTextShow1").hide();
		$("#youtibeTextShow2").hide();
		$("#youtibeTextShow3").show();
	};
	
	productView = function(key) {
		
		var prSeq = $("#prSeq");
		
		prSeq.val(key);
		form.attr("action", "/product/productView").submit();
	};
	
	const modal = document.getElementById("popup");
    const buttonAddFeed = document.getElementById("openPopup");
	
    buttonAddFeed.addEventListener("click", e => {
		modal.style.top = window.pageYOffset + 'px'; // top을 이용해 시작 y위치를 바꿔줌 
    	modal.style.display = "flex";
        
		/* document.body.style.overflowY = "hidden"; // 스크롤 없애기 */
    
	}); 
 	// 모달 닫기 코드
    const buttonCloseModal1 = document.getElementById("closeModal1");
    const buttonCloseModal2 = document.getElementById("closeModal2");
    		
	buttonCloseModal1.addEventListener("click", e => {
		modal.style.display = "none";
		document.body.style.overflowY = "visible";
	});
	buttonCloseModal2.addEventListener("click", e => {
		modal.style.display = "none";
		document.body.style.overflowY = "visible";
	});

	goProduct = function(prSeq) {
		
		$.ajax({
			url: '/product/getBasket',
			type: 'POST',
			datatype: 'json',
			data: {
				prSeq : prSeq
			},
			success : function(resultMap) {
				
				//갯수 , 가격 비워주고 담아주기
				
				//장바구니 모달 불러오는 정보들
				$("#modalprSeq").attr("value", resultMap.basketSeq);
				$("#modalbskSell_Price").attr("value", resultMap.basketTotalPrice);
				$("#basketName1").html(resultMap.basketName);
				$("#basketImg").attr("src", resultMap.basketImg);
				//$("#basketTotalPrice").attr("value",resultMap.basketTotalPrice);
				//$("#finalPrice").html(resultMap.basketTotalPrice);
				
				var txt = "";	
				
				txt += '<table blrder="0" summary>'
					txt += '<caption>상품 목록</caption>'
					txt += '<colgroup>'
						txt += '<col style="width:284px;">'
						txt += '<col style="width:80px;;">'
						txt += '<col style="width:110px;">'
					txt += '</colgroup>'
					txt += '<tbody class="option_products" style="width: 100%;">'
						txt += '<tr class="option_product " data-option-index="1" target-key="79">'
							txt += '<td>'
								txt += '<input type="hidden" class="option_box_id" id="option_box1_id" value="P00000DB000A" name="">'
								txt += '<p class="product" style="margin: 0px;" id="basketName2">' + resultMap.basketName + '<br></p>'
							txt += '</td>'
							txt += '<td>'
								txt += '<span class="quantity" style="width:65px;">'
								txt += '<input type="text" name="bskAmount" id="amount" class="quantity_opt eProductQuantityClass" value="1">'
								txt += '<a href="#none" class="up eProductQuantityUpClass" id="add" data-target="option_box1_up">'
								txt += '<img src="/resources/images/btn_quantity_up.gif" id="option_box1_up" class="option_box_up" alt="수량증가">'
								txt += '</a>'
								txt += '<a href="#none" class="down eProductQuantityDownClass" id="minus" data-target="option_box1_down">'
								txt += '<img src="/resources/images/btn_quantity_down.gif" id="option_box1_down" class="option_box_down" alt="수량감소">'
								txt += '</a>'
								txt += '</span>'
								txt += '<a href="#none" class="delete">'
								txt += '<img src="/resources/images/btn_price_delete.gif" alt="삭제" id="option_box1_del" class="option_box_del" style="vertical-align: middle;">'
								txt += '</a>'
							txt += '</td>'
							txt += '<td class="right">'
								txt += '<span id="option_box1_price">'
								txt += '<input type="hidden" class="option_box_price" value="">'
								txt += '<span class="ec-front-product-item-price" >'
								txt += '<input id="basketTotalPrice" name="bskSell_Price" style="width: 80px; text-align: right; color: #008bcc; font-weight: 600; padding-bottom: 4px; border: none;" value=" ' + resultMap.basketTotalPrice + ' "/>원'
								txt += '</span>'
								txt += '</span>'
							txt += '</td>'
						txt += '</tr>'
					txt += '</tbody>'
					txt += '<tfoot>'
						txt += '<tr>'
							txt += '<td colspan="3">'
								txt += '<strong>총 상품금액</strong>(수량) : <span class="total"><strong><em><em id="finalPrice">' + resultMap.basketTotalPrice + '</em>원</em></strong> (1개)</span>'
							txt += '</td>'
						txt += '</tr>'
					txt += '</tfoot>'
				txt += '</table>'
				
				$("#product_area").html(txt);  
				
				modal.style.top = window.pageYOffset + 'px'; // top을 이용해 시작 y위치를 바꿔줌 
		    	modal.style.display = "flex";
		        
				document.body.style.overflowY = "hidden"; // 스크롤 없애기.
				
				
				var basketTotalPrice = $("#basketTotalPrice").val();
				
				$("#add").on("click" , function(e){
					var num = +$("#amount").val() + 1;
					var basketTotalPriceAdd = basketTotalPrice * num;
					
					$("#amount").val(num);
					$("#modalbskSell_Price").val(basketTotalPriceAdd);
					$("#basketTotalPrice").val(basketTotalPriceAdd.toLocaleString());
					$("#finalPrice").html(basketTotalPriceAdd.toLocaleString());
					//alert("수량을 추가합니다.");
				});
				
				$("#minus").on("click" , function(e){
					var num = +$("#amount").val() - 1;
					
					if(num < 1) {
						alert("수량을 1개 이하로 변경이 불가능합니다.")
						$("#amount").val(1);
					} else {
						var basketTotalPriceminus = basketTotalPrice * num;
						
						$("#amount").val(num);
						$("#modalbskSell_Price").val(basketTotalPriceminus);
						$("#basketTotalPrice").val(basketTotalPriceminus.toLocaleString());
						$("#finalPrice").html(basketTotalPriceminus.toLocaleString());
					}
					
					//alert("수량을 감소합니다.");
				});
				
				
			},
			error : function() {
				alert("ajax error..!");
			}
		});
	};
	$("#buyNowBtn").on("click", function() {
		
		if($("#mmSeq").val() == null || $("#mmSeq").val() == '') {
			
			alert("로그인 후 사용가능한 서비스입니다.");
			return false;
		}
		
		form.attr("action", "/product/buyNowInst").submit();
		
	});
	
	$("#basketInst").on("click", function(){

		$.ajax({
			url: '/basketInst',
			type: 'POST',
			datatype: 'json',
			data: {
				mmSeq : $("#mmSeq").val()
				,prSeq : $("#modalprSeq").val()
				,bskAmount : $("#amount").val()
				,bskSell_Price : $("#modalbskSell_Price").val()
			},
			success : function(result) {
				if(result.rt == "success") {
					swal("장바구니에 상품이 등록되었습니다.", {
					      icon: "success",
					    })
					    .then(function() {
					    	window.location = "/";
					    });
				}
			},
			error : function() {
				alert("로그인후 이용해주세요.");	
			}
		})
	});
	 
	</script>	
</body>
</html>

