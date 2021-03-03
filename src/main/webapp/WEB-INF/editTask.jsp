<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Task</title>
</head>
<body>

<h1>Edit <c:out value="${task.name }"></c:out></h1>

<form:form action="/edit/task/${id}" method="post" modelAttribute="task">
 
 <p>
<form:label path="name">Task:</form:label>
<form:errors path="name"></form:errors>
<form:input path="name"></form:input>
</p>
<form:label path="user">Assignee</form:label>
<form:select path="user">
<c:forEach items="${users }" var="user">
<form:option value="${user}">${user.name }</form:option>
</c:forEach>
</form:select>
<form:label path="priority">Priority</form:label>
<form:select path="priority">
<c:forEach items="${priorities }" var="priority">
<form:option value="${priority}">${priority.name }</form:option>
</c:forEach>
</form:select>
<p>
 <input type="submit" value="Submit"/>
</form:form>

</body>
</html>