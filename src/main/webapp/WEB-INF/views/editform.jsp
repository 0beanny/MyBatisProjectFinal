<%--
  Created by IntelliJ IDEA.
  User: parkseyoung
  Date: 12/1/23
  Time: 8:54 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Form</title>
</head>
<body>

<h1>Edit Form</h1>
<form:form modelAttribute="boardVO" action="../editok" method="post">
    <form:hidden path="seq"/>
    <table>
        <tr><td>Title:</td><td><form:input path="title"/></td></tr>
        <tr><td>Writer:</td><td><form:input path="writer"/></td></tr>
        <tr><td>Content:</td><td><form:textarea cols="50" rows="5" path="content"/></td></tr>
    </table>
    <input type="submit" value="수정하기"/>
    <input type="button" value="취소하기" onclick="history.back()"/>
</form:form>

</body>
</html>
