<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<<<<<<< HEAD
=======
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 



>>>>>>> 7736c3326a85319351f08562c369b4180eb89da7
<main style="margin: 100px 150px 100px 150px">
<h3 style="margin:130px 0 40px 0; text-align:center">마이페이지</h3>
<hr style="color:#555555">

<div class="row">
	<!-- 좌측 마이페이지 사이드메뉴 -->
		<div class="col-4" style="padding: 0 80px 0 20px">
		<ul class="list-group list-group-flush" style="border-bottom:1px solid black">
   			<li class="list-group-item" ><a href="./orderlist" id="mymenu">주문내역</a></li>
  			<li class="list-group-item" ><a href="./wishlist" id="mymenu">관심상품</a></li>
  			<li class="list-group-item" ><a href="./myreview" id="mymenu">나의리뷰</a></li>
  			<li class="list-group-item" ><a href="./request" id="mymenu">나의문의</a></li>
  			<li class="list-group-item" ><a href="./myedit" id="mymenu">정보수정</a></li>
		</ul>
		</div>
	<!-- 좌측 마이페이지 사이드메뉴 (End) -->	

	<div class="col-8">		
		<div class="container">
			<div class="col" style="margin: 0 0 40px 0; color:#555555; font-weight:600">고객님께서 주문하신 상품의 주문내역을 확인하실 수 있습니다.</div>
			
			<div class="row" style="border-bottom:1px solid black">
				<div class="col">주문일자</div>
				<div class="col">상품명</div>
				<div class="col">수량</div>
				<div class="col">총금액</div>
			</div>			
<<<<<<< HEAD
=======

>>>>>>> 7736c3326a85319351f08562c369b4180eb89da7
			<!-- 추후에 사진첨부 할것... -->
			<div class="row" style="border-bottom:1px solid lightgrey">
				<div class="col-2">2022.04.14</div>
				<div class="col-4">drop 01. 물기 머금은 장미</div>
				<div class="col-3">1</div>
				<div class="col-2">48,000원</div>
				<div class="row">
					<div class="col-8"></div>
					<div class="col-4">
					<button type="button" class="btn btn-outline-secondary btn-sm" onclick="">리뷰쓰기</button>
					<button type="button" class="btn btn-outline-danger btn-sm">반품신청</button>
					</div>
				</div>	
			</div>
			
<<<<<<< HEAD
			
			
=======

			<c:forEach var="item" items="${order}">
				<div class="row" style="border-bottom:1px solid lightgrey">
					<div class="col-2"><fmt:formatDate value="${item.orderDate}" dateStyle="default"/></div>
					<div class="col-4">${item.name}</div>
					<div class="col-3">${item.productCount}</div>
					<div class="col-2"><fmt:formatNumber value="${item.totalPrice}"/></div>
					<div class="row">
						<div class="col-8"></div>
						<div class="col-4">
						<button type="button" class="btn btn-outline-secondary btn-sm" onclick="">리뷰쓰기</button>
						
						<a href="/mypage/deleteorder?orderId=${item.orderId }">삭제</a>
						
						<button type="button" class="btn btn-outline-danger btn-sm">반품신청</button>
						</div>
					</div>	
				</div>
			</c:forEach>

>>>>>>> 7736c3326a85319351f08562c369b4180eb89da7
		</div>
	</div>		
			
</div>


</main>



