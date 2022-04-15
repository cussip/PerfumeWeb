<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<main style="margin: 0 350px 0 350px">
	
	<!--   -->
	
	<h4 style="margin:130px 0 100px 0; text-align:center">SERVICE</h4>	
	<div class="container-fluid">
	  <!-- Three columns of text below the carousel -->   
		<div class="row text-center">
		    <div class="col-md-4">
				<img src="/img/customer/notice.png" alt="img_notice" width="240" height="170" class="img-responsive img-rounded"/>
		    </div>
		    <div class="col-md-4">
				<img src="/img/customer/ask.png" alt="img_ask" width="240" height="170"/>      
			</div>
		    <div class="col-md-4">
				<img src="/img/customer/benefit.png" alt="img_advantage" width="240" height="170" class="img-responsive img-rounded"/>      
		 	</div>
		</div>
	</div>

	<div style="margin-top:100px; border-bottom:1px solid black">
		<h6 style="font:bold">공지사항<br><br><br></h6>
	</div>
	
	<div class="accordion accordion-flush" id="accordionFlushExample" style="font-size: 12px; text-align: center">
		
	  <c:forEach var="n" items="list">	
		  <div class="accordion-item">
		    <h2 class="accordion-header" id="flush-headingOne">
		      <button class="accordion-button collapsed" type="button" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne" style="font-size: 12px; text-align: center">
		      		<div class="col-md-7">제목</div>
		      		<div class="col-md-4">작성일</div>
		      </button>
		    </h2>
		  </div>	
		  <div class="accordion-item">
		    <h2 class="accordion-header" id="flush-headingOne">
		      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
	     	  	<div class="col-md-7">내용이 작성되어 있는 상태의 샘플</div>
	      	  	<div class="col-md-4">2022-04-15 17:09:55</div>
		      </button>
		    </h2>
		    <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
		      <div class="accordion-body">내용내용내용</div>
		    </div>
		  </div>
	  </c:forEach>
	</div>    
	
</main>
