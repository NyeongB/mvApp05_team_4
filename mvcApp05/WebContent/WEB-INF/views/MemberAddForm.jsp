<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	//필터 쓰기 전까지 사용하기
	request.setCharacterEncoding("utf-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type ="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css"
	href="<%=cp%>/css/bootstrap.min.css">
<script type="text/javascript"
	src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="<%=cp%>/js/bootstrap.min.js"></script>

<script type="text/javascript">
	
	$(function()
	{
		$(".jungbok").click(function()
		{
			
			
			
			
			
		});
		
		
		
		
	});
	
	


</script>

	

</head>
<body>


	
	<div>
		<jsp:include page="Header.jsp"></jsp:include>
	</div>
	
	
	<div class="contet">
	
		<div class="col-md-2">
		</div>
			
			
		<div class="col-md-8">
			<div>
				<h3> 학생추가 </h3>							
			</div>
			
				<form action="memberadd.action" class="form">
				
				<div class="input-group">
					아이디  <input type="text" name="id" class="form-control" />
					<div class="input-group-append">
						<button type="button" class="form-control btn-info jungbok" >중복확인</button>
					</div>
				</div>
				
				<div class="form-group">
					패스워드  <input type="text"  name="pw" class="form-control" />
				</div>
				<div class="form-group">
					이름  <input type="text"  name="name" class="form-control" />
				</div>
				<div class="form-group">
					전화번호  <input type="tel" name="tel" class="form-control" />
				</div>
				<div class="form-group">
					이메일  <input type="email" name="email" class="form-control" />
				</div>				
					
					<br /><br />
					<button type="submit" class="form-control btn-info addBtn">추가</button>
					<button type="button" class="form-control btn-info cancelBtn">취소</button>
				</form>
		</div>
			
		<div class="col-md-2">
		</div>
	
	</div>
	
	<div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>



</body>
</html>