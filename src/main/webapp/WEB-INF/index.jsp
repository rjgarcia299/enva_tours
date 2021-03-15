<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html id="dashboard">
<head>
<meta charset="utf-8">
<meta name="robots" content="index, follow">
<title>Dashboard</title>
<link rel=" icon" href="css/sailing-boat-black-symbol_icon-icons.com_57916.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet"> 
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet"/>
  <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/sticky-footer-navbar/">
  <!-- Bootstrap core CSS -->
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
  <link href="sticky-footer-navbar.css" rel="stylesheet">
</head>
<body class="d-flex flex-column h-100">

  <header>
    <!-- Fixed navbar -->
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark ">
      <div class="container-fluid">
      <img src="/logo-enva-2.png" height="33">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
          aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav me-auto mb-2 mb-md-0">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#">Home</a>
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
  </header>

  <!-- Begin page content -->
  <main class="flex-shrink-0">
    <div class=container-fluid>
      <h2 class="mt-5">Welcome to the team, <c:out value="${user.firstName }!"/></h2>
		<div class="card-group my-4">
		<c:forEach items="${allSections}" var="sec">
      		<div class="card" >
		        <img src="${sec.imageUrl}" class="card-img-top" alt="...">
		        <div class="card-body">
		          <h5 class="card-title"><a href="/section/${sec.id}">${sec.name}</a></h5>
		          <p class="card-text">${sec.description}</p>
		          <div class="text-center">
		        	  <img src="img/outline_groups_black_24dp.png">
		          </div>
		          <p class="h6">Team leader:${sec.lead.firstName} ${sec.lead.lastName}</p>
		          <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
      			</div>
      			</div>
       		 </c:forEach>
       		 2
       		 </div>
<!--       <div class="card">
        <img src="https://media-cdn.tripadvisor.com/media/photo-o/1b/bc/be/82/clearboat.jpg" alt="...">
        <div class="card-body">
          <h5 class="card-title">Boat Operations</h5>
          <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
          <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
        </div>
      </div>
      <div class="card">
        <img src="https://meagangetsreal.com/wp-content/uploads/Front-Desk-768x432.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Reservations</h5>
          <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional
            content. This card has even longer content than the first to show that equal height action.</p>
          <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
        </div>
      </div>
      <div class="card">
        <img src="https://frontofficestaffreno.com/wp-content/uploads/2019/06/front-office-staff-reno.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Human Resorces</h5>
          <p class="card-text">Check in office that is colocated with Human Resoures and Finance Department.</p>
          <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
        </div>
      </div>
    </div> -->
<%-- <c:forEach items="${allTasks}" var="task">
<h4><a href="/task/${task.id }"><c:out value="${task.firstName}"/></a></h4>
<p>Assigned To:<c:out value="${task.user.name }"></c:out></p>
<p>Priority Level:<c:out value="${task.priority.name}"></c:out></p>

</c:forEach> --%>
   	</div> 
   	
  </main>
  <footer class="footer">
  <div class="container text-center">
    <a href="https://www.facebook.com/envatours" ><i class="fa fa-facebook" ></i></a>
    <a href="https://www.tripadvisor.com/Attraction_Review-g152515-d16663242-Reviews-EnvaTours-Cabo_San_Lucas_Los_Cabos_Baja_California.html"><i class="fa fa-tripadvisor"></i></a>
    <a href="https://www.google.com/maps/place/Envatours/@22.886368,-109.9130717,17z/data=!3m1!4b1!4m5!3m4!1s0x86af4bc7598f934d:0x55f106fbe075268a!8m2!3d22.886368!4d-109.910883"><i class="fa fa-google"></i></a>
    <a href="https://www.yelp.com/biz/envatours-cabo-san-lucas-2"><i class="fa fa-yelp"></i></a>
  </div>
</footer>
</body>
</html>