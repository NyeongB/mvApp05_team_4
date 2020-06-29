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
	
	<div class="content">
	
	
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="row">
						<div class="col-md-2">
						</div>
						<div class="col-md-8">
							<div>
								<h3> 전체 학생 리스트 </h3>
							
							</div>
							<table class="table table-striped">
								<tr>
									<th>아이디</th>
<<<<<<< HEAD
									
=======
>>>>>>> branch 'master' of https://github.com/NyeongB/mvApp05_team_4.git
									<th>이름</th>
									<th>전화번호</th>
									<th>이메일</th>
									<th>국어점수</th>
									<th>영어점수</th>
									<th>수학점수</th>
									<th>총점</th>
									<th>평균</th>
								</tr>
								
								<c:forEach var="member" items="${memberList }">
								<tr>
									<td>${member.id }</td>
									
									<td>${member.name }</td>
									<td>${member.tel }</td>
									<td>${member.email }</td>
									<td>${member.kor }</td>
									<td>${member.eng }</td>
									<td>${member.mat }</td>
									<td>${member.tot }</td>
									<td>${member.avg }</td>
								</tr>
								</c:forEach>
							</table>
											
						</div>
						<div class="col-md-2">
						</div>
					</div>
				</div>
			</div>
		</div>	
	
	</div>
	

	<div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	
	
	
	

</body>
</html>