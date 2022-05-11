<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src='http://code.jquery.com/jquery-3.3.1.js'></script>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<!-- Option 1: Bootstrap Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<title>상품</title>
<style>
body{
 padding-top: 300px;
}
.inputArea { margin:10px 0; }
label { display:inline-block; width:100px; padding:5px; }
input { width:150px; }

</style>
</head>
<body>
<div class= "container">
<div class="row" style="justify-content: center;">
<div class="col-sm-12">
<form role="form" method="post" autocomplete="off">
<div class="inputArea">
 <label for="ProductName">아이디</label>
 <input type="text" id="product_id" name="product_id" />
</div>

<div class="inputArea">
 <label for="ProductName">상품명</label>
 <input type="text" id="Name" name="Name" />
</div>
<div class="inputArea">
 <label for="ProductBrand">브랜드</label>
 <input type="text" id="brand" name="brand" />
</div>

<div class="inputArea">
 <label for="ProducPrice">40ml</label>
 <input type="text" id="price" name="price" />
</div>
<div class="inputArea">
 <label for="ProducPrice">60ml</label>
 <input type="text" id="price2" name="price2" />
</div>
<div class="inputArea">
 <label for="ProducPrice">120ml</label>
 <input type="text" id="price3" name="price3" />
</div>
<div class="inputArea">
 <label for="Source1">탑노트</label>
 <input type="text" id="source1" name="source1" />
</div>
<div class="inputArea">
 <label for="Source2">미들노트</label>
 <input type="text" id="source2" name="source2" />
</div>
<div class="inputArea">
 <label for="Source3">베이스노트</label>
 <input type="text" id="source3" name="source3" />
</div>




<div class="inputArea">
 <button type="submit" id="register_Btn" class="btn btn-primary">등록</button>
</div>

</form>
</div>
</div>
</div>

</body>
</html>