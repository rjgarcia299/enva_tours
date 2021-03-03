<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1><c:out value="${user.firstName }">, below is your account information</c:out></h1>


<h2>First Name:<c:out value="${user.firstName }"></c:out></h2>
<h2>Last Name:<c:out value="${user.lastName }"></c:out></h2>
<h2>Email Address:<c:out value="${user.email}"></c:out></h2>
<h2>Phone Number :<c:out value="${user.phoneNumber}"></c:out></h2>
<h2>Assigned To:<c:out value="${task.user.name }"></c:out></h2>
<h2>Created By:<c:out value="${task.user.name }"></c:out></h2>
<h2>Priority Level:<c:out value="${task.priority.name }"></c:out></h2>
<form action="/tasks/${task.id}" method="post">
    <input type="hidden" name="_method" value="delete">
    <input type="submit" value="Delete">
</form>

<a href="/edit/task/${task.id }">Edit Task</a>
<a href="/index">Back to the main Page</a>



</body>
</html>