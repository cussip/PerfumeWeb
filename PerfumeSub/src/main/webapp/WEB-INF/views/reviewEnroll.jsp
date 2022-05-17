<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>	

</head>
<body>

<div class="wrapper_div">
		<div class="subject_div">
			리뷰 등록
		</div>
		
		<div class="input_wrap">			
			
			<div class="content_div">
				<h4>${name}의 리뷰</h4>
				<textarea name="content"></textarea>
			</div>
			
		</div>
		
		<div class="btn_wrap">
			<a class="cancel_btn">취소</a>&nbsp;&nbsp;&nbsp;&nbsp;
			<a class="enroll_btn">등록</a>
		</div>
		
	</div>
			
	<script>
	
	/* 취소 버튼 */
	$(".cancel_btn").on("click", function(e){
		window.close();
	});	
	
	/* 등록 버튼 */
	$(".enroll_btn").on("click", function(e){
		
		const writerId = '${id}';
		const content = $("textarea").val();
		
		const data = {
				writerId : writerId,
				content  : content
		}
								
		$.ajax({
			
				data : data,
				type : 'POST',
				url : '/review/enroll',
				success : function(result){
						window.close();
				}
		
		});
		
	});
	
	</script>			
			

					
</body>
</html>