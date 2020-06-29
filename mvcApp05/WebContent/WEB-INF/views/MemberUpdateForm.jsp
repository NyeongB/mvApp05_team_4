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
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/bootstrap.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="<%=cp%>/js/bootstrap.min.js"></script>

<script type="text/javascript">

	$(function()
	{
		$(".updateBtn").click(function()
		{
			$("#updateForm").submit();
			
			
			
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
				<h3> 학생정보수정 </h3>							
			</div>
			<div class="form-group">
			<form action="memberupdate.action" id="updateForm">
				아이디<input type="text" class="form-control" name="id" readonly value="${member.id }"/>
				패스워드<input type="password" class="form-control" name="pw" value="${member.pw }"/>
				이름<input type="text" class="form-control" name="name" value="${member.name }"/>
				전화번호<input type="tel" class="form-control" name="tel" value="${member.tel }"/>
				이메일<input type="email" class="form-control" name="email" value="${member.email }"/>
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