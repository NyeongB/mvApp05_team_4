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
				<h3> 학생정보수정 </h3>							
			</div>
			<div class="form-group">
			<form action="">
				아이디<input type="text" class="form-control"/>
				패스워드<input type="password" class="form-control"/>
				이름<input type="text" class="form-control"/>
				전화번호<input type="tel" class="form-control"/>
				이메일<input type="email" class="form-control"/>
				<br />
			</form>	

			</div>
			<div class="form-group">
			
				<div class="col-md-2"></div>
				<div class="col-md-4">
					<button type="button" class="form-control btn-info updateBtn">수정</button>
				
				</div>
				<div class="col-md-4">
					<button type="button" class="form-control btn-info deleteBtn">삭제</button>	
				</div>
				<div class="col-md-2"></div>
				<br />
			</div>
					
		
		</div>
		<br />
			
		<div class="col-md-2">
		</div>
	
	</div>
	
	<div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	


</body>
</html>