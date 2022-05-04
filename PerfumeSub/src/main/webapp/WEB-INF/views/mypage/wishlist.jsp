<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<main style="margin: 100px 150px 100px 150px">
<h3 style="margin:130px 0 40px 0; text-align:center">마이페이지</h3>
<%--
	<div class="container">
		<div class="row">
			<div class="col col-6">사용자님, 즐거운 쇼핑 되십시오</div>
			<div class="col">로그아웃</div>
			<div class="col">마이페이지</div>
			<div class="col">장바구니</div>
		</div>
	</div>
 --%>
<hr style="color:#555555">
<div class="row">
		<!-- 좌측 마이페이지 사이드메뉴 -->
		<div class="col-4" style="padding: 0 100px 0 20px">
		<ul class="list-group list-group-flush" style="border-bottom:1px solid black">
   			<li class="list-group-item" ><a href="./orderlist" id="mymenu">주문내역</a></li>
  			<li class="list-group-item" ><a href="./wishlist" id="mymenu">관심상품</a></li>
  			<li class="list-group-item" ><a href="./myreview" id="mymenu">나의리뷰</a></li>
  			<li class="list-group-item" ><a href="./request" id="mymenu">나의문의</a></li>
  			<li class="list-group-item" ><a href="./myedit" id="mymenu">정보수정</a></li>
		</ul>
		</div>
		<!-- 좌측 마이페이지 사이드메뉴 (End) -->	
	
<div class="col-8"  style="padding: 0 0 0 30px">
	
	<div class="container">
		<div class="col" id="mywish" style="margin: 0 0 40px 0; color:#555555; font-weight:600">관심상품으로 등록하신 상품의 목록을 보여드립니다.</div>
		<!-- 각 관심상품 리스트 -->
		<div class="row">
				<!-- 상품이미지 -->
				<div class="col">
				<img src="#" class="img-thumbnail">
				</div>
				<!-- 날짜 -->
				<div class="col">
				2022.04.14
				</div>
				<!-- 상품명 -->
				<div class="col">
				<a href="#">향수1</a>
				</div>
				<!-- 가격 -->
				<div class="col">
				22,000원
				</div>
				<div class="col">
						<button type="button" class="btn btn-outline-secondary btn-sm">구매하기</button>
						<button type="button" class="btn btn-outline-danger btn-sm">삭제하기</button>
				</div>
		<br><hr>
		</div>
		
		<br>
		
		<!-- 각 관심상품 리스트 -->
		<div class="row">
				<!-- 상품이미지 -->
				<div class="col">
				<img src="#" class="img-thumbnail">
				</div>
				<!-- 날짜 -->
				<div class="col">
				2022.04.14
				</div>
				<!-- 상품명 -->
				<div class="col">
				<a href="#">향수2</a>
				</div>
				<!-- 가격 -->
				<div class="col">
				34,000원
				</div>
				<div class="col">
						<button type="button" class="btn btn-outline-secondary btn-sm">구매하기</button>
						<button type="button" class="btn btn-outline-danger btn-sm">삭제하기</button>
				</div>
		<br><hr>		
		</div>
		
		<br>	
		<!-- 각 관심상품 리스트 -->
		<div class="row">
				<!-- 상품이미지 -->
				<div class="col">
				<img src="#" class="img-thumbnail">
				</div>
				<!-- 날짜 -->
				<div class="col">
				2022.04.14
				</div>
				<!-- 상품명 -->
				<div class="col">
				<a href="#" id="goodsname">향수2</a>
				</div>
				<!-- 가격 -->
				<div class="col">
				34,000원
				</div>
				<div class="col">
						<button type="button" class="btn btn-outline-secondary btn-sm">구매하기</button>
						<button type="button" class="btn btn-outline-danger btn-sm">삭제하기</button>
				</div>
		<br><hr>		
		</div>
		
	<br>	
		<!-- 각 관심상품 리스트 -->
		<div class="row">
				<!-- 상품이미지 -->
				<div class="col">
				<img src="#" class="img-thumbnail">
				</div>
				<!-- 날짜 -->
				<div class="col">
				2022.04.14
				</div>
				<!-- 상품명 -->
				<div class="col">
				<a href="#" id="goodsname">향수2</a>
				</div>
				<!-- 가격 -->
				<div class="col">
				34,000원
				</div>
				<div class="col">
						<button type="button" class="btn btn-outline-secondary btn-sm">구매하기</button>
						<button type="button" class="btn btn-outline-danger btn-sm">삭제하기</button>
				</div>
		<br><hr>		
		</div>
		
		
	</div>	
</div>	

</div>
	
</main>	

