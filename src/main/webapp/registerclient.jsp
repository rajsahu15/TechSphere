<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>ClientRegister</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/fevi.png" rel="icon">
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
          <li><a href="index.jsp" class="nav-link scrollto active"><i class="bx bx-home"></i> <span>Home</span></a></li>
      </ul>
      </nav>
    </div>
  </header><!-- End Header -->

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section class="breadcrumbs">
  
      <div class="container">

        <div class="d-flex justify-content-center align-items-center">
          <h2>Client Registration</h2>
        
        </div>

      </div>
    
    </section><!-- End Breadcrumbs -->

    <section class="inner-page p-0">
      <div class="container">
       <div class="formbold-main-wrapper gap-5">
       
               <img src="assets\img\cl.gif" height="300px" width="550px">
          <form action="registerController" method="POST">
            <div class="formbold-input-wrapp formbold-mb-3">
      <br>
                <label for="firstname" class="formbold-form-label">Username :</label>
      
              <div>
                <input
                  type="text"
                  name="username"
                  id="firstname"
                  placeholder="Enter Username"
                  class="formbold-form-input"
                  required
                />
      
              </div>
            </div>
      
            <div class="formbold-mb-3">
              <label for="age" class="formbold-form-label"> Password :</label>
              <input  required
                type="password"
                name="password"
                id="age"
                placeholder="123456789..."
                class="formbold-form-input"
              />
            </div>
            <div class="formbold-mb-3">
                <label for="age" class="formbold-form-label"> Register Mode :</label>
                <input  required
                  type="text"
                  name="logtype"
                  id="mode"
                  value="client"
                  placeholder="client" readonly
                  class="formbold-form-input"
                />
              </div>
      
      
            <div class="formbold-checkbox-wrapper">
              <label for="supportCheckbox" class="formbold-checkbox-label">
                <div class="formbold-relative">
                  <input  required
                    type="checkbox"
                    id="supportCheckbox"
                    class="formbold-input-checkbox"
                  />
                  <div class="formbold-checkbox-inner">
                    <span class="formbold-opacity-0">
                      <svg
                        width="11"
                        height="8"
                        viewBox="0 0 11 8"
                        class="formbold-stroke-current"
                        fill="none"
                        xmlns="http://www.w3.org/2000/svg"
                      >
                        <path
                          d="M8.81868 0.688604L4.16688 5.4878L2.05598 3.29507C1.70417 2.92271 1.1569 2.96409 0.805082 3.29507C0.453266 3.66742 0.492357 4.24663 0.805082 4.61898L3.30689 7.18407C3.54143 7.43231 3.85416 7.55642 4.16688 7.55642C4.47961 7.55642 4.79233 7.43231 5.02688 7.18407L10.0696 2.05389C10.4214 1.68154 10.4214 1.10233 10.0696 0.729976C9.71776 0.357624 9.17049 0.357625 8.81868 0.688604Z"
                          fill="white"
                        />
                      </svg>
                    </span>
                  </div>
                </div>
                I agree to Create Account
                <a href="#">in this Website</a>
              </label>
            </div>
      
      <center>
            <button type="reset" class="formbold-btn">Clear</button>
            <button class="formbold-btn">Submit</button>
          </center>
          </form>
       
      </div>
     
      </div>
    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span></span>TechSphere</strong>
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/iportfolio-bootstrap-portfolio-websites-template/ -->
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