<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!doctype html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" >
		
	<!-- CSS파일 -->		
	<link rel="stylesheet" href="/css/main.css" type="text/css"/>	
	
	<!-- 부트스트랩 아이콘 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
	
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
	<meta name="generator" content="Hugo 0.88.1">
	<title><tiles:getAsString name="title"/></title>
   
	<style>
		.bd-placeholder-img {
		  font-size: 1.125rem;
		  text-anchor: middle;
		  -webkit-user-select: none;
		  -moz-user-select: none;
		  user-select: none;
		}
		
		@media (min-width: 768px) {
		  	.bd-placeholder-img-lg {
		    	font-size: 3.5rem;
		  	}
		  	.header-menu-left {
		  		display: none;
		  	}
		}
		
		@media (max-width: 768px){
		  	.my-icon {
		  		display: none;
		  	}

		}
		
		.dropdown:hover .dropdown-menu {
		    display: block;
		    margin-top: 0;
		}
		
		.notice-icon {
			font-size: 50pt;
		}
		
		.notice-icon-text {
			font-weight: bold;
		}
		
		.event-menu {
			color: grey;
			font-size: 9pt;
			
		}
		.event-menu:hover {
			color: black;
		}
		
		.header-icon {
			font-size: 15pt
		}
		
		.header-menu-text {
			font-size: 9pt;
		}
		
		footer li {
			font-size: 9pt;
		}
		
		footer h6 {
			color: white;
			font-size: 10pt;
			font-weight: bold;
		}
		
		.dropdown-item {
			font-size: 9pt;
		}
		
	</style>
</head>

<body>

	<!-- header 부분 -->
	<tiles:insertAttribute name="header"/>
	
	<!-- main 부분 -->
	<tiles:insertAttribute name="body"/>
	
	<!-- footer 부분 -->
	<tiles:insertAttribute name="footer"/>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" 
		crossorigin="anonymous"></script>
		  
</body>

</html>
