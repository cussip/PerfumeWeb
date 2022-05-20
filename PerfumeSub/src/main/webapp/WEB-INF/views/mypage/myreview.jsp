<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
#mymenu {
	color:#555555;
	text-decoration: none;
}

.list-group-item:hover {
	background-color: #b6b8bb;
}

#goodsname {
	color:#555555;
	text-decoration: none;
}

#goodsname:hover {
	font-weight: bold;
}

</style> 



<main style="margin: 100px 150px 100px 150px">
<h3 style="margin:130px 0 40px 0; text-align:center">마이페이지</h3>
<hr style="color:#555555">


<div class="row">
		<!-- 좌측 마이페이지 사이드메뉴 -->
		<div class="col-4" style="padding: 0 80px 0 20px">
		<ul class="list-group list-group-flush" style="border-bottom:1px solid black">
  			<li class="list-group-item" ><a href="#" id="mymenu">주문내역</a></li>
  			<li class="list-group-item" ><a href="#" id="mymenu">관심상품</a></li>
  			<li class="list-group-item" ><a href="#" id="mymenu">나의리뷰</a></li>
  			<li class="list-group-item" ><a href="#" id="mymenu">나의문의</a></li>
  			<li class="list-group-item" ><a href="#" id="mymenu">정보수정</a></li>
		</ul>
		</div>
		<!-- 좌측 마이페이지 사이드메뉴 (End) -->	

	<div class="col-8">
	<div class="container">
			<div class="row" style="color:#555555; font-weight:600">고객님께서 구매하신 상품의 리뷰를 관리하는 공간입니다.</div>		
			
			<br><hr>
		
			<c:forEach var="rvs" items="${reviews}">
					
			<div class="row">
			<div class="col">${rvs.productId}</div>
			<div class="col">${rvs.writerId}</div>
			</div>		
			<br><hr>		
			</c:forEach>	
	</div> 
	</div>	
	
</div>	
	
	
</main>	



