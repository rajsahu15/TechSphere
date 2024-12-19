<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Client Home</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/icons8-client.gif" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

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
          <li><a href="clienthome.jsp" class="nav-link scrollto active"><i class="bx bx-home"></i> <span>Client Home</span></a></li>
          <li><a href="clientstatus" class="nav-link scrollto"><i class="bx bx-user"></i> <span>Request Status</span></a></li>
          <li><a href="passwordController" class="nav-link scrollto"><i class="bx bx-file-blank"></i> <span>PasswordUpdate</span></a></li>
     </ul>
      </nav><!-- .nav-menu -->
    </div>
  </header><!-- End Header -->
 <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
        
          <h2>Client Home</h2>
          <ol>
            <li><a href="index.jsp">Home</a></li>
            <li>Client</li>
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
    </section><!-- End Breadcrumbs -->

    <!-- ======= Portfolio Details Section ======= -->
    <section id="portfolio-details" class="portfolio-details">
      <div class="container">

        <div class="row gy-4">

          <div class="col-lg-8">
            <div class="portfolio-details-slider swiper">
              <div class="swiper-wrapper align-items-center">

                <div class="swiper-slide">
                  <img src="assets/img/img21 (3).png" height="500" width="700"  alt="">
                </div>

                <div class="swiper-slide">
                  <img src="assets/img/img21 (2).png" height="500" width="700"   alt="">
                </div>

                <div class="swiper-slide">
                  <img src="assets/img/img21 (1).png"  height="500" width="700"  alt="">
                </div>

              </div>
              <div class="swiper-pagination"></div>
            </div>
          </div>

          <div class="col-lg-4">
            <div class="portfolio-info">
              <h3>Client Information</h3>
              <ul>
                <li><strong>Welcome Client</strong>:<%if(ss!=null){out.print(" "+ss.toUpperCase());} %></li>
                <li><strong>Student At</strong>: SVVV Indore</li>
                <li><strong>Degree</strong>: Btech CSE</li>
                <li><strong>TechSphere</strong>: <a href="#">techsphare.co</a></li>
              </ul>
            </div>
            <div class="portfolio-description">
              <h2>Working Notes:</h2>
              <p>
          Whatever the tasks performed for the betterment of the client demands are to fulfilled by the Developer and provided the client interface.</p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Portfolio Details Section -->

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