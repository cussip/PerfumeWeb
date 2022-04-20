<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<main style="margin-left: 350px; margin-right: 350px">
	
	<!-- 공통 이미지 부분  -->
	<br><br><br>
	<h4 style="margin:0px 0px 50px 0px; text-align:center">SERVICE</h4>	
		 	
	<form action="notice">
		<div class="container-fluid">
			<div class="row text-center">	
					
				<div class="col-md-3"></div>
				
				
			<div class="row row-cols-1 row-cols-md-3 g-4">
			
			  <c:if test="${param.type != '1' && param.type != null}">	
			  <div class="col">
			    <div class="notice-card card">
			      <button class="btn" name="type" value="1">
					<p class="notice-icon bi bi-megaphone"/>
					<p class="notice-icon-text">공지사항</p>
				  </button>
			    </div>
			  </div>
			  </c:if>
			  
			  <c:if test="${param.type != '2'}">
			  <div class="col">
			    <div class="notice-card card">
			      <button class="btn" name="type" value="2">
					<p class="notice-icon bi bi-info-circle"/>
					<p class="notice-icon-text">FAQ</p>
				  </button>
			    </div>
			  </div>
			  </c:if>
			  
			  <c:if test="${param.type != '3'}">
			  <div class="col">
			    <div class="notice-card card">
			      <button class="btn" name="type" value="3">
					<p class="notice-icon bi bi-envelope"/>
					<p class="notice-icon-text">1:1문의</p>
				  </button>
			    </div>
			  </div>
			  </c:if>
			  
			  <c:if test="${param.type != '4'}">
			  <div class="col">
			    <div class="notice-card card">
			      <button class="btn" name="type" value="4">
					<p class="notice-icon bi bi-signpost-2"/>
					<p class="notice-icon-text">혜택안내</p>
				  </button>
			    </div>
			  </div>
			  </c:if>
			  
			</div>	
		 			
			</div>
 	
		</div>
	</form>
	
	
	<!-- content 부분 -->
	<c:choose>
	  <c:when test="${param.type eq '1' || param.type eq null}">

		<div style="margin-top:70px; border-bottom:1px solid black">
			<h6 style="font:bold">공지사항<br><br><br></h6>
		</div>	
			
		<div class="container accordion accordion-flush" id="accordionFlushExample" style="font-size: 12px; text-align: center">		
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
	  </c:when>
	  
	  <c:when test="${param.type eq '2'}">

		<div style="margin-top:100px; border-bottom:1px solid black">
			<h6 style="font:bold">FAQ<br><br><br></h6>
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
	  	  
	  </c:when>
	  
	  <c:when test="${param.type eq '3'}">
	  	
	  </c:when>
	  
	  <c:when test="${param.type eq '4'}">
		<div style="margin-top:100px; text-align: center">
			<h6 style="font:bold; text-align: center">혜택안내<br><br><br></h6>
			<img alt="benefit" src="https://paffem.me/web/paffem/assets/service/membership.jpg" 
				 style="width: 1024px;">	  
		</div>
		
	  		
	  </c:when>
  
  </c:choose>
	
</main>
