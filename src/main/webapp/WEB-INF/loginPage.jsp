<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
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
<link rel=" icon" href="/img/sailing-boat-black-symbol_icon-icons.com_57916.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet"> 
</head>
<body class="text-center">
<main class="form-signin">
    <h1 class="h3 mb-3 fw-normal"></h1>
    <p><c:out value="${error}" /></p>
    <form method="post" action="/login">
    <img class="mb-4" src="/logo-enva-2.png" alt="" width="auto" height="auto">
        <p>
            <label for="email"class="visually-hidden">Email</label>
            <input id="inputEmail" class="form-control" placeholder="Email address" required autofocus type="email" id="email" name="email"/>
        </p>
        <p>
            <label for="password"  class="visually-hidden">Password</label>
            <input type="password" id="password" name="password"  class="form-control" placeholder="Password" required/>
        </p>
        <button type="submit" class="btn btn-primary" value="Login">Submit</button>
    </form>
    <h3 class="mt-4"><a class="notreg" href="/registration">Not registered? Sign up here!</a></h3>
<!--      <main class="form-signin">
    <form>
      
      
      <label for="inputEmail" >Email address</label>
      <input type="email" >
      <label for="inputPassword">Password</label>
      <input type="password" id="inputPassword">
      <div class="checkbox mb-3">
        <label>
          <input type="checkbox" value="remember-me"> Remember me
        </label>
      </div>
      <button type="submit">Sign in</button>
      <p class="mt-5 mb-3 text-muted">&copy; 2017–2021</p>
    </form><!--  -->
    <p class="mt-5 mb-3 text-muted">&copy; 2017–2021</p>
  </main>
  </body>
</html>