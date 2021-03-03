<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
   
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Page</title>
</head>
<body>
    <h1>Register!</h1>
    
    <p><form:errors path="user.*"/></p>
    
    <form:form method="POST" action="/registration" modelAttribute="user">
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
<%--         <p>
        <form:label path="birthday">Birthday: </form:label>
        <form:errors path="birthday"/>
        <form:input  type="date" path="birthday"/>
    	</p> --%>
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
<!--     			<option value="sales">Sales Staff</option>
    			<option value="office">Office Staff</option>
    			<option value="tourGuide">Tour Guide</option>
    			<option value="captain">Operations Staff</option> -->
    			<c:forEach items="${sections}" var="s">
					<form:option value="${s}">
						<c:out value="${s.name}"></c:out>
					</form:option>
				</c:forEach>
    	</form:select>
    	</p>
        <p>
            <form:label path="password">Password:</form:label>
            <form:password path="password"/>
        </p>
        <p>
            <form:label path="passwordConfirmation">Password Confirmation:</form:label>
            <form:password path="passwordConfirmation"/>
        </p>
        <input type="submit" value="Register!"/>
    </form:form>
    <h1>Login</h1>
    <p><c:out value="${error}" /></p>
    <form method="post" action="/login">
        <p>
            <label for="email">Email</label>
            <input type="text" id="email" name="email"/>
        </p>
        <p>
            <label for="password">Password</label>
            <input type="password" id="password" name="password"/>
        </p>
        <input type="submit" value="Login!"/>
    </form>
</body>
</html>