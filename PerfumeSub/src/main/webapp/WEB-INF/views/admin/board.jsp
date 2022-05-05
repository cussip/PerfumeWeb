<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

	  <div class="container col-md-8">
	  
		<c:choose>
		  <c:when test="${param.type eq '1' || param.type eq null}">
			<div class="row" style="border-bottom:1px solid black">

			  <div class="col-md-3">				
				<h6 style="font:bold">공지사항<br><br><br></h6>
			  </div>
			
			  <div class="col-md-9" align="right">
				
			    <!-- 모달 시작 -->	
				<!-- Button trigger modal -->
				<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
				  작성
				</button>
				
				<!-- Modal -->
				<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
				  <div class="modal-lg modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="staticBackdropLabel">title</h5>
				        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				      </div>
					  
					  <form action="board" method="post">
				      <div class="modal-body">
				
						  <!-- 게시글 작성 부분 -->	
						  <div class="col-md-auto">
								
								<div class="input-group mb-3">
								  <span class="input-group-text">제목</span>
								  <input type="text" class="form-control" name="title">
								</div>
								
								<div class="input-group">
								  <span class="input-group-text">내용</span>
								  <textarea class="form-control" name="content" style="height: 700px"></textarea>
								</div>
								
						  </div>
				
				      </div>
				      <div class="modal-footer">
				        <button type="submit" class="btn btn-primary">저장</button>
				        <button type="reset" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
				      </div>
					  </form>
					  
				    </div>
				  </div>
				</div>
				<!-- 모달 종료 -->
				<button type="button" class="btn btn-primary">
				  수정
				</button>
				<button type="button" class="btn btn-primary">
				  삭제
				</button>
							
			  </div>
			
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
			      <h2 class="accordion-header" id="flush-heading${faq.id}">
			        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" 
			        		data-bs-target="#flush-collapse${faq.id}" aria-expanded="false" 
			        		aria-controls="flush-collapse${faq.id}">
		     	  	  <div class="col-md-9">${faq.title}</div>
		      	  	  <div class="col-md-3" style="text-align: center;">${faq.regdate}</div>
			        </button>
			      </h2>
			      <div id="flush-collapse${faq.id}" class="accordion-collapse collapse" 
			      		aria-labelledby="flush-heading${faq.id}" data-bs-parent="#accordionFlushExample">
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
