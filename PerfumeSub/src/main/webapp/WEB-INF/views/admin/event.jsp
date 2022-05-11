<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

	  <div class="container col-md-8">
	  	
	  	<div class="row">
	  	
		  <div class="col-md-3">
		  	<h5 style="font:bold">${param.type}<br><br></h5>				
	      </div>
			
		  <div class="col-md-9" align="right">
			
		    <!-- 모달 시작 -->			    
		    <c:choose>	    		  	
			
			  		    
		      <c:when test="${param.type eq 'WINNER'}">		      
		    
				<!-- Button trigger modal -->
				<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticNew">
				  New
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
								  <textarea class="form-control" name="content" style="height: 700px" wrap="hard"></textarea>
								</div>					
							  </div>
					
					      </div>
					      <div class="modal-footer">
					        <input type="hidden" name="category" value="${param.type}">
					        <button type="submit" class="btn btn-primary">저장</button>
					        <button type="reset" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
					      </div>
					  </form>
					  
				    </div>
				  </div>
				</div>
				<!-- 모달 종료 -->
			  </c:when>				
			</c:choose>						
							
		  </div>			
		</div>

	 	  
		<c:choose>
		  
		  
		  <c:when test="${param.type eq 'WINNER'}">	
		    <table class="table" style="border-top:1px solid black">
		      <thead>
		        <tr align="center">
		          <th scope="col">No.</th>
		          <th scope="col">제목</th>
		          <th scope="col">작성일</th>
		          <th scope="col"></th>
		        </tr>	
		      </thead>
		    
		      <tbody align="center">
		        <c:forEach var="winner" items="${winnerList}">	
		          <tr valign="middle">	
		            <td>${winner.id}</td>	         
		            <td align="left">              	
		              	<!-- 모달 시작 -->	
						<!-- Button trigger modal -->
						<button type="button" class="btn btn-outling-*" data-bs-toggle="modal" data-bs-target="#staticEdit" 
							data-bs-id="${winner.id}" data-bs-title="${winner.title}" data-bs-content="${winner.content}" data-bs-regdate="${winner.regdate}">
						  ${winner.title}
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
							  <form action="winnerUpdate" method="post">							  	 
							      <div class="modal-body">						
									  <!-- 게시글 작성 부분 -->	
									  <div class="col-md-auto">
									    <div class="input-group mb-3">
									      <span class="input-group-text">No</span>
									      <input readonly type="text" class="form-control modId" name="id" id="idExt-name">	
									      <span class="input-group-text">게시일</span>
									      <input readonly type="text" class="form-control modRegdate" name="regdate" id="regdateExt-name">										      
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
							        <input type="hidden" name="category" value="${param.type}">
							        <button type="submit" class="btn btn-primary">수정</button>
							        <button type="reset" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
							      </div>
							  </form>
							  
						    </div>
						  </div>
						</div>
						<!-- 모달 종료 -->	
			
		            </td>			              
		            <td>${winner.regdate}</td>
		            <td>
		            	<form action="boardDelete">
		            		<input type="hidden" name="id" value="${winner.id}">
		            	    <input type="hidden" name="category" value="${param.type}">
			            	<button type="submit" class="btn btn-danger btn-sm">삭제</button>
		            	</form>
		            </td>
		          </tr>		        
		        </c:forEach>  	
		      </tbody>
		    </table>	  	  	  
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
		var startdateExt = button.getAttribute('data-bs-startdate')
		var enddateExt = button.getAttribute('data-bs-enddate')
		var	regdateExt = button.getAttribute('data-bs-regdate')
		
		var titleInj = staticEdit.querySelector('.modTitle')
		var contentInj = staticEdit.querySelector('.modContent')
		var idInj = staticEdit.querySelector('.modId')
		var startdateInj = staticEdit.querySelector('.modStartdate')
		var enddateInj = staticEdit.querySelector('.modEnddate')
		var regdateInj = staticEdit.querySelector('.modRegdate')
		
		titleInj.value = titleExt
		contentInj.value = contentExt
		idInj.value = idExt
		startdateInj.value = startdateExt
		enddateInj.value = enddateExt
		regdateInj.value = regdateExt
	})
</script>





	  