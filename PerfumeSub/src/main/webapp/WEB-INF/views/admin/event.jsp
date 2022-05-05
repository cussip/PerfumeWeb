<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    


	  <div class="container col-md-8">
	  
		<c:choose>
		  <c:when test="${param.type eq '1' || param.type eq null}">
			<div style="border-bottom:1px solid black">
				<h6 style="font:bold">이벤트 리스트<br><br><br></h6>
			</div>	
				
			<div class="accordion accordion-flush" id="accordionFlushExample" style="font-size: 12px; text-align: center">		
			  <div class="accordion-item">
			    <h2 class="accordion-header" id="flush-headingOne">
			      <button class="accordion-button collapsed" type="button" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne" style="font-size: 12px; text-align: center">
			      		<div class="col-md-6">제목</div>
			      		<div class="col-md-3" style="text-align: center;">시작일</div>
			      		<div class="col-md-3" style="text-align: center;">종료일</div>
			      </button>
			    </h2>
			  </div>	
				  
			  <c:forEach var="event" items="${eventList}">
			    <div class="accordion-item">
			      <h2 class="accordion-header" id="flush-heading${event.event_id}">
			        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" 
			        		data-bs-target="#flush-collapse${event.event_id}" aria-expanded="false" 
			        		aria-controls="flush-collapse${event.event_id}">
		     	  	  <div class="col-md-6">${event.title}</div>
		      	  	  <div class="col-md-3" style="text-align: center;">${event.start_date}</div>
		      	  	  <div class="col-md-3" style="text-align: center;">${event.end_date}</div>
			        </button>
			      </h2>
			      <div id="flush-collapse${event.event_id}" class="accordion-collapse collapse" 
			      		aria-labelledby="flush-heading${event.event_id}" data-bs-parent="#accordionFlushExample">
			        <div class="accordion-body board-content">${event.title}</div>
			      </div>
				</div>    
			  </c:forEach>
			  <br>
			</div>  		  
		  </c:when>
		  
		  <c:when test="${param.type eq '2'}">
	
			<div style="border-bottom:1px solid black">
				<h6 style="font:bold">당첨자<br><br><br></h6>
			</div>	
				
			<div class="accordion accordion-flush" id="accordionFlushExample" style="font-size: 12px; text-align: center">		
			  <div class="accordion-item">
			    <h2 class="accordion-header" id="flush-headingOne">
			      <button class="accordion-button collapsed" type="button" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne" style="font-size: 12px; text-align: center">
			      		<div class="col-md-9">제목</div>
			      		<div class="col-md-3">작성일</div>
			      </button>
			    </h2>
			  </div>	
			  <c:forEach var="winner" items="${winnerList}">
			    <div class="accordion-item">
			      <h2 class="accordion-header" id="flush-heading${winner.notice_id}">
			        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" 
			        		data-bs-target="#flush-collapse${winner.notice_id}" aria-expanded="false" 
			        		aria-controls="flush-collapse${winner.notice_id}">
		     	  	  <div class="col-md-9">${winner.title}</div>
		      	  	  <div class="col-md-3" style="text-align: center;">${winner.regdate}</div>
			        </button>
			      </h2>
			      <div id="flush-collapse${winner.notice_id}" class="accordion-collapse collapse" 
			      		aria-labelledby="flush-heading${winner.notice_id}" data-bs-parent="#accordionFlushExample">
			        <div class="accordion-body">${winner.content}</div>
			      </div>
				</div>    
			  </c:forEach>
			  <br>   
			</div> 	  	  	  
		  </c:when>

	    </c:choose>

	  </div>