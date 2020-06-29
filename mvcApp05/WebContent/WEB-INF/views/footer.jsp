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

<style type="text/css">
	
	body
	{
		margin:0px;
	
	}
	.footer
	{
		display: flex;
		justify-content: space-around;
		align-items: center;
		align-content:center;
		background-color: #4da9ff;
		width: 100%;
		height: 80px;
	
	}

	.footer *
	{
		color:white;
	
	}


</style>
</head>
<body>

	<div class="footer">
	
		
		<div class="footer_list">
			
				<span>@banana corp.</span>
			
		</div>
	
	</div>



</body>
</html>