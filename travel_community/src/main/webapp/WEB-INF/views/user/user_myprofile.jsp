<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����� ����</title>

<style>
.table-wrapper {
  width: 600px;        /* ���̺� ���� ũ�� */
  height: 600px;       /* ���̺� ���� ũ�� */
  overflow: auto;      /* ������ ��ġ�� ��ũ�� */
  margin: 0 auto;      /* ��� ���� */
}

.custom-table {
  width: 100%;
  height: 100%;
  table-layout: fixed;
}
</style>

</head>
<body>

  <jsp:include page="../../include/header.jsp" />

  <div  class="text-center mt-5">
    <h2>${UserProfile.name }�� ����</h2>
  </div>

  <c:set value="${UserProfile }" var="user" />

  <div class="table-wrapper mt-3">
    <form method="post" action="#">
      <table class="table table-borderless table-hover custom-table">
        <tr>
          <th>�� ��</th>
          <td><input class="form-control" value="${user.name }" readonly></td>
        </tr>
        <tr>
          <th>�̸���</th>
          <td><input class="form-control" value="${user.email }" readonly></td>
        </tr>
        <tr>
          <th>��ȭ��ȣ</th>
          <td><input class="form-control" value="${user.phone }" readonly></td>
        </tr>
        <tr>
          <th>�г���</th>
          <td><input class="form-control" value="${user.nickname }"></td>
        </tr>
        <tr>
          <th>��������</th>
          <td><input class="form-control" value="${user.created_at }" readonly></td>
        </tr>
      </table>

      <div class="text-center">
        <input type="submit" value="�����ϱ�" class="btn btn-primary me-2">
        <input type="button" onclick="history.back()" value="���" class="btn btn-secondary me-2">
        <input type="button" onclick="#" value="ȸ�� Ż��" class="btn btn-danger">
      </div>
    </form>
  </div>

</body>
</html>
