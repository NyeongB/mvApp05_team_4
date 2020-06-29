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

<style type="text/css">

	.login
	{
		
	
	}


	.content
	{
		width: 100%;
		height: 800px;
	
	}

</style>

</head>
<body class="login">

	<div>
		<jsp:include page="Header.jsp"></jsp:include>
	</div>
	
	
	<div class="contet">
		<div>
			<jsp:include page="LoginForm.jsp"></jsp:include>
		</div>
	
	</div>
	
	<div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	

</body>
</html>