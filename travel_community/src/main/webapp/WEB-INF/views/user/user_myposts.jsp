<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<jsp:include page="../../include/header.jsp" />
	
	<div align="center">
		<c:set var="posts" value="${myPosts }" />
		<h2>���� �ۼ��� �Խù� </h2>
		
		<table border="1" width="800">
			<tr>
				<th>����</th>
				<th>����</th>
				<th>����</th>
				<th>�ۼ�����</th>
			</tr>
			
				<c:forEach items="${posts}" var="post">
					<tr>
						<td> ${post.city_id } </td>
						<td><a href="<%=request.getContextPath()%>/post_detail.go?id=${post.id}">${post.title }</a></td>
						<td> ${post.content } </td>
						<td> ${post.created_at} </td>
					</tr>
				</c:forEach>
				
				<c:if test="${empty posts }">
					<tr>
						<th colspan="5"> �˻��� �Խù��� �����ϴ�!!</th>
					</tr>
				</c:if>
		</table>
	</div>
	<br><br>
	<div align="center">
		<form method="get" action="<%= request.getContextPath() %>/myposts_search.go">
			<input name="myposts_search" placeholder="���� or ����">
			<input type="submit" value="�˻�">
		
		</form>
	
	
	
	</div>

</body>
</html>