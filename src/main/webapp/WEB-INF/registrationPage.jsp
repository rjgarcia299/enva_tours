<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
   
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

  <style>
    .bd-placeholder-img {
      font-size: 1.125rem;
      text-anchor: middle;
      -webkit-user-select: none;
      -moz-user-select: none;
      user-select: none;
    }

    @media (min-width: 768px) {
      .bd-placeholder-img-lg {
        font-size: 3.5rem;
      }
    }
  </style>


  <!-- Custom styles for this template -->
  <link href="css/signin.css" rel="stylesheet">
<meta charset="UTF-8">
<title>Login Page</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet"> 
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>
<body class="text-center">
<main class="form-signin">
    <img class="mb-3" src="/logo-enva-2.png" alt="" width="auto" height="auto">
	<h2>Welcome, please register</h2>
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
        <button type="submit" value="Register">Register</button>
    </form:form>
    <h3 class="mt-5"><a class="notreg" href="/login">Already registered? Sign in here!</a></h3>
         <p class="mt-5 mb-3 text-muted">&copy; 2017–2021</p>
  </main>
</body>
</html>