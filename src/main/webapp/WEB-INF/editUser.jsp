<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit User</title>
</head>
<body>

<h1>Edit <c:out value="${user.firstName}"></c:out></h1>

<form:form action="/edit/user/${id}" method="post" modelAttribute="user">

<form:label path="sections">Section</form:label>
<form:select path="sections">
<c:forEach items="${sections }" var="sec">
<form:option value="${sec.id}">${sec.name }</form:option>
</c:forEach>
</form:select>
<p>
            <form:label path="firstName">First name:</form:label>
            <form:input type="firstName" path="firstName"/>
        </p>
        <p>
            <form:label path="lastName">Last name:</form:label>
            <form:input type="lastName" path="lastName"/>
        </p>
        <p>
            <form:label path="email">Email:</form:label>
            <form:input type="email" path="email" placeholder="youremail@email.com"/>
        </p>
    	<p>
            <form:label path="phoneNumber">Phone Number:</form:label>
            <form:input type="phone" path="phoneNumber" placeholder="(123)456-7899" />
        </p>
        <p>
        <form:select path="gender">
    		<option disabled selected>Select a Gender</option>
    			<option value="male">Male</option>
    			<option value="female">Female</option>
    	</form:select>
    	</p>
    	<p>
        <form:select path="current_section">
    		<option value="" disabled selected>Select a Position</option>
    			<c:forEach items="${sections}" var="s">
					<form:option value="${s}">
						<c:out value="${s.name}"></c:out>
					</form:option>
				</c:forEach>
    	</form:select>
    	</p>
<p>
 <input type="submit" value="Submit"/>
</p>
</form:form>
</body>
</html>