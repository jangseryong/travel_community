<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α��� ������</title>
</head>
<body>

	<jsp:include page="../../include/header.jsp" />
	
	<h1>�α��� ������</h1>
	
	<div class="container mt-5 w-25">	
		<form method="post" action="<%=request.getContextPath()%>/user_login_ok.go">
			<div class="mt-3">
				<label for="EmailInput" class="form-label">���̵�</label>
				<input name="email" type="email" class="form-control" id="EmailInput" placeholder="��) travler@naver.com" required>
			</div>
			
			<div class="mt-3 ">
				<label for="PwdInput" class="form-label">��й�ȣ</label>
				<input name="password" type="password" class="form-control" id="PwdInput" placeholder="��й�ȣ�� �Է��ϼ���." required>
			</div>
			
			<div class="d-grid mt-3 mb-3">
				<button type="submit" class="btn btn-primary">�α���</button>
			</div>
			
			<div class="d-flex justify-content-center">
				<div class="p-2">
					<a href="#">ȸ�� ����</a>
				</div>
				<div class="p-2">
					<a href="#">���� ã��</a>
				<div class="p-1">
			</div>
		</form>
	</div>
	
</body>
</html>