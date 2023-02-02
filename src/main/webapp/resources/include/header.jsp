<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style type="text/css">
    .dropbtn {
	  background-color: transparent;
	  /* color: white; */
	  padding: 16px;
	  font-size: 16px;
	  border: none;
	  cursor: pointer;
	}
	
	
	.dropdown {
	  display: inline-block;
	}
	
	.dropdown-content {
	  	display: none;
	  	background-color: white;
	  	min-width: 160px;
	  	box-shadow: 0px 10px 5px 5px rgba(0,0,0,0.2);
	  	z-index: 1;
	  	position: absolute;
	}
	
	.dropdown-content a {
	  color: black;
	  padding: 12px 16px;
	  text-decoration: none;
	  display: block;
	}
	
	.dropdown-content a:hover {
		background-color: #f1f1f1
	}
	
	.dropdown:hover .dropdown-content {
	  display: block;
	}
	
	.headerRightList {
		float: left;
		margin: 0 0 0 25px;
    	font-size: 16px; 
	}
</style>

<!-- 모든 페이지에서 사용되어질 hidden input -->
<input type="hidden" name="prKind" id="prKind" value="">

<!-- Header Area -->
<nav class="navbar navbar-expand-lg sticky-top" style="border-bottom: 1px solid #E6E6E6; background: white;">
  <div class="container-fluid">
    <a class="navbar-brand" style="padding-left: 50px; font-size: 25pt; color: #000; text-decoration: none;" href="/"><b>FORMENT</b></a>
    <div class="collapse navbar-collapse" style="padding-left: 30px;" id="navbarNavDropdown">
	    <div class="dropdown">
		  <button class="dropbtn" style="font-weight: bold;" onclick="category(0)">PRODUCT</button> 
		  <div class="dropdown-content">
		  <a onclick="category(0)">ALL</a>
		  <a onclick="category(1)">PERFUME</a>
		  <a onclick="category(2)">BODY & HAND</a>
		  <a onclick="category(3)">HAIR</a>
		  <a onclick="category(4)">LIP</a>
		  <a onclick="category(5)">LIFE STYLE</a> 
		  <a onclick="category(6)">MEN'S SKIN</a>
		  </div>
		</div>
		<div class="dropdown">
		  <button class="dropbtn" style="font-weight: bold;" type="button" onclick="location.href='/magazineList';">ABOUT</button>
		  <div class="dropdown-content">
		  <a href="/magazineList">MAGAZINE</a>
		  <a href="/campaignList">CAMPAIGN</a>
		  </div>
		</div>
		<div class="dropdown">
		  <button class="dropbtn" style="font-weight: bold;" type="button" onclick="location.href='/post/postList';">C/S CENTER</button>
		  <div class="dropdown-content">
		  <a href="/post/postList">NOTICE</a>
		  <a href="/membership">MEMBERSHIP</a>
		  </div>
		</div>
    </div>
  </div>
  <div class="container-fluid pb-3"> 
  	<div class="collapse navbar-collapse justify-content-end" style="padding-left: 30px; padding-right: 80px;" id="navbarNavDropdown">
  		<c:choose>
  			<c:when test="${sessId eq null}">
			    <div class="loginSection">
			    	<ul style="list-style: none;">
			    		<a href="/member/login" style=" color: #000; text-decoration: none;"><li class="headerRightList">LOGIN</li></a>
			    		<a href="/member/join" style=" color: #000; text-decoration: none;"><li class="headerRightList">JOIN</li></a>
			    	</ul>
			    </div>
  			</c:when>
  			<c:otherwise>
			    <div class="logoutSection">
			    	<ul style="list-style: none;">
			    		<a href="#" onclick="btnLogout()" style=" color: #000; text-decoration: none;"><li class="headerRightList">LOGOUT</li></a>
			    		<a href="#" onclick="btnMyinfo(${sessSeq})" style=" color: #000; text-decoration: none;"><li class="headerRightList">MY INFO</li></a>
			    		<a href="#" onclick="btnOderlist(${sessSeq})" style=" color: #000; text-decoration: none;"><li class="headerRightList">ORDER</li></a>
			    		<a href="#" onclick="btnBasket(${sessSeq})" style=" color: #000; text-decoration: none;"><li class="headerRightList">CART</li></a>
			    		<a href="#" onclick="btnMypage(${sessSeq})" style=" color: #000; text-decoration: none;"><li class="headerRightList">MY PAGE</li></a>
			    	</ul>
			    </div>
  			</c:otherwise>
  		</c:choose>
  	</div>
  </div>
</nav>
