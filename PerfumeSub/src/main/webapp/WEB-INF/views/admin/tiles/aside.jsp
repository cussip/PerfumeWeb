<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	  <!-- 사이드 바 -->
	  <div class="flex-shrink-0 p-3 bg-white col-md-4" id="adminside" style="width: 280px;">
	    <a href="/admin/board" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
	      <span class="fs-5 fw-semibold">Admin</span>
	    </a>
	  
	    <ul class="list-unstyled ps-0">
	      <li class="mb-1">
	        <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="false">
	          Board
	        </button>
	        <div class="collapse" id="home-collapse">
	          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
	            <li><a href="/admin/board?type=1" class="link-dark rounded">공지사항</a></li>
	            <li><a href="/admin/board?type=2" class="link-dark rounded">FAQ</a></li>
	            <li><a href="/admin/board?type=3" class="link-dark rounded">혜택안내</a></li>
	          </ul>
	        </div>
	      </li>
	      <li class="mb-1">
	        <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="true">
	          Event
	        </button>
	        <div class="collapse show" id="dashboard-collapse">
	          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
	            <li><a href="/admin/event?type=1" class="link-dark rounded">이벤트 리스트</a></li>
	            <li><a href="/admin/event?type=2" class="link-dark rounded">당첨자 관리</a></li>	            
	          </ul>
	        </div>
	      </li>
	      <li class="mb-1">
	        <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">
	          상품관리
	        </button>
	        <div class="collapse" id="orders-collapse">
	          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
	            <li><a href="#" class="link-dark rounded">상품등록 및 수정</a></li>
	          </ul>
	        </div>
	      </li>
	      <li class="mb-1">
	        <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">
	          주문관리
	        </button>
	        <div class="collapse" id="orders-collapse">
	          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
	            <li><a href="#" class="link-dark rounded">신규주문</a></li>
	            <li><a href="#" class="link-dark rounded">배송중인 주문</a></li>
	            <li><a href="#" class="link-dark rounded">완료된 주문</a></li>
	          </ul>
	        </div>
	      </li>	      
	      <li class="border-top my-3"></li>
	      <li class="mb-1">
	        <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">
	          Account
	        </button>
	        <div class="collapse" id="account-collapse">
	          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
	            <li><a href="#" class="link-dark rounded">회원정보 관리</a></li>
	          </ul>
	        </div>
	      </li>
	    </ul>
	    
	    <!-- 모달 시작 -->	
		<!-- Button trigger modal -->
		<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
		  게시글 작성
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
	    
	  </div>
	  <!-- 사이드 바 종료 -->