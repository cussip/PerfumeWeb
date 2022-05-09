<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

	  <div class="container col-md-8">
	  	
	  	<div class="row">
	  	
		  <div class="col-md-3">				
		  	<c:choose>
			    <c:when test="${param.type eq null}">
					<h6 style="font:bold">공지사항<br><br><br></h6>
			    </c:when>
			    <c:when  test="${param.type ne null}">
			    	<h6 style="font:bold">${param.type}<br><br><br></h6>
			    </c:when>
		  	</c:choose>
	      </div>
			
		  <div class="col-md-9" align="right">
			
		    <!-- 모달 시작 -->	
			<!-- Button trigger modal -->
			<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticNew">
			  새 게시글 작성
			</button>
			
			<!-- Modal -->
			<div class="modal fade" id="staticNew" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticNewLabel" aria-hidden="true">
			  <div class="modal-lg modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="staticNewLabel">새 게시글 작성</h5>
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
							  <textarea class="form-control" name="content" style="height: 700px" wrap="hard">
							  </textarea>
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
							
		  </div>
			
		</div>

	 	  
		<c:choose>
		  <c:when test="${param.type eq '공지사항' || param.type eq null}">
		    <table class="table" style="border-top:1px solid black">
		      <thead>
		        <tr align="center">
		          <th scope="col">No.</th>
		          <th scope="col">제목</th>
		          <th scope="col">작성일</th>
		        </tr>	
		      </thead>
		    
		      <tbody>
		        <c:forEach var="notice" items="${noticeList}">	
		          <tr>	
		            <td>${notice.id}</td>	         
		            <td>              	
		              	<!-- 모달 시작 -->	
						<!-- Button trigger modal -->
						<button type="button" class="btn btn-outling-*" data-bs-toggle="modal" data-bs-target="#staticEdit" 
							data-bs-id="${notice.id}" data-bs-title="${notice.title}" data-bs-content="${notice.content}">
						  ${notice.title}
						</button>
					
						<!-- Modal -->
						<div class="modal fade" id="staticEdit" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticEditLabel" aria-hidden="true">
						  <div class="modal-lg modal-dialog">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title" id="staticEditLabel">게시글 수정</h5>
						        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						      </div>
							  
							  <!-- 기존 글 수정 및 삭제 -->
							  <form action="boardUpdate" method="post">							  	 
							      <div class="modal-body">						
									  <!-- 게시글 작성 부분 -->	
									  <div class="col-md-auto">
									    <div class="input-group mb-3">
									      <span class="input-group-text">No</span>
									      <input readonly type="text" class="form-control modId" name="id" id="idExt-name">	
									    </div>
									  
										<div class="input-group mb-3">										 
										  <span class="input-group-text">제목</span>
										  <input type="text" class="form-control modTitle" name="title" id="titleExt-name">									  
										</div>
										
										<div class="input-group">
										  <span class="input-group-text">내용</span>
										  <textarea class="form-control modContent" name="content" style="height: 700px" id="contentExt-name"></textarea>
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
			
		            </td>			              
		            <td>${notice.regdate}</td>
		            <td>
		            	<button class="btn btn-danger btn-sm">삭제</button>
		            </td>
		          </tr>		        
		        </c:forEach>  	
		      </tbody>
		    </table>    	  
		  </c:when>
		  
		  
		  
		  <c:when test="${param.type eq 'FAQ'}">	
			<div class="accordion accordion-flush" id="accordionFlushExample" style="font-size: 12px">		
			  <div class="accordion-item" style="text-align: center">
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
			        <div class="accordion-body">
			        	<textarea readonly class="form-control" rows="10"><c:out value="${faq.content}"/></textarea>
			        </div>
			      </div>
				</div>    
			  </c:forEach>
			  <br>   
			</div> 	  	  	  
		  </c:when>
		 
		  <c:when test="${param.type eq '혜택안내'}">
			<div align="center">			
				<img class="img-fluid" alt="benefit" src="/img/customer/membership.jpg" 
					 style="width: 720px;">	  
			</div>
		  </c:when> 
	    </c:choose>	

	  </div>

<script>
	var staticEdit = document.getElementById('staticEdit')
	staticEdit.addEventListener('show.bs.modal', function (event) {
		var button = event.relatedTarget
		
		var idExt = button.getAttribute('data-bs-id')
		var titleExt = button.getAttribute('data-bs-title')
		var contentExt = button.getAttribute('data-bs-content')
		
		var titleInj = staticEdit.querySelector('.modTitle')
		var contentInj = staticEdit.querySelector('.modContent')
		var idInj = staticEdit.querySelector('.modId')
		
		titleInj.value = titleExt
		contentInj.value = contentExt
		idInj.value = idExt
	})
</script>





	  