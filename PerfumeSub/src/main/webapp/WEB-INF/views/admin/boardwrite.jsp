<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<main>

<br><br><br><br><br>
<h4 style="text-align:center">공지사항 등록</h4>
<br><br>
<div class="container my-3" id="input-group">

  <form action="bwsubmit" method="post">

	<button type="submit" class="btn btn-primary">		
		저장
	</button>	
	
	<div class="input-group mb-3">
	  <span class="input-group-text">제목</span>
	  <input type="text" class="form-control" name="title">
	</div>
	
	<div class="input-group">
	  <span class="input-group-text">내용</span>
	  <textarea class="form-control" name="content" style="height: 700px"></textarea>
	</div>
	
  </form>
    
</div>

</main>