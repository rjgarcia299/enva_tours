<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="robots" content="index, follow">
<title>Profile Page</title>
<link rel=" icon" href="css/sailing-boat-black-symbol_icon-icons.com_57916.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet"> 
  <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/sticky-footer-navbar/">
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
  <link href="sticky-footer-navbar.css" rel="stylesheet">
</head>
<main>
    <nav class="navbar navbar-expand-md navbar-dark bg-dark">
      <div class="container-fluid">
      <img src="/logo-enva-2.png" height="33">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
          aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav me-auto mb-2 mb-md-0">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="/index">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/logout">Log Out</a>
            </li>
          </ul>
          <form class="d-flex">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Search</button>
          </form>
        </div>
      </div>
    </nav>
    <div class="container mt-5">
    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="https://mdbootstrap.com/img/Photos/Slides/img%20(35).jpg" class="d-block w-100" alt="Image 1">
        </div>
        <div class="carousel-item">
          <img src="https://mdbootstrap.com/img/Photos/Slides/img%20(33).jpg" class="d-block w-100" alt="Image 2">
        </div>
        <div class="carousel-item">
          <img src="https://mdbootstrap.com/img/Photos/Slides/img%20(31).jpg" class="d-block w-100" alt="Image 3">
        </div>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
   	 </div>
     </div>
      <h2 class="mt-5" ><c:out value="${section.name } -Managed by ${section.lead.firstName }"/></h2>
      <table class="table">
	  <thead>
	    <tr>
	      <th scope="col">Employee #</th>
	      <th scope="col">First Name</th>
	      <th scope="col">Last Name</th>
	      <th scope="col">Email</th>
	      <th scope="col">Section</th>
	      <th scope="col">Phone Number</th>
	    </tr>
	  </thead>
	  <tbody>
	    <c:forEach items="${sectionUsers}" var="user">
	    <tr>
	      <td><a href="profile/${user.id}">${user.id}</a></td>
	      <td>${user.firstName}</td>
	      <td>${user.lastName}</td>
	      <td>${user.email}</td>
	      <td>${user.current_section.name}</td>
	      <td>${user.phoneNumber}</td>
		</tr>
		</c:forEach>
	  </tbody>
	</table>
 </main>
  <footer class="footer mt-auto py-3 bg-light">
    <div class="container">
      <span class="text-muted">&copy; 2017???2021</span>
    </div>
  </footer>
</body>
</html>