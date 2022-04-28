<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src='http://code.jquery.com/jquery-3.3.1.js'></script>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<!-- Option 1: Bootstrap Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<title>2.5ml</title>
<style>
.col-sm-6 {
	padding-top: 200px;
	display: flex;
}
.row img{
  width: 80%;
  margin-left: 130px;
}
</style>

</head>
<body>
 

<!--  http://drive.google.com/uc?export=view&id=1-3p5BqrlNWPxZ6K2Ztu2ftxLOppfkTXF-->



	<div class="container">
		<div class="row">
           
			<div class="col-sm-6">
				<div class="card"
					style="width: 33rem; text-align: center; border: none;">
					
					
					
					<c:forEach var="item" items="${list}">
					<img style="height: 35rem;"
						src="${item.image} "
						class="card-img-top" />
					 </c:forEach>	
				</div>
			</div>

			<div class="col-sm-6">
				<div class="product_title"
					style="padding-top: 100px; padding-left: 100px;">
					<h4>
						<strong><c:forEach var="item" items="${list}">${item.name} </c:forEach></strong>
						
					</h4>
					<div class="produc_price">
					<c:forEach var="item" items="${list}">
						<h6 style="padding-left: 310px;">
							<strong><fmt:formatNumber value="${item.price}" pattern="#,### 원" /></strong>
						</h6>
					</c:forEach>	
						<br>
					</div>

					<div class="dropdown">

						<div class="border border-gray" style="text-align: center;">
							<a class="btn btn-white btn-lg dropdown-toggle" href="#"
								role="button" id="dropdownMenuLink" data-bs-toggle="dropdown"
								aria-expanded="false" style="color: gray; font-size: 15px;">-[필수]옵션을
								선택해 주세요-</a>
						</div>

						<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
							<li style="width: 23rem;"><a class="dropdown-item" href="#"
								style="font-size: 15px;">40ml</a></li>
							<li style="width: 23rem;"><a class="dropdown-item" href="#"
								style="font-size: 15px;">60ml (+ 5000원)</a></li>
							<li style="width: 23rem;"><a class="dropdown-item" href="#"
								style="font-size: 15px;">120ml (+ 15000원)</a></li>
						</ul>

					</div>
					<br>
					<div class="border-bottom"></div>

					<div class="all_price"
						style="padding-top: 20px; display: flex; padding-bottom: 10px;">
						<h6>총 상품금액</h6>
						<c:forEach var="item" items="${list}">
						<h6 style="margin-left: 230px;">
							<strong><fmt:formatNumber value="${item.price}" pattern="#,### 원" /></strong>
						</h6>
						</c:forEach>
					</div>
					<div>
						<a href="#" style="text-decoration: none; color: black;">
							<div class="border border-dark"
								style="text-align: center; font-size: 20px; font-weight: bold; height: 50px; padding-top: 10px;">
								바로 구매</div>
						</a>
					</div>

					<div style="display: flex;">
						<div style="padding-top: 10px; width: 320px;">
							<a href="#"
								style="text-decoration: none; color: white; padding-top: 10px;">
								<div class="border border-white"
									style="text-align: center; font-size: 20px; font-weight: bold; height: 50px; background-color: black; padding-top: 10px;">
									장바구니</div>
							</a>
						</div>
						<div style="padding-left: 10px; padding-top: 10px;">
							<i class="bi bi-heart" style="font-size: 2rem;"></i>
						</div>
					</div>
					<br>
					<span style="font-size: 12px;">회원 가입 시 할인, 포인트 적립 등 다양한 혜택을
						받을 수 있습니다.</span>
				</div>

			</div>

			<div class="row" style="padding-top: 130px; padding-bottom: 20px; ">

				<div class="col-sm-12" style="display: flex; justify-content: center; font-size: 20px;">
				 
				   <!-- <a href="#target1" class="scroll"> -->
					<div class="detail">
						<a href="#target1" class="scroll" style="color:black; text-decoration: none;"><span><strong>상세정보</strong></span></a>
						<div class="border-bottom border border-dark"></div>
					</div>
					
					<div class="review" style="padding-left: 40px">
						<a href="#target2" style="color:gray; text-decoration: none;"><span>리뷰</span></a>
						<div class="border-bottom"></div>					
					</div>
					
				</div>
				
				
			</div>
			
			<div id="target1" class="row">
			
			<div class="col-sm-12">
			 <img src="https://paffem.me/web/upload/NNEditor/20210111/wind01_detail-03_shop1_125421.png">
			</div>
			<div class="col-sm-12">
			 <img src="https://paffem.me/web/upload/NNEditor/20210111/wind01_detail-04_shop1_125422.png">
			</div>
			<div class="col-sm-12">
			 <img src="https://paffem.me/web/upload/NNEditor/20210111/wind01_detail-05_shop1_125606.png">
			</div>
			<div class="col-sm-12">
			 <img src="https://paffem.me/web/upload/NNEditor/20210111/wind01_detail-06_shop1_125606.png">
			</div>
			<div class="col-sm-12">
			 <img src="https://paffem.me/web/upload/NNEditor/20210111/wind01_detail-07_shop1_125606.png">
			</div>
		
			</div>
			
			
			<div class="row" style="padding-top: 130px; padding-bottom: 100px; ">

				<div class="col-sm-12" style="display: flex; justify-content: center; font-size: 20px;">
				 
				   <!-- <a href="#target1" class="scroll"> -->
					<div class="detail">
						<a href="#target1" style="color:gray; text-decoration: none;"><span>상세정보</span></a>
						<div class="border-bottom "></div>
					</div>
					
					<div id="target2" class="review" style="padding-left: 40px">
						<a href="#target2" style="color:black; text-decoration: none;"><span><strong>리뷰</strong></span></a>
						<div class="border-bottom border border-dark"></div>					
					</div>
					
				</div>
				
				
			</div>



		</div>

	</div>






</body>
</html>