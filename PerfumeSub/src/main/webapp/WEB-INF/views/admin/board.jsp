<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

	  <div class="container col-md-8">
	  
		<c:choose>
		  <c:when test="${param.type eq '1' || param.type eq null}">
			<div style="border-bottom:1px solid black">
				<h6 style="font:bold">공지사항<br><br><br></h6>
			</div>	
				
			<div class="accordion accordion-flush" id="accordionFlushExample" style="font-size: 12px; text-align: center">		
			  <div class="accordion-item">
			    <h2 class="accordion-header" id="flush-headingOne">			    			    	
			      <button class="accordion-button collapsed" type="button" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne" style="font-size: 12px; text-align: center">
			      		<div class="col-md-9">제목</div>
			      		<div class="col-md-3" style="text-align: center;">작성일</div>
			      </button>
			    </h2>
			  </div>	
				  
			  <c:forEach var="notice" items="${noticeList}">
			    <div class="accordion-item">
			      <h2 class="accordion-header">
			        <button class="accordion-button collapsed" type="button">
		     	  	  <div class="col-md-9">${notice.title}</div>
		      	  	  <div class="col-md-3" style="text-align: center;">${notice.regdate}</div>
			        </button>
			      </h2>
				</div>    
			  </c:forEach>
			  <br>
			</div>  		  
		  </c:when>
		  
		  <c:when test="${param.type eq '2'}">
	
			<div style="border-bottom:1px solid black">
				<h6 style="font:bold">FAQ<br><br><br></h6>
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
			  <c:forEach var="faq" items="${faqList}">
			    <div class="accordion-item">
			      <h2 class="accordion-header" id="flush-heading${faq.notice_id}">
			        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" 
			        		data-bs-target="#flush-collapse${faq.notice_id}" aria-expanded="false" 
			        		aria-controls="flush-collapse${faq.notice_id}">
		     	  	  <div class="col-md-9">${faq.title}</div>
		      	  	  <div class="col-md-3" style="text-align: center;">${faq.regdate}</div>
			        </button>
			      </h2>
			      <div id="flush-collapse${faq.notice_id}" class="accordion-collapse collapse" 
			      		aria-labelledby="flush-heading${faq.notice_id}" data-bs-parent="#accordionFlushExample">
			        <div class="accordion-body">${faq.content}</div>
			      </div>
				</div>    
			  </c:forEach>
			  <br>   
			</div> 	  	  	  
		  </c:when>
		 
		  <c:when test="${param.type eq '3'}">
			<div style="border-bottom:1px solid black">
				<h6 style="font:bold;">혜택안내<br><br><br></h6>
			</div>
			<div align="center">			
				<img class="img-fluid" alt="benefit" src="/img/customer/membership.jpg" 
					 style="width: 720px;">	  
			</div>
		  </c:when> 
	    </c:choose>

	  </div>
