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
				
				<div class="event-menu col-lg-2" align="right">
					<button class="btn" name="type" value="1">
						진행중인 이벤트
					</button>
				</div>
				
				<div class="event-menu col-lg-auto" align="center">
					<button class="btn" name="type" value="2">
						당첨자 발표
					</button>
				</div>			
				
				<div class="event-menu col-lg-2" align="left">
					<button class="btn" name="type" value="3">
						종료된 이벤트
					</button>
				</div>
			
			</div>
		</div>
	</form>
	
	<c:choose>
		<c:when test="${param.type == '1' || param.type == null}">

			<br><br>
			<div class="row row-cols-1 row-cols-md-2 g-4">
			
			  <div class="col">
			    <div class="card">
			      <img src="https://w.namu.la/s/9cab35139df4171d2835f872018ad517ea1ef3ef9d7adfd15eb9ed05254c24909c9b7881548f7b31139859e3bf09bcfe32f1df29082a44b40f38d37bc47dfd69e618a3e51a38162cd90fa2cf64269128950863bea60845ebf7cca2abb8fb1b286d88f565e3723962832aa1721022cdb8" 
			      		class="card-img-top" alt="...">
			    </div>
			  </div>
			  
			  <div class="col">
			    <div class="card">
			      <img src="https://w.namu.la/s/9cab35139df4171d2835f872018ad517ea1ef3ef9d7adfd15eb9ed05254c24909c9b7881548f7b31139859e3bf09bcfe32f1df29082a44b40f38d37bc47dfd69e618a3e51a38162cd90fa2cf64269128950863bea60845ebf7cca2abb8fb1b286d88f565e3723962832aa1721022cdb8" 
			      		class="card-img-top" alt="...">			      
			    </div>
			  </div>
			  
			  <div class="col">
			    <div class="card">
			      <img src="https://w.namu.la/s/9cab35139df4171d2835f872018ad517ea1ef3ef9d7adfd15eb9ed05254c24909c9b7881548f7b31139859e3bf09bcfe32f1df29082a44b40f38d37bc47dfd69e618a3e51a38162cd90fa2cf64269128950863bea60845ebf7cca2abb8fb1b286d88f565e3723962832aa1721022cdb8" 
			      		class="card-img-top" alt="...">			     
			    </div>
			  </div>
			  
			  <div class="col">
			    <div class="card">
			      <img src="https://w.namu.la/s/9cab35139df4171d2835f872018ad517ea1ef3ef9d7adfd15eb9ed05254c24909c9b7881548f7b31139859e3bf09bcfe32f1df29082a44b40f38d37bc47dfd69e618a3e51a38162cd90fa2cf64269128950863bea60845ebf7cca2abb8fb1b286d88f565e3723962832aa1721022cdb8" 
			      		class="card-img-top" alt="...">			     
			    </div>
			  </div>
			  
			</div>
			
			
		</c:when>	
		
		<c:when test="${param.type == '2'}">
			<!-- content 부분 -->
			<br><br>
			<div style="border-bottom:1px solid black"></div>
			
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
		</c:when>	

		<c:when test="${param.type == '3'}">
			
			<br><br>
			<div class="row row-cols-1 row-cols-md-2 g-4">
			
			  <div class="col">
			    <div class="card">
			      <img src="https://w.namu.la/s/eb3f1a751ddb5a5d80f1b5e161c09c232e7741384eaded3c98f486866b2c6a2a97f53eb4eb7f656145dd4106a13542b4065b69ad3120feafb6358aff6d9115b1efbe50407339868160883aabdf5bac5eaf0491354b06235e797834f600a83742" 
			      		class="card-img-top" alt="...">
			    </div>
			  </div>
			  
			  <div class="col">
			    <div class="card">
			      <img src="https://w.namu.la/s/eb3f1a751ddb5a5d80f1b5e161c09c232e7741384eaded3c98f486866b2c6a2a97f53eb4eb7f656145dd4106a13542b4065b69ad3120feafb6358aff6d9115b1efbe50407339868160883aabdf5bac5eaf0491354b06235e797834f600a83742" 
			      		class="card-img-top" alt="...">			      
			    </div>
			  </div>
			  
			  <div class="col">
			    <div class="card">
			      <img src="https://w.namu.la/s/eb3f1a751ddb5a5d80f1b5e161c09c232e7741384eaded3c98f486866b2c6a2a97f53eb4eb7f656145dd4106a13542b4065b69ad3120feafb6358aff6d9115b1efbe50407339868160883aabdf5bac5eaf0491354b06235e797834f600a83742" 
			      		class="card-img-top" alt="...">			     
			    </div>
			  </div>
			  
			  <div class="col">
			    <div class="card">
			      <img src="https://w.namu.la/s/eb3f1a751ddb5a5d80f1b5e161c09c232e7741384eaded3c98f486866b2c6a2a97f53eb4eb7f656145dd4106a13542b4065b69ad3120feafb6358aff6d9115b1efbe50407339868160883aabdf5bac5eaf0491354b06235e797834f600a83742" 
			      		class="card-img-top" alt="...">			     
			    </div>
			  </div>
			  
			</div>			
		
		</c:when>
			

		
	</c:choose>
	
</main>
