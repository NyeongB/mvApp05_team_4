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
		
		$(".addBtn").click(function()
		{
			alert("1");
			//location.href ='/mvcApp05/WEB-INF/views/MemberAddForm.jsp';
			location.href ='memberaddform.action';
			//$(location).attr("href","MemberAddForm.jsp")
			
			
		});	
		
		
	});
	
</script>

</head>
<body>


	<div>
		<jsp:include page="Header.jsp"></jsp:include>
	</div>
	
	
	<div class="content">
	
		<div class="col-md-2">
		</div>
			
			
		<div class="col-md-8">
			<div>
				<h3> 학생 관리 </h3>							
			</div>
			<div><button type="button" class="form-control btn-info addBtn">추가</button></div>
			<br />
			<table class="table table-striped">
				<tr>
					<th>아이디</th>
					<th>패스워드</th>
					<th>이름</th>
					<th>전화번호</th>
					<th>이메일</th>

					<th>수정</th>
					<th>삭제</th>
				</tr>
				<c:forEach var="member" items="${memberList }">
					<tr>
						<td>${member.id }</td>
						<td>${member.pw }</td>
						<td>${member.name }</td>
						<td>${member.tel }</td>
						<td>${member.email }</td>
						<td><button type="button" class="form-control btn-info updateBtn">수정</button></td>
						<td><button type="button" class="form-control btn-info deleteBtn">삭제</button></td>
					</tr>
				</c:forEach>
			</table>
			
		</div>
			
		<div class="col-md-2">
		</div>
	
	</div>
	
	<div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	

</body>
</html>