<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@	taglib	prefix="c"		uri="http://java.sun.com/jsp/jstl/core" %>
<%@	taglib	prefix="fmt"	uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%	request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>CART</title>
 <script src="https://code.jquery.com/jquery-3.6.0.js"></script> 
<!-- jQuery  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<style>
	.input_size_20{
		width:20px;
		height:20px;
	}
	.all_check_input{
		margin: 18px 0 18px 18px;
	}
	.all_chcek_span{
		
    	font-size: 20px;
    	font-weight: bold;		
	}
</style>
</head>

<body>
<div class="container-fluid">
<br>
<h1 align="center">Cart.</h1><br><br>
	<!-- 체크박스 전체 여부 -->
	<div class="all_check_input_div">
		<input type="checkbox" class="all_check_input input_size_20" id="cbx_chkAll" checked="checked"/><span class="all_chcek_span">전체선택/해제</span>
	</div>

       
<table class="table table-hover" >
   <tr class="active">
   	  <th>&nbsp;</th>   
      <th><p class="text-center">상&nbsp;품&nbsp;명</p></th>
      <th><p class="text-center">단&nbsp;가</p></th>
      <th><p class="text-center">수&nbsp;량</p></th>
      <th><p class="text-center">금&nbsp;액</p></th>
      <th>&nbsp;</th>
   </tr>
     <!-- list출력하기 위해 forEach문을 사용해 ci라는 변수에 넣는다. -->
    <c:forEach var="ci" items="${cartInfo}">
    <tr align="center">
         <td class ="cart_info_td">
             <input type="checkbox" class="individual_cart_checkbox input_size_20" name="chk" checked="checked">
      		 <input type="hidden" class="individual_Price_input" value="${ci.price}">
			 <input type="hidden" class="individual_count_input" value="${ci.product_count}">
			 <input type="hidden" class="individual_totalPrice_input" value="${ci.price * ci.product_count}">
			 <input type="hidden"  name="cart_id" value="${ci.cart_id}">
         </td>
         <td height="150px" align="center" valign="middle">
         	<img src="${ci.image}" width=120px height="120px" align="left" />
         	<p class="text-center">${ci.name}</p>    	
      	</td>      
         <td>
         	<fmt:formatNumber value="${ci.price}"
                 pattern="#,###,### 원" />
          </td>
                 <!-- fmt:formatNumber 태그는 숫자를 양식에 맞춰서 문자열로 변환해주는 태그이다 -->
                 <!-- 여기서는 금액을 표현할 때 사용 -->
                 <!-- ex) 5,000 / 10,000 등등등-->
                 
         <td><input type="number" name="product_count" 
             style="width:45px;"
             value="<fmt:formatNumber value="${ci.product_count}"
                 pattern="#,###,###" />">
                <a class="quantity_modify_btn" data-cart_id="${ci.cart_id}">
                	<button type="button" class="btn btn-primary btn-sm">변경</button>
                </a>        
         </td>
         <td>
         	<fmt:formatNumber value="${ci.price * ci.product_count}"
                 pattern="#,###,### 원" />
        </td>
         <td>
         	<button type="button" class="btn btn-warning btn-sm" id="delete_btn" data-cart_id="${ci.cart_id}">삭제</button>
         </td>
    </tr>
    </c:forEach>
</table>
<br><br><br><br>
<p> 상품가격 30,000원이상시 무료배송입니다.</p>
<table class="table table-striped" >
	<tr>
		<th><p class="text-center">총 상품수량</p></th>
		<th></th>
		<th>총 상품가격</th>
		<th></th>
		<th>배&nbsp;송&nbsp;비</th>
		<th></th>
		<th>최종 결제금액</th>
	</tr>
	<tr>
		<td align="center"><span class="totalCount_span"></span> 개</td>
		<td><span class=""></span></td>
		<td><span class="totalPrice_span"></span>원</td>
		<td><span class="glyphicon glyphicon-plus"></span></td>
		<td><span class="delivery_price"></span>원</td>
		<td><span class="glyphicon glyphicon-arrow-right"></span></td>
		<td><span class="finalTotalPrice_span"></span> 원</td>
	</tr>
</table>
<p><button type="button" class="btn btn-primary btn-block">주문하기</button></p>

	<!-- 수량 조정 form -->
	<form action="/cart/update" method="post" class="quantity_update_form">
		<input type="hidden" name="cart_id" class="update_cart_id">
		<input type="hidden" name="product_count" class="update_product_count">
		<input type="hidden" name="id" value="${member.id}">
	</form>	
	
	<!-- 삭제 form -->
	<form action="/cart/delete" method="post" class="quantity_delete_form">
		<input type="hidden" name="cart_id" class="delete_cart_id">
		<input type="hidden" name="id" value="${member.id}">
	</form>
</div>
<script>
$(document).ready(function(){
	
	/* 종합 정보 섹션 정보 삽입 */
	setTotalInfo() ;
	
});

/* 체크여부에따른 종합 정보 변화 */
$(".individual_cart_checkbox").on("change", function(){
	/* 총 주문 정보 세팅(배송비, 총 가격, 마일리지, 물품 수, 종류) */
	setTotalInfo($(".cart_info_td"));
});

//체크박스 전체선택 해제
$(document).ready(function() {
	$("#cbx_chkAll").click(function() {
		if($("#cbx_chkAll").is(":checked")) $("input[name=chk]").prop("checked", true);
		else $("input[name=chk]").prop("checked", false);
		setTotalInfo($(".cart_info_td"));
	});
	
	
	$("input[name=chk]").click(function() {
		var total = $("input[name=chk]").length;
		var checked = $("input[name=chk]:checked").length;
		
		if(total != checked) $("#cbx_chkAll").prop("checked", false);
		else $("#cbx_chkAll").prop("checked", true); 
	});
	setTotalInfo($(".cart_info_td"));
	
});


/* 총 주문 정보 세팅(배송비, 총 가격, 마일리지, 물품 수, 종류) */
function setTotalInfo(){
	
	let totalPrice = 0;				// 총 가격
	let totalCount = 0;				// 총 갯수
	let deliveryPrice = 0;			// 배송비
	let finalTotalPrice = 0; 		// 최종 가격(총 가격 + 배송비)
	
	$(".cart_info_td").each(function(index, element){
		if($(element).find(".individual_cart_checkbox").is(":checked") == true){	//체크여부
			
		// 총 가격
		totalPrice += parseInt($(element).find(".individual_totalPrice_input").val());
		// 총 갯수
		totalCount += parseInt($(element).find(".individual_count_input").val());
		}
	});
	
	/* 배송비 결정 */
	if(totalPrice >= 30000){
		deliveryPrice = 0;
	} else if(totalPrice == 0){
		deliveryPrice = 0;
	} else {
		deliveryPrice = 3000;	
	}

	/* 최종 가격 */
	finalTotalPrice = totalPrice + deliveryPrice;

	/* 값 삽입 */
	// 총 가격
	$(".totalPrice_span").text(totalPrice.toLocaleString());
	// 총 갯수
	$(".totalCount_span").text(totalCount);

	// 배송비
	$(".delivery_price").text(deliveryPrice);	
	// 최종 가격(총 가격 + 배송비)
	$(".finalTotalPrice_span").text(finalTotalPrice.toLocaleString());
}
	
	/* 수량 수정 버튼 */
	$(".quantity_modify_btn").on("click", function(){
		let cart_id = $(this).data("cart_id");
		let product_count = $(this).parent("td").find("input").val();
		$(".update_cart_id").val(cart_id);
		$(".update_product_count").val(product_count);
		$(".quantity_update_form").submit();	
	});
	
	/* 장바구니 삭제 버튼 */
	$(".btn-warning").on("click", function(e){
		e.preventDefault();
		const cart_id = $(this).data("cart_id");
		$(".delete_cart_id").val(cart_id);
		$(".quantity_delete_form").submit();
	});
	
</script>

</body>
</html>