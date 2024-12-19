<%@page import="dtos.RegisterClient"%>
<%@page import="dtos.ClientDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Password Details</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

   <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
  <!-- Template Main CSS File -->
  <link href="assets/css/style1.css" rel="stylesheet">

</head>

<body>
<%
response.setHeader("cache-control", "no-store");
response.setHeader("pragma", "no-chache");
response.setHeader("expire", "0");
%>
  <!-- ======= Mobile nav toggle button ======= -->
  <i class="bi bi-list mobile-nav-toggle d-xl-none"></i>

  <!-- ======= Header ======= -->
  <header id="header">
    <div class="d-flex flex-column">

      <div class="profile">
        <img src="assets/img/hello.png" alt="" class="img-fluid rounded-circle">
        <h1 class="text-light"><a href="index.html">TechSphere</a></h1>
        <div class="social-links mt-3 text-center">
         <a href="https://www.instagram.com/instagram/" target="_blank"  class="instagram"><i class="bx bxl-instagram"></i></a>
         <a href="https://www.linkedin.com/in/LinkedIn/" target="_blank"  class="linkedin"><i class="bx bxl-linkedin"></i></a>
        </div>
      </div>

      <nav id="navbar" class="nav-menu navbar">
        <ul>
         <li><a href="clienthome.jsp" class="nav-link scrollto "><i class="bx bx-home"></i> <span>Client Home</span></a></li>
          <li><a href="clientstatus" class="nav-link scrollto"><i class="bx bx-user"></i> <span>Request Status</span></a></li>
          <li><a href="#" class="nav-link scrollto active"><i class="bx bx-file-blank"></i> <span>PasswordUpdate</span></a></li>
     </ul>
      </nav><!-- .nav-menu -->
    </div>
  </header><!-- End Header -->

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
        
          <h2>Login Details </h2>
          <ol>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="clienthome.jsp">Client</a></li>
              <li><%String ss=(String)session.getAttribute("user");
          if(ss!=null){
            	out.print("Welcome: "+ss.toUpperCase());
            }else{
            	response.sendRedirect("login.jsp");
            }
       
            %></li>
             <li  style="margin-top:-6px;"><a href="logoutController"
					class="btn btn-outline-danger" type="submit" >Logout</a>
		</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs --><br><br><center>
 
</center>
    <section class="inner-page">
     <%String msk=(String)request.getAttribute("ms");
if(msk!=null){
	out.println("<br><h3 align='center' style='color:red;'>"+msk+"</h3><br>");
} %>
     <div class="container">
 
<table class="table" border="1">
<thead class="thead thead-dark">
<th>Username</th>
<th>Password</th>
<th>Logtype</th>
<th>Action</th>
</thead>

<%
	RegisterClient rc=(RegisterClient)request.getAttribute("data");
%>
<tr>
<td><%=rc.getUsername() %></td>
<td><%= rc.getPassword()  %></td>
<td><%= rc.getLogtype() %></td>
<td><a class="btn btn-warning" href="passwordUpdate?username=<%=rc.getUsername() %>" onclick="return confirm('Updating Record')">Update</a></td>
</tr>

</table>
</div>
    </section>

  </main><!-- End #main -->



  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>TechSphere</span></strong>
      </div>
      <div class="credits">
       Designed by <a href="#">@tech_sphere</a>
      </div>
    </div>
  </footer><!-- End  Footer -->


  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/typed.js/typed.umd.js"></script>
  <script src="assets/vendor/waypoints/noframework.waypoints.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>