<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<<<<<<< HEAD

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<div class="border-bottom">

=======
<%@	taglib	prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
>>>>>>> 6e51cc31442d52efb29696794da67eb3a0d2ceb8
<header>

  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark" >
    <div class="container-fluid my-3">
    
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <!-- 좌측 메뉴 영역 -->	
      
      <div class="header-menu-text collapse navbar-collapse col-md-4 justify-content-md-end" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <a class="header-menu-text nav-link" aria-current="page" href="#">Perfume Teller</a>
          </li>
          
		  <li class="nav-item dropdown">
		    <a class="header-menu-text nav-link dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
		    	SHOP
		    </a>	
		    <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
		      <li><a class="dropdown-item" href="/shop/40ml">40ml</a></li>
		      <li><a class="dropdown-item" href="/shop/curation">Curation</a></li>
		      <li><a class="dropdown-item" href="/shop/goods">GOODS</a></li>
		    </ul>
		  </li>
          
          <li class="nav-item">
            <a class="header-menu-text nav-link" aria-current="page" href="/perfume/about">ABOUT</a>
          </li>
          <li class="nav-item">
            <a class="header-menu-text nav-link" aria-current="page" href="/event/event">EVENT</a>
          </li>
        </ul>
       </div>

      <!-- 브랜드 부분 -->
      <div class="col-md-4" align="center" >
      	<a class="navbar-brand" href="/perfume/home" style="font-weight: bold; font-size: 24pt;">PERFUME</a>
      </div>
      
 
	  <!-- 우층 메뉴 영역 -->
	  <div class="col-md-4">	
        <ul class="navbar-nav me-auto mb-2 mb-md-0 justify-content-md-center">
	      <li class="nav-item my-icon">
            <a class="nav-link" aria-current="page" href="/admin/board">
            	<i class="header-icon bi bi-dash-circle-fill"></i>
            </a>
          </li>          
          <li class="nav-item my-icon">


            <a class="nav-link" aria-current="page" href="/member/login">          

            	<i class="header-icon bi bi-person-circle"></i>
            </a>
          </li>
                
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="/cart/${member.id}">
				<i class="header-icon bi bi-minecart"></i>
			</a>
            <!-- 로그인 하지 않은 상태 -->
			<c:if test = "${member == null }">
				<a href="/member/login">로그인</a>	
			</c:if>
			 <!-- 로그인한 상태 -->
			<c:if test="${ member != null }">
				<a href="/member/logout.do">로그아웃</a>
			</c:if>

          </li>
        
        </ul>
      </div>
    </div>
  </nav>
  <br><br>
</header>