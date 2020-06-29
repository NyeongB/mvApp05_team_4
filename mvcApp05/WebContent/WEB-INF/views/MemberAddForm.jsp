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
				<h3> 학생추가 </h3>							
			</div>
			
				<form action="memberadd.action">
					아이디  <input type="text" name="id" class="form-control" />
					패스워드  <input type="text"  name="pw" class="form-control" />
					이름  <input type="text"  name="name" class="form-control" />
					전화번호  <input type="tel" name="tel" class="form-control" />
					이메일  <input type="email" name="email" class="form-control" />
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