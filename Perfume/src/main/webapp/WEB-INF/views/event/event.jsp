<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<main style="margin-left: 350px; margin-right: 350px">
	
	<!-- 공통 이미지 부분  -->	
	<br><br><br>
	<h4 style="margin:0px 0px 50px 0px; text-align:center">EVENT</h4>	
	
	<form action="event">
		<div class="container-fluid">
			<div class="row justify-content-md-center">			
				<div class="col-lg-2" align="right">
					<c:choose>
						<c:when test="${param.type == '1' || param.type == null}">
							<button class="event-menu-onclick btn" name="type" value="1">
								진행중인 이벤트
							</button>
						</c:when>						
						<c:otherwise>
							<button class="event-menu-default btn" name="type" value="1">
								진행중인 이벤트
							</button>
						</c:otherwise>
					</c:choose>
				</div>
				
				<div class="col-lg-2" align="center">
					<c:choose>
						<c:when test="${param.type == '2'}">
							<button class="event-menu-onclick btn" name="type" value="2">
								당첨자 발표
							</button>
						</c:when>						
						<c:otherwise>
							<button class="event-menu-default btn" name="type" value="2">
								당첨자 발표
							</button>
						</c:otherwise>
					</c:choose>
				</div>
				
				<div class="col-lg-2" align="left">
					<c:choose>
						<c:when test="${param.type == '3'}">
							<button class="event-menu-onclick btn" name="type" value="3">
								종료된 이벤트
							</button>
						</c:when>						
						<c:otherwise>
							<button class="event-menu-default btn" name="type" value="3">
								종료된 이벤트
							</button>
						</c:otherwise>
					</c:choose>
				</div>										
			</div>
		</div>
	</form>
	
	<c:choose>
		<c:when test="${param.type == '1' || param.type == null}">

			<br><br>
			<div class="row row-cols-1 row-cols-md-2 g-4">				
				<c:forEach var="event" items="${ingList}">					
				  <div class="col">
			    	<div class="card">
				      <button class="btn">
						<figure class="effect-out">
				      	  <img src="${event.img_mini}" class="card-img-top" alt="">
				      	  <h2>${event.title}</h2>
				      	  <p>${event.start_date} ~ ${event.end_date} 까지</p>
						</figure>
				      </button>
				    </div>
				  </div>				  
				</c:forEach> 			  
			 </div>			
		</c:when>	
		
		<c:when test="${param.type == '2'}">
			<!-- content 부분 -->
			<br><br>
			<div style="border-bottom:1px solid black"></div>
			
			<div class="accordion accordion-flush" id="accordionFlushExample" style="font-size: 12px; text-align: center">
				
			  <div class="accordion-item">
			    <h2 class="accordion-header" id="flush-headingOne">
			      <button class="accordion-button collapsed" type="button" data-bs-target="#flush-collapseOne" 
			      			aria-expanded="false" aria-controls="flush-collapseOne" style="font-size: 12px; text-align: center">
			      	<div class="col-md-7">제목</div>
			      	<div class="col-md-4">작성일</div>
			      </button>
			    </h2>
			  </div>
				  
				  	
			  <c:forEach var="winner" items="${winnerList}">	
				  <div class="accordion-item">
				    <h2 class="accordion-header" id="flush-heading${winner.notice_id}">
				      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" 
				      			data-bs-target="#flush-collapse${winner.notice_id}" aria-expanded="false" 
				      			aria-controls="flush-collapse${winner.notice_id}">
			     	  	<div class="col-md-7">${winner.title}</div>
			      	  	<div class="col-md-4">${winner.regdate}</div>
				      </button>
				    </h2>
				    <div id="flush-collapse${winner.notice_id}" class="accordion-collapse collapse" 
				    				aria-labelledby="flush-heading${winner.notice_id}" data-bs-parent="#accordionFlushExample">
				      <div class="accordion-body">${winner.content}</div>
				    </div>
				  </div>
			  </c:forEach>
			</div> 
		</c:when>	

		<c:when test="${param.type == '3'}">		
			<br><br>
			<div class="row row-cols-1 row-cols-md-2 g-4">			  
			  <c:forEach var="event" items="${endList}">
				<div class="col">							
			    	<div class="card">
				      <button class="btn">
						<figure class="effect-out">
				      	  <img src="${event.img_mini}" class="card-img-top" alt="">
				      	  <h2>${event.title}</h2>
				      	  <p>${event.end_date} 종료</p>
						</figure>
				      </button>
				    </div>				    
				 </div>			  
			  </c:forEach> 			  			  
			</div>					
		 </c:when>		
	 </c:choose>
	
</main>
