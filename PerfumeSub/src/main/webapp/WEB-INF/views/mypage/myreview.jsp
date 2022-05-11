<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<main style="margin: 100px 150px 100px 150px">
<h3 style="margin:130px 0 40px 0; text-align:center">마이페이지</h3>
<hr style="color:#555555">


<div class="row">
		<!-- 좌측 마이페이지 사이드메뉴 -->
		<div class="col-4" style="padding: 0 80px 0 20px">
		<ul class="list-group list-group-flush" style="border-bottom:1px solid black">
  			<li class="list-group-item" ><a href="/myorder" id="mymenu">주문내역</a></li>
  			<li class="list-group-item" ><a href="/mywish" id="mymenu">관심상품</a></li>
  			<li class="list-group-item" ><a href="#" id="mymenu">나의리뷰</a></li>
  			<li class="list-group-item" ><a href="#" id="mymenu">나의문의</a></li>
  			<li class="list-group-item" ><a href="#" id="mymenu">정보수정</a></li>
		</ul>
		</div>
		<!-- 좌측 마이페이지 사이드메뉴 (End) -->	


	
	<div class="col-8">
		<div class="container">
			<div class="col" style="margin: 0 0 40px 0; color:#555555; font-weight:600">고객님께서 구매하신 상품의 리뷰를 관리하는 공간입니다.</div>		
			
			<div class="row" style="border-bottom:1px solid black">
				<div class="col">주문일자</div>
				<div class="col">상품명</div>
			</div>
			
			<div class="row">
			<div class="accordion accordion-flush" id="accordionPanelsStayOpenExample" style="padding: 0 50px 0 0">
  <div class="accordion-item">
    <h2 class="accordion-header" id="panelsStayOpen-headingOne">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
        <div class="col">2022.04.19</div><div class="col">wind 02. 백색 향</div>
      </button>
    </h2>
    <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingOne">
      <div class="accordion-body">
        <div class="row">
        <p>내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
        내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
        내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
        내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용</p>
        </div>
        <div class="row">
       		<div class="col-7"></div>			
       		<div class="col-5" style="padding:0 0 0 100px">
       			<button type="button" class="btn btn-outline-secondary btn-sm">수정하기</button>
				<button type="button" class="btn btn-outline-danger btn-sm">삭제하기</button>
       		</div>				
        </div>   
      </div>
    </div>
  </div>
  
 
  <div class="accordion-item">
    <h2 class="accordion-header" id="panelsStayOpen-headingTwo">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
        Accordion Item #2
      </button>
    </h2>
    <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingTwo">
      <div class="accordion-body">
        <strong>This is the second item's accordion body.</strong> </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="panelsStayOpen-headingThree">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">
        Accordion Item #3
      </button>
    </h2>
    <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingThree">
      <div class="accordion-body">
        <strong>This is the third item's accordion body.</strong>  </div>
    </div>
  </div>
</div>
			</div>
			
		</div> 
	

	</div>	
	
</div>	
	
	
</main>	


<<<<<<< HEAD

=======
>>>>>>> 7736c3326a85319351f08562c369b4180eb89da7
