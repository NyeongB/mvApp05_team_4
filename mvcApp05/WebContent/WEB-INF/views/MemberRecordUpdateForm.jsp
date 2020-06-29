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
<title>MemberRecordUpdateForm.jsp</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>

<div>
	<c:import url="Header.jsp"></c:import>
</div>
<br><br><br><br>
<div class="content">



<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="row">
						<div class="col-md-2">
						</div>
						<div class="col-md-8">
							<div class="form-group">
									<div class="col-md-12" >
										<div class="col-md-2"></div>
										<div class="col-md-2">
										<label>
											번호
										</label>
										</div>
										<div class="col-md-6">
										<input type="text" class="form-control" readonly="readonly"/>
										</div>
										<div class="col-md-2"></div>
									</div>
							</div>	
							<br>
							
							
							<div class="form-group">		
									<div class="col-md-12" >
										<div class="col-md-2"></div>
										<div class="col-md-2">
										<label>
											ID
										</label>
										</div>
										<div class="col-md-6">
										<input type="text" class="form-control" readonly="readonly"/>
										</div>
										<div class="col-md-2"></div>
									</div>
							</div>
							<br>
							
									
							<div class="form-group">		
									
									<div class="col-md-12" >
										<div class="col-md-2"></div>
										<div class="col-md-2">
										<label>
											이름
										</label>
										</div>
										<div class="col-md-6">
										<input type="text" class="form-control" readonly="readonly"/>
										</div>
										<div class="col-md-2"></div>
									</div>
							</div>
							<br>
							
							<div class="form-group">		
									<div class="col-md-12" >
										<div class="col-md-2"></div>
										<div class="col-md-2">
										<label>
											국어 점수
										</label>
										</div>
										<div class="col-md-6">
										<input type="text" class="form-control" readonly="readonly"/>
										</div>
										<div class="col-md-2"></div>
									</div>
							</div>
							<br>
							
							
							<div class="form-group">		
									<div class="col-md-12" >
										<div class="col-md-2"></div>
										<div class="col-md-2">
										<label>
											영어 점수
										</label>
										</div>
										<div class="col-md-6">
										<input type="text" class="form-control" readonly="readonly"/>
										</div>
										<div class="col-md-2"></div>
									</div>
							</div>
							<br>
							
							<div class="form-group">		
									<div class="col-md-12" >
										<div class="col-md-2"></div>
										<div class="col-md-2">
										<label>
											수학 점수
										</label>
										</div>
										<div class="col-md-6">
										<input type="text" class="form-control" readonly="readonly"/>
										</div>
										<div class="col-md-2"></div>
									</div>
							</div>
							<br><br>
							
							<div class="form-group">		
									<div class="col-md-12">
									<div class="col-md-2"></div>
									<div class="col-md-4">
									<button type="submit" class="btn btn-primary btn-lg btn-block">수정</button>
									</div>
									<div class="col-md-4">
									<button type="reset" class="btn btn-primary btn-lg btn-block">삭제</button>
									</div>
									<div class="col-md-2"></div>
									</div>
							</div>
							<br><br><br><br>
							
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