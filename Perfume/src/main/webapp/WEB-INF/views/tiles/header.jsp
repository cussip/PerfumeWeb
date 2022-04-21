<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<header style="margin: 80px 0 80px 0">
  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark" style="height:80px">
    <div class="container-fluid">
    
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
		      <li><a class="dropdown-item" href="#">40ml</a></li>
		      <li><a class="dropdown-item" href="#">Curation</a></li>
		      <li><a class="dropdown-item" href="#">GOODS</a></li>
		    </ul>
		  </li>
          
          <li class="nav-item">
            <a class="header-menu-text nav-link" aria-current="page" href="#">ABOUT</a>
          </li>
          <li class="nav-item">
            <a class="header-menu-text nav-link" aria-current="page" href="/event/event">EVENT</a>
          </li>
        </ul>
       </div>

      <!-- 브랜드 부분 -->
      <div class="col-md-4" align="center" >
      	<a class="navbar-brand" href="/" style="font-weight: bold; font-size: 24pt;">PERFUME</a>
      </div>
      
		<!-- 우층 메뉴 영역 -->
	  <div class="col-md-4">	
        <ul class="navbar-nav me-auto mb-2 mb-md-0 justify-content-md-center">
          <li class="nav-item my-icon">
            <a class="nav-link" aria-current="page" href="#">
            	<i class="header-icon bi bi-person-circle"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="#">
				<i class="header-icon bi bi-minecart"></i>
			</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</header>