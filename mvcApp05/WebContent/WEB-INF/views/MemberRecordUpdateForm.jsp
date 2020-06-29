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
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">
	
	$().ready(function() 
	{
		
		$("#modifyBtn").click(function() 
	{
			//alert("확인");
			
			$("#recordupdateForm").submit();
		})
	});

</script>
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
						
						<form action="recordupdate.action" method="post" id="recordupdateForm">
							
							<div class="form-group">		
									<div class="col-md-12" >
										<div class="col-md-2"></div>
										<div class="col-md-2">
										<label>
											아이디
										</label>
										</div>
										<div class="col-md-6">
										<input type="text" class="form-control" readonly="readonly" value=${record.id }>
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
											국어점수
										</label>
										</div>
										<div class="col-md-6">
										<input type="text" class="form-control" name="kor" value="${record.kor }">
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
											영어점수
										</label>
										</div>
										<div class="col-md-6">
										<input type="text" class="form-control" name="eng" value="${record.eng }">
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
											수학점수
										</label>
										</div>
										<div class="col-md-6">
										<input type="text" class="form-control" name="mat" value="${record.mat }">
										</div>
										<div class="col-md-2"></div>
									</div>
							</div>
							<br><br>
							
							<div class="form-group">		
									<div class="col-md-12">
									<div class="col-md-2"></div>
									<div class="col-md-4">
									<button type="button" class="btn btn-primary btn-lg btn-block" id="modifyBtn">수정</button>
									</div>
									<div class="col-md-4">
									<button type="reset" class="btn btn-primary btn-lg btn-block" >취소</button>
									</div>
									<div class="col-md-2"></div>
									</div>
							</div>
						
						</form>
							
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