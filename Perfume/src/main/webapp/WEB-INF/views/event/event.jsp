<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<main style="margin: 0 350px 0 350px">
	
	<!-- 공통 이미지 부분  -->
	
	<h4 style="margin:130px 0 40px 0; text-align:center">EVENT</h4>	
	<div class="container-fluid">
	  <!-- Three columns of text below the carousel -->   
		<div class="row justify-content-md-center">
		    <div class="col-lg-2" role="button">
				<p class="event-menu">진행중인 이벤트</p>			
		    </div>
		    <div class="col-lg-auto" role="button">
				<p class="event-menu">당첨자 발표</p>		    
			</div>
		    <div class="col-lg-2" role="button" align="center">
				<p class="event-menu">종료된 이벤트</p>		     
		 	</div>
		</div>
	</div>
	
	<c:choose>
		<c:when test="${event eq '1'}"></c:when>	
		<c:when test="${event eq '2'}"></c:when>	
		<c:when test="${event eq '1'}"></c:when>
		
		<c:otherwise>
			
			<!-- content 부분 -->
			<div style="margin-top:30px; border-bottom:1px solid black"></div>
			
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
		</c:otherwise>
		
	</c:choose>
	
</main>
