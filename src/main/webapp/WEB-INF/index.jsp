<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>
</head>
<body>

<h1>Envatours</h1>

<h2>Welcome, <c:out value="${user.firstName }"/>, Below are your account details</h2> <a href="/logout">Logout</a>


<a href="/edit/user/${user.id}">Edit My profile</a>

<%-- <c:forEach items="${allTasks}" var="task">
<h4><a href="/task/${task.id }"><c:out value="${task.firstName}"/></a></h4>
<p>Assigned To:<c:out value="${task.user.name }"></c:out></p>
<p>Priority Level:<c:out value="${task.priority.name}"></c:out></p>

</c:forEach> --%>

</body>
</html>