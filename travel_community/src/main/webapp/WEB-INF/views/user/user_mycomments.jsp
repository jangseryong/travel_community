<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="../../include/header.jsp" />
	
	<div align="center">
	
		<h2>�� ���</h2>
		<table border="1" width="600">
		<c:set value="${myComments }" var="mycom"></c:set>
			<tr>
				<th>�Խù� ����</th>
				<th>�Խù� ����</th>
			</tr>
			
			<c:forEach items="${mycom }" var="myc">
				<tr style="background-color: lightgray">
					<td ><a href="<%=request.getContextPath()%>/post_detail.go?id=${myc.post_id}">${myc.post_title }</a></td>
					<td>${myc.post_content }
				</tr>
				
				<tr>
					<td colspan="2" style="color: red "> >>>>>��� : ${myc.content }</td>
				</tr>
					
			</c:forEach>
		
		
		</table>
		
	
	</div>

</body>
</html>