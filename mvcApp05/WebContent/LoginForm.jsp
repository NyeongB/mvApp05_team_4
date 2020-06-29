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
<title>LoginForm.jsp</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css"
	href="<%=cp%>/css/bootstrap.min.css">
<script type="text/javascript"
	src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="<%=cp%>/js/bootstrap.min.js"></script>
<style type="text/css">
#check {
	margin-left: 20px;
}
</style>



</head>
<body>

	<%-- 
<div>
 <c:import url="header.jsp"></c:import>

</div> --%>

	<div class="col-md-2"></div>
	<div class="col-md-8">
		<form action="">


			<div class="form-group">
				<label for="id" class="col-sm-2 control-label">ID</label>
				<div class="col-sm-10">
					<input type="email" class="form-control" id="id"
						placeholder="아이디를 입력하세요.">
				</div>
			</div>



			<div class="form-group">
				<label for="pw" class="col-sm-2 control-label">비밀번호</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" id="pw"
						placeholder="패스워드를 입력하세요.">
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">로그인</button>
					<button type="reset" class="btn btn-default">취소</button>
				</div>
			</div>


		</form>
	</div>

	<div class="col-md-2"></div>

	<%-- 
<div>
	<c:import url="footer.jsp"></c:import>

</div> --%>


</body>
</html>