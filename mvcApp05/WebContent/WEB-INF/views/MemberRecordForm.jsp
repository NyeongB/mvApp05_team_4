<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberRecordForm.jsp</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

	$().ready(function() 
	{
		
		$("#recordModify").click(function() 
		{
			//alert("확인");
			//alert($(this).val());
			$(location).attr("href","memberrecordupdateform.action?id=" + $(this).val());
			
		});
		
		$("#recordDelete").click(function() 
		{
			//alert("확인");
			alert($(this).val());
					
		});
		
	});

	


</script>
</head>
<body>

<div>
	<c:import url="Header.jsp"></c:import>
</div>

<div class="content">



<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="row">
						<div class="col-md-2">
						</div>
						<div class="col-md-8">
							<div><h3>성적관리</h3></div>
						
							<br />
							<form action="">
							
								<table class="table table-striped">
								<tr>
									<th>ID</th>
									<th>이름</th>
									<th>국어 점수</th>
									<th>영어 점수</th>
									<th>수학 점수</th>
									<th>총점</th>
									<th>평균</th>
									<th>수정하기</th>
									<th>삭제하기</th>
									
									
								</tr>
								
								<c:forEach var="member" items="${memberList }">
								
								<tr>
									<td>${member.id }</td>
									<td>${member.name }</td>
									<td>${member.kor }</td>
									<td>${member.eng }</td>
									<td>${member.mat }</td>
									<td>${member.tot }</td>
									<td>${member.avg }</td>
							
																
								<td><button type="button" class="btn btn-default" id="recordModify" value="${member.id }">수정</button></td>
								<td><button type="button" class="btn btn-default" id="recordDelete" value="${member.id }">삭제</button></td>
									
									
								</tr>
								</c:forEach>
							
								
							</table>
							
							</form>
							
											
						</div>
						<div class="col-md-2">
						</div>
					</div>
				</div>
			</div>
		</div>	
</div>
<div>
	<c:import url="footer.jsp"></c:import>
</div>


</body>
</html>