<%@page import="dtos.ClientDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Contact Status</title>
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


 <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap');
        * {
          margin: 0;
          padding: 0;
          box-sizing: border-box;
        }
        body {
          font-family: 'Inter', sans-serif;
        }
        .formbold-mb-3 {
          margin-bottom: 15px;
        }
        .formbold-relative {
          position: relative;
        }
        .formbold-opacity-0 {
          opacity: 0;
        }
        .formbold-stroke-current {
          stroke: #ffffff;
          z-index: 999;
        }
        #supportCheckbox:checked ~ div span {
          opacity: 1;
        }
        #supportCheckbox:checked ~ div {
          background: #6a64f1;
          border-color: #6a64f1;
        }
      
        .formbold-main-wrapper {
          display: flex;
          align-items: center;
          justify-content: center;
          padding: 48px;
        }
      
        .formbold-form-wrapper {
          margin: 0 auto;
          max-width: 570px;
          width: 100%;
          background: white;
          padding: 40px;
        }
      
        .formbold-img {
          display: block;
          margin: 0 auto 45px;
        }
      
        .formbold-input-wrapp > div {
          display: flex;
          gap: 20px;
        }
      
        .formbold-input-flex {
          display: flex;
          gap: 20px;
          margin-bottom: 15px;
        }
        .formbold-input-flex > div {
          width: 50%;
        }
        .formbold-form-input {
          width: 100%;
          padding: 13px 22px;
          border-radius: 5px;
          border: 1px solid #dde3ec;
          background: #ffffff;
          font-weight: 500;
          font-size: 16px;
          color: #536387;
          outline: none;
          resize: none;
        }
        .formbold-form-input::placeholder,
        select.formbold-form-input,
        .formbold-form-input[type='date']::-webkit-datetime-edit-text,
        .formbold-form-input[type='date']::-webkit-datetime-edit-month-field,
        .formbold-form-input[type='date']::-webkit-datetime-edit-day-field,
        .formbold-form-input[type='date']::-webkit-datetime-edit-year-field {
          color: rgba(83, 99, 135, 0.5);
        }
      
        .formbold-form-input:focus {
          border-color: #6a64f1;
          box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
        }
        .formbold-form-label {
          color: #536387;
          font-size: 14px;
          line-height: 24px;
          display: block;
          margin-bottom: 10px;
        }
      
        .formbold-checkbox-label {
          display: flex;
          cursor: pointer;
          user-select: none;
          font-size: 16px;
          line-height: 24px;
          color: #536387;
        }
        .formbold-checkbox-label a {
          margin-left: 5px;
          color: #6a64f1;
        }
        .formbold-input-checkbox {
          position: absolute;
          width: 1px;
          height: 1px;
          padding: 0;
          margin: -1px;
          overflow: hidden;
          clip: rect(0, 0, 0, 0);
          white-space: nowrap;
          border-width: 0;
        }
        .formbold-checkbox-inner {
          display: flex;
          align-items: center;
          justify-content: center;
          width: 20px;
          height: 20px;
          margin-right: 16px;
          margin-top: 2px;
          border: 0.7px solid #dde3ec;
          border-radius: 3px;
        }
      
        .formbold-form-file {
          padding: 12px;
          font-size: 14px;
          line-height: 24px;
          color: rgba(83, 99, 135, 0.5);
        }
        .formbold-form-file::-webkit-file-upload-button {
          display: none;
        }
        .formbold-form-file:before {
          content: 'Upload';
          display: inline-block;
          background: #EEEEEE;
          border: 0.5px solid #E7E7E7;
          border-radius: 3px;
          padding: 3px 12px;
          outline: none;
          white-space: nowrap;
          -webkit-user-select: none;
          cursor: pointer;
          color: #637381;
          font-weight: 500;
          font-size: 12px;
          line-height: 16px;
          margin-right: 10px;
        }
      
        .formbold-btn {
          font-size: 16px;
          border-radius: 5px;
          padding: 14px 25px;
          border: none;
          font-weight: 500;
          background-color: #6a64f1;
          color: white;
          cursor: pointer;
          margin-top: 25px;
        }
        .formbold-btn:hover {
          box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
        }
      
        .formbold-w-45 {
          width: 45%;
        }
      </style>
 
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
          <li><a href="clienthome.jsp" class="nav-link scrollto"><i class="bx bx-home"></i> <span>Client Home</span></a></li>
          <li><a href="clientrequest.jsp" class="nav-link scrollto active"><i class="bx bx-user"></i> <span>Request Status</span></a></li>
          <li><a href="passwordController" class="nav-link scrollto"><i class="bx bx-file-blank"></i> <span>PasswordUpdate</span></a></li>
     </ul>
      </nav><!-- .nav-menu -->
    </div>
  </header><!-- End Header -->

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
        
          <h2>Contact Status </h2>
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
  <%
	String msg = (String) request.getAttribute("ms");
	if (msg != null) {
		out.println("<h2 style='color:red;'>" + msg + "</h2>");
	}
	%>
</center>
    <section class="inner-page">
      <div class="container">
     
      </div>
      <div class="container">
 <%     
ClientDetails Cr=(ClientDetails)request.getAttribute("data");
 if(Cr!=null){
 %>
<table class="table" border="3">
<thead class="thead thead-dark">
<th>Name</th>
<th>Email</th>
<th>WorkMode</th>
<th>Message</th>
<th>Action</th>
</thead>


<tr>
<td><%=Cr.getName()%></td>
<td><%=Cr.getEmail() %></td>
<td><%=Cr.getMode() %></td>
<td><%=Cr.getMessage() %></td>
<td><a class="btn btn-warning" href="updatecontroller?name=<%=Cr.getName()%>" onclick=" return confirm('Updating Record')">Update</a></td>
</tr>

</table>
</div>
<% }else{
	
	out.println("<h2 align=center style='color:red;'>" + "Your request is Rejected or No Requests Found" + "</h2>");
	
	%><br><br>
	<center> <a href="index.jsp" class="formbold-btn">Contact Us</a>
      </center>
      <% 
}


%>
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