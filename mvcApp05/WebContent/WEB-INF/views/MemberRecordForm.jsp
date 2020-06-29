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
							<div><button type="button" class="form-control btn-info addBtn">추가</button></div>
							<br />
							<table class="table table-striped">
								<tr>
									<th>번호</th>
									<th>ID</th>
									<th>이름</th>
									<th>국어 점수</th>
									<th>영어 점수</th>
									<th>수학 점수</th>
									<th>총점</th>
									<th>평균</th>
									<th>등수</th>
									<th>수정하기</th>
									<th>삭제하기</th>
									
									
								</tr>
								<tr>
									<td>1</td>
									<td>NickName1123</td>
									<td>홍길동</td>
									<td>50</td>
									<td>50</td>
									<td>50</td>
									<td>150</td>
									<td>50</td>
									<td>1</td>
									
									<td><button type="submit" class="btn btn-default">수정</button></td>
									<td><button type="reset" class="btn btn-default">삭제</button></td>
									
									
								</tr>
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
	<c:import url="footer.jsp"></c:import>
</div>


</body>
</html>