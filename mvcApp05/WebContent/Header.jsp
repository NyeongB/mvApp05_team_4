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
	
	body
	{
		margin:0px;
	
	}
	.header
	{
		display: flex;
		justify-content: space-around;
		align-items: center;
		background-color: #4da9ff;
	
	}
	.nav_list
	{
		list-style: none;
		display: flex;

	
	}
	.nav_list a
	{
		padding: 10px;

	
	}
	
	.logo span
	{
		font-weight: bold;
	
	}
	.header *
	{
		color:white;
	
	}


</style>
</head>
<body>

	<div class="header">
	
		<div class="logo">
			<span>성적관리 시스템</span>
		</div>
		<div class="nav">
			<ul class="nav_list">
				<li><a>학생관리</a></li>
				<li><a>성적관리</a></li>
			</ul>
		</div>
		<div class="login">
			<span>로그인</span>
		</div>
	
	</div>



</body>
</html>