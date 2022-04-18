<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<main style="margin: 0 350px 0 350px">
	
	<!-- 공통 이미지 부분  -->
	
	<h4 style="margin:130px 0 100px 0; text-align:center">SERVICE</h4>	
	<div class="container-fluid">
	  <!-- Three columns of text below the carousel -->   
		<div class="row text-center">
		    <div class="col-md-4">
				<i class="notice-icon bi bi-megaphone" role="button"></i>
				<br><br>
				<h6 class="notice-icon-text">공지사항</h6>			
		    </div>
		    <div class="col-md-4">
				<i class="notice-icon bi bi-info-circle" role="button"></i>
				<br><br>
				<h6 class="notice-icon-text">FAQ</h6>		    
			</div>
		    <div class="col-md-4">
				<i class="notice-icon bi bi-envelope" role="button"></i>
				<br><br>
				<h6 class="notice-icon-text">1:1문의</h6>		     
		 	</div>
		 	<div class="col-md-4">
				<i class="notice-icon bi bi-signpost-2" role="button"></i>
				<br><br>     
				<h6 class="notice-icon-text">혜택안내</h6>		
		 	</div>
		</div>
	</div>
	
	
	<!-- content 부분 -->
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
		    <h2 class="accordion-header" id="flush-headingTwo">
		      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
	     	  	<div class="col-md-7">내용이 작성되어 있는 상태의 샘플</div>
	      	  	<div class="col-md-4">2022-04-15 17:09:55</div>
		      </button>
		    </h2>
		    <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
		      <div class="accordion-body">내용내용내용</div>
		    </div>		    
		    <h2 class="accordion-header" id="flush-headingThree">
		      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
	     	  	<div class="col-md-7">내용이 작성되어 있는 상태의 샘플</div>
	      	  	<div class="col-md-4">2022-04-15 17:09:55</div>
		      </button>
		    </h2>
		    <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
		      <div class="accordion-body">내용내용내용</div>
		    </div>		    
		  </div>
	  </c:forEach>
	</div>    
	
</main>
