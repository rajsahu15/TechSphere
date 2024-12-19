<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>www.TechSphere.in</title>
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

  <link href="assets/css/style1.css" rel="stylesheet">
<style>
.Btn {
  position: relative;
  width: 150px;
  height: 55px;
  border-radius: 45px;
  border: none;
  background-color: rgb(151, 95, 255);
  color: white;
  box-shadow: 0px 10px 10px rgb(210, 187, 253) inset,
  0px 5px 10px rgba(5, 5, 5, 0.212),
  0px -10px 10px rgb(124, 54, 255) inset;
  cursor: pointer;
  display: flex;
  align-items: center;
  justify-content: center;
}

.Btn::before {
  width: 70%;
  height: 2px;
  position: absolute;
  background-color: rgba(250, 250, 250, 0.678);
  content: "";
  filter: blur(1px);
  top: 7px;
  border-radius: 50%;
}

.Btn::after {
  width: 70%;
  height: 2px;
  position: absolute;
  background-color: rgba(250, 250, 250, 0.137);
  content: "";
  filter: blur(1px);
  bottom: 7px;
  border-radius: 50%;
}

.Btn:hover {
  animation: jello-horizontal 0.9s both;
}

@keyframes jello-horizontal {
  0% {
    transform: scale3d(1, 1, 1);
  }

  30% {
    transform: scale3d(1.25, 0.75, 1);
  }

  40% {
    transform: scale3d(0.75, 1.25, 1);
  }

  50% {
    transform: scale3d(1.15, 0.85, 1);
  }

  65% {
    transform: scale3d(0.95, 1.05, 1);
  }

  75% {
    transform: scale3d(1.05, 0.95, 1);
  }

  100% {
    transform: scale3d(1, 1, 1);
  }
}

 
</style>

</head>
<body>
<%
response.setHeader("pragma", "no-chache");
response.setHeader("cache-control", "no-store");
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
          <li><a href="#hero" class="nav-link scrollto active"><i class="bx bx-home"></i> <span>Home</span></a></li>
          <li><a href="#about" class="nav-link scrollto"><i class="bx bx-user"></i> <span>About</span></a></li>
          <li><a href="#resume" class="nav-link scrollto"><i class="bx bx-file-blank"></i> <span>Work</span></a></li>
          <li><a href="#portfolio" class="nav-link scrollto"><i class="bx bx-book-content"></i> <span>Awards</span></a></li>
          <li><a href="#services" class="nav-link scrollto"><i class="bx bx-server"></i> <span>Services</span></a></li>
          <li><a href="#contact" class="nav-link scrollto"><i class="bx bx-envelope"></i> <span>Contact Us</span></a></li>
        </ul>
      </nav><!-- .nav-menu -->
    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex flex-column justify-content-center align-items-center">
 
    <div class="hero-container" data-aos="fade-in">
      <h1>TechSphere</h1>

      <p>We'r <span class="typed" data-typed-items="Developers, Trainers, TechnicalExpertise, Programmers, Proficients"></span></p>
    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container">
        <div class="section-title">
          <h2>About <%
          for(int i=1;i<=45;i++){
        	  %> 	  &nbsp  
               <%
          }
          %> <font size="5"><i>Home /<a href="registerclient.jsp"><font color="red">&nbspNew Register </font>/</a><a href="login.jsp">&nbspLOGIN</a> </i>
</font>
						</h2>
          <p>"Welcome to TechSphere, where digital innovation meets exceptional design. We specialize in crafting bespoke web solutions tailored to your unique needs. With a dedicated team of skilled developers, designers, and strategists, we transform ideas into immersive online experiences. From stunning websites to robust e-commerce platforms, our expertise spans the entire spectrum of web development. Let us bring your vision to life and propel your online presence to new heights."</p>
      <br>  </div>

        <div class="row">
          <div class="col-lg-4" data-aos="fade-right">
            <img src="assets/img/ss.png" class="img-fluid" id=img_prati alt="" >
            <style>#img_prati{
            height:230px;
            }</style>
          </div>
          <div class="col-lg-8 pt-4 pt-lg-0 content" data-aos="fade-left">
            <h3>WEBSITE AND WEB APPLICATION DEVELOPER.</h3>
        <br>
            <div class="row">
              <div class="col-lg-6">
                <ul>
                  <li><i class="bi bi-chevron-right"></i> <strong>Establishment:</strong> <span>1 May 2020</span></li>
                  <li><i class="bi bi-chevron-right"></i> <strong>Signature:</strong> <span>TechSphere</span></li>
                  <li><i class="bi bi-chevron-right"></i> <strong>Mode:</strong> <span>Online/Offline</span></li>
                  <li><i class="bi bi-chevron-right"></i> <strong>City:</strong> <span>Indore , MP</span></li>
                </ul>
              </div>
              <div class="col-lg-6">
                <ul>
                  <li><i class="bi bi-chevron-right"></i> <strong>Support:</strong> <span>Frontend/Backend</span></li>
                  <li><i class="bi bi-chevron-right"></i> <strong>Authority:</strong> <span>Ministry of Electronics and Information Technology </span></li>
                  
                  <li><i class="bi bi-chevron-right"></i> <strong>Freelance:</strong> <span>Available</span></li>
                </ul>
              </div>
            </div>
             </div><p>
       <br> Your vision, our expertise. Let's create a website that reflects your uniqueness and captivates your audience.Stand out in the digital crowd with a website that speaks volumes about your brand. Let's make it happen.Facinate and building products in a fast paced and collaborative environment.WE seek challenging situations where we can showcase skills for the success of the organization. </p>
         
        </div>

      </div>
    </section><!-- End About Section -->

    <!-- ======= Facts Section ======= -->
    <section id="facts" class="facts">
      <div class="container">

        <div class="section-title">
          <h2>Facts</h2>
         <p> We possess a solid foundation in Java, C/C++, HTML, CSS, JavaScript, and MySQL, enabling mus to contribute effectively to software development projects across various domains. Our programming skills are coupled with a passion for learning and innovation, empower us to tackle complex challenges and deliver high-quality solutions in the ever-evolving tech landscape.</p> </div>

        <div class="row no-gutters">

          <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch" data-aos="fade-up">
            <div class="count-box">
              <i class="bi bi-star"></i>
              <span data-purecounter-start="0" data-purecounter-end="9" data-purecounter-duration="1" class="purecounter"></span>
              <p><strong>Proficient in Java programming</strong></p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch" data-aos="fade-up" data-aos-delay="100">
            <div class="count-box">
              <i class="bi bi-star"></i>
              <span data-purecounter-start="0" data-purecounter-end="8" data-purecounter-duration="1" class="purecounter"></span>
              <p><strong>Well-versed in both C and C++ programming languages</strong></p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch" data-aos="fade-up" data-aos-delay="200">
            <div class="count-box">
              <i class="bi bi-star"></i>
              <span data-purecounter-start="0" data-purecounter-end="9" data-purecounter-duration="1" class="purecounter"></span>
              <p><strong>HTML/CSS/JavaScript: Skilled in front-end web development technologies</strong></p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch" data-aos="fade-up" data-aos-delay="300">
            <div class="count-box">
              <i class="bi bi-star"></i>
              <span data-purecounter-start="0" data-purecounter-end="9" data-purecounter-duration="1" class="purecounter"></span>
              <p><strong>Proficient in MySQL database management</strong> </p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Facts Section -->

    <!-- ======= Skills Section ======= -->
    <section id="skills" class="skills section-bg">
      <div class="container">

        <div class="section-title">
          <h2>Skills</h2>
          <p>We are expertise in web technologies like HTML, CSS, and JavaScript, alongside proficiency in server-side languages such as Node.js or Django, facilitating the creation of dynamic and scalable web applications. With a strong grasp of database management systems like MySQL. We provide responsive design principles and user experience optimization results in visually appealing interfaces that function seamlessly across devices.  </p>
        </div>

        <div class="row skills-content">

          <div class="col-lg-6" data-aos="fade-up">

            <div class="progress">
              <span class="skill">HTML <i class="val">100%</i></span>
              <div class="progress-bar-wrap">
                <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
              </div>
            </div>

            <div class="progress">
              <span class="skill">CSS <i class="val">90%</i></span>
              <div class="progress-bar-wrap">
                <div class="progress-bar" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
              </div>
            </div>

            <div class="progress">
              <span class="skill">JavaScript <i class="val">90%</i></span>
              <div class="progress-bar-wrap">
                <div class="progress-bar" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
              </div>
            </div>

          </div>

          <div class="col-lg-6" data-aos="fade-up" data-aos-delay="100">

            <div class="progress">
              <span class="skill">Java <i class="val">90%</i></span>
              <div class="progress-bar-wrap">
                <div class="progress-bar" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
              </div>
            </div>

            <div class="progress">
              <span class="skill">C/C++ <i class="val">80%</i></span>
              <div class="progress-bar-wrap">
                <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
              </div>
            </div>

            <div class="progress">
              <span class="skill">My SQL <i class="val">90%</i></span>
              <div class="progress-bar-wrap">
                <div class="progress-bar" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
              </div>
            </div>

          </div>

        </div>

      </div>
    </section><!-- End Skills Section -->

    <!-- ======= Resume Section ======= -->
    <section id="resume" class="resume">
      <div class="container">

        <div class="section-title">
          <h2>Products</h2>
          <p>"Computer Science Student & Full Stack Developer: Crafting Innovative Solutions for Tomorrow's Digital World".</p>
        </div>

        <div class="row">
          <div class="col-lg-6" data-aos="fade-up">
            <h3 class="resume-title">Deployed Products</h3>
            <div class="resume-item pb-0">
           
              <h4>DOTTIE</h4>
              <p><em>Dottie Disability Dating is a compassionate online platform serving the disabled community across Belgium, Netherlands, France, Germany, and the UK. Connect with potential partners or friends, receive tailored daily matches, engage through text, audio, and video communication, attend events, and more..</em></p>
             
            </div>
            <div class="resume-item">
              <h4>CooQu</h4>
             <p> <em>CooQu provides a platform for people who have a real passion for food, either cooking or eating. It connects people via food and believes in celebrating different cultures and keeping lost cuisines alive.</em></p>
            </div>
            <div class="resume-item">
              <h4>FileDNA</h4>
              <p><em>FilesDNA is a paper-to-pixel system, which helps organizations to smoothly transit from papers to digital documents. Managing documents and getting signatures got so easy with FilesDNA.</em></p>
            </div>
          </div>
          <div class="col-lg-6" data-aos="fade-up" data-aos-delay="100">
            <h3 class="resume-title">Technology Stack</h3><br>
            <div class="resume-item">
              <h5>ReactJS</h5>&nbsp; &nbsp; &nbsp; 
              <h5>AWS</h5>&nbsp;&nbsp;&nbsp;
              <h5>MySQL</h5>&nbsp;&nbsp;&nbsp;
              <h5>Firebase</h5><br>
              &nbsp;&nbsp;&nbsp;&nbsp;<img alt="" src="assets/img/re.png" height="70px" widhth="70px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <img alt="" src="assets/img/aws.png" height="70px" widhth="70px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <img alt="" src="assets/img/mysql.png" height="70px" widhth="70px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <img alt="" src="assets/img/firebase.png" height="70px" widhth="70px"><br><br><br>
             <h5>React Native</h5>&nbsp; &nbsp; &nbsp;
             <h5>Php</h5>&nbsp; &nbsp; &nbsp;
              <h5>MySQL</h5>&nbsp;&nbsp;&nbsp;
              <h5>Firebase</h5>
              <br>&nbsp;&nbsp;&nbsp;&nbsp;<img alt="" src="assets/img/re.png" height="70px" widhth="70px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <img alt="" src="assets/img/php.png" height="70px" widhth="70px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <img alt="" src="assets/img/mysql.png" height="70px" widhth="70px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <img alt="" src="assets/img/firebase.png" height="70px" widhth="70px"><br><br><br>
              <h5>ReactJS</h5>&nbsp; &nbsp; &nbsp; 
              <h5>NodeJS</h5>&nbsp;&nbsp;&nbsp;
              <h5>MySQL</h5>&nbsp;&nbsp;&nbsp;
              <h5>Firebase</h5><br>
               &nbsp;&nbsp;&nbsp;&nbsp;<img alt="" src="assets/img/re.png" height="70px" widhth="70px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <img alt="" src="assets/img/nodejs.png" height="60px" widhth="60px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <img alt="" src="assets/img/mysql.png" height="70px" widhth="70px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <img alt="" src="assets/img/firebase.png" height="70px" widhth="70px"><br><br><br>
            </div>
         
          </div>
        </div>

      </div>
    </section><!-- End Resume Section -->

    <!-- ======= Portfolio Section ======= -->
    <section id="portfolio" class="portfolio section-bg">
      <div class="container">

        <div class="section-title">
          <h2>Overviews and Sample Products</h2>
          <p>Your passion for travel is not bound by boundaries or limitations; you dream of traversing every corner of the earth,
             from bustling metropolises to remote wilderness. With each new destination, you approach it with childlike wonder and an eagerness 
            to immerse yourself in its culture, history, and natural beauty.</p>
        </div>

        <div class="row" data-aos="fade-up">
          <div class="col-lg-12 d-flex justify-content-center">
            <ul id="portfolio-flters">
              <li data-filter="*" class="filter-active">All</li>
              <li data-filter=".filter-app">Certificates</li>
              <li data-filter=".filter-card">Projects</li>
              <li data-filter=".filter-web">Pride</li>
            </ul>
          </div>
        </div>

        <div class="row portfolio-container" data-aos="fade-up" data-aos-delay="100">

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <div class="portfolio-wrap">
              <img src="assets/img/a20.jpg"  id="x" class="img-fluid" alt="">
              <div class="portfolio-links">
                <a href="assets/img/a20.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" ><i class="bx bx-plus"></i></a>
                <a href="#portfolio" class="nav-link scrollto" title="More Details"><i class="bx bx-link"></i></a>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <div class="portfolio-wrap">
              <img src="assets/img/a16.jpg" id="x" class="img-fluid" alt="">
              <div class="portfolio-links">
                <a href="assets/img/a16.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox"><i class="bx bx-plus"></i></a>
                <a href="#portfolio" class="nav-link scrollto" title="More Details"><i class="bx bx-link"></i></a>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <div class="portfolio-wrap">
              <img src="assets/img/a15.jpg" id="x" class="img-fluid" alt="">
              <div class="portfolio-links">
                <a href="assets/img/a15.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" ></i></a>
                <a href="#portfolio" class="nav-link scrollto" title="More Details"><i class="bx bx-link"></i></a>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <div class="portfolio-wrap">
              <img src="assets/img/a13.jpg" id="x" class="img-fluid" alt="">
              <div class="portfolio-links">
                <a href="assets/img/a13.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" i></a>
                <a href="#portfolio" class="nav-link scrollto" title="More Details"><i class="bx bx-link"></i></a>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <div class="portfolio-wrap">
              <img src="assets/img/a21.jpg" id="x" class="img-fluid" alt="">
              <div class="portfolio-links">
                <a href="assets/img/a21.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" ><i class="bx bx-plus"></i></a>
                <a href="#portfolio" class="nav-link scrollto" title="More Details"><i class="bx bx-link"></i></a>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <div class="portfolio-wrap">
              <img src="assets/img/all1.jpg" id="x" class="img-fluid" alt="">
              <div class="portfolio-links">
                <a href="assets/img/all1.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" ><i class="bx bx-plus"></i></a>
                <a href="#portfolio" class="nav-link scrollto" title="More Details"><i class="bx bx-link"></i></a>
              </div>
            </div>
          </div>



          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <div class="portfolio-wrap">
              <img src="assets/img/a17.jpg"  id="x" class="img-fluid" alt="">
              <div class="portfolio-links">
                <a href="assets/img/a17.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" ><i class="bx bx-plus"></i></a>
                <a href="#portfolio" class="nav-link scrollto" title="More Details"><i class="bx bx-link"></i></a>
              </div>
            </div>
          </div>


          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <div class="portfolio-wrap">
              <img src="assets/img/a22.jpg" id="x" class="img-fluid" alt="">
              <div class="portfolio-links">
                <a href="assets/img/a22.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" ><i class="bx bx-plus"></i></a>
                <a href="#portfolio" class="nav-link scrollto" title="More Details"><i class="bx bx-link"></i></a>
              </div>
            </div>
          </div>

        
          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <div class="portfolio-wrap">
              <img src="assets/img/all2.jpg" id="x" class="img-fluid" alt="">
              <div class="portfolio-links">
                <a href="assets/img/all2.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" ><i class="bx bx-plus"></i></a>
                <a href="#portfolio" class="nav-link scrollto" title="More Details"><i class="bx bx-link"></i></a>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <div class="portfolio-wrap">
              <img src="assets/img/a14.jpg"  id="x" class="img-fluid" alt="">
              <div class="portfolio-links">
                <a href="assets/img/a14.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" ><i class="bx bx-plus"></i></a>
                <a href="#portfolio" class="nav-link scrollto" title="More Details"><i class="bx bx-link"></i></a>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <div class="portfolio-wrap">
              <img src="assets/img/a18.jpg" id="x" class="img-fluid" alt="">
              <div class="portfolio-links">
                <a href="assets/img/a18.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" ><i class="bx bx-plus"></i></a>
                <a href="#portfolio" class="nav-link scrollto" title="More Details"><i class="bx bx-link"></i></a>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <div class="portfolio-wrap">
              <img src="assets/img/a19.jpg" id="x" class="img-fluid" alt="">
              <div class="portfolio-links">
                <a href="assets/img/a19.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" ><i class="bx bx-plus"></i></a>
                <a href="#portfolio" class="nav-link scrollto" title="More Details"><i class="bx bx-link"></i></a>
              </div>
              <style>
              #x{
              height:300px;
              }</style>
            </div>
          </div>


        </div>

      </div>
    </section>

<!-- End Portfolio Section -->

    <!-- ======= Services Section ======= -->
    <section id="services" class="services">
      <div class="container">

        <div class="section-title">
          <h2>Services</h2>
          <p>These are just some of the services provided by web developers, and the specific offerings may vary depending on their expertise, experience, and the requirements of the project.</p>
        </div>

        <div class="row">
          <div class="col-lg-4 col-md-6 icon-box" data-aos="fade-up">
            <div class="icon"><i class="bi bi-briefcase"></i></div>
            <h4 class="title"><a href="">Website Design</a></h4>
            <p class="description">Web developers can design the layout, user interface, and overall look and feel of a website.</p>
          </div>
          <div class="col-lg-4 col-md-6 icon-box" data-aos="fade-up" data-aos-delay="100">
            <div class="icon"><i class="bi bi-card-checklist"></i></div>
            <h4 class="title"><a href="">Frontend Development</a></h4>
            <p class="description"> This involves writing code to create the visual elements of a website that users interact with, using languages such as HTML, CSS, and JavaScript.</p>
          </div>
          <div class="col-lg-4 col-md-6 icon-box" data-aos="fade-up" data-aos-delay="200">
            <div class="icon"><i class="bi bi-bar-chart"></i></div>
            <h4 class="title"><a href="">Backend Development</a></h4>
            <p class="description">Backend developers work on the server-side of web applications, handling tasks such as database management, user authentication, and server configuration. They often use languages and frameworks like Python, Ruby on Rails, Node.js, PHP, and Java.</p>
          </div>
          <div class="col-lg-4 col-md-6 icon-box" data-aos="fade-up" data-aos-delay="300">
            <div class="icon"><i class="bi bi-binoculars"></i></div>
            <h4 class="title"><a href="">Responsive Design</a></h4>
            <p class="description">Web developers ensure that websites are optimized for various devices and screen sizes, providing a seamless user experience across desktops, tablets, and smartphones.</p>
          </div>
          <div class="col-lg-4 col-md-6 icon-box" data-aos="fade-up" data-aos-delay="400">
            <div class="icon"><i class="bi bi-brightness-high"></i></div>
            <h4 class="title"><a href="">E-commerce Solutions</a></h4>
            <p class="description">Web developers can create online stores and implement features such as product listings, shopping carts, payment gateways, and order management systems.</p>
          </div>
          <div class="col-lg-4 col-md-6 icon-box" data-aos="fade-up" data-aos-delay="500">
            <div class="icon"><i class="bi bi-calendar4-week"></i></div>
            <h4 class="title"><a href="">Content Management Systems (CMS)</a></h4>
            <p class="description">hey can develop custom CMS solutions or work with existing platforms like WordPress, Drupal, or Joomla to create, manage, and update website content.</p>
          </div>
        </div>

      </div>
    </section><!-- End Services Section -->

    <!-- ======= Testimonials Section ======= -->
    <section id="testimonials" class="testimonials section-bg">
      <div class="container">

        <div class="section-title">
          <h2>Testimonials</h2>
          <p>
           </p>
        </div>

        <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper-wrapper">

            <div class="swiper-slide">
              <div class="testimonial-item" data-aos="fade-up" data-aos-delay="200">
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
               Our website exceeded our expectations in terms of design and functionality.They were receptive to our ideas and offered valuable suggestions to improve our online presence. <i class="bx bxs-quote-alt-right quote-icon-right"></i>  </p>
                <img src="assets/img/rishi.jpg" class="testimonial-img" alt="">
                <h3>Rishi Modi</h3>
                <h4>Ui-Ux Designer</h4>
                              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item" data-aos="fade-up" data-aos-delay="300">
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  I can't say enough good things about the team at TechSphere. From the initial consultation to the final launch, they were professional, efficient, and incredibly skilled.<i class="bx bxs-quote-alt-right quote-icon-right"></i></p>
                <img src="assets/img/picc4.jpg" class="testimonial-img" alt="">
                <h3>Raj Sahu</h3>
                <h4>BackEnd_Developer</h4>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item" data-aos="fade-up" data-aos-delay="400">
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  Working with TechSphere was an absolute pleasure! Their team not only delivered a stunning website but also provided excellent communication throughout the entire process. <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
                <img src="assets/img/prati.jpg" class="testimonial-img" alt="">
                <h3>Prati Tiwari</h3>
                <h4>FrontEnd_Developer</h4>
              </div>
            </div>
            
  <div class="swiper-slide">
              <div class="testimonial-item" data-aos="fade-up" data-aos-delay="200">
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
               Our website exceeded our expectations in terms of design and functionality.They were receptive to our ideas and offered valuable suggestions to improve our online presence. <i class="bx bxs-quote-alt-right quote-icon-right"></i>  </p>
                <img src="assets/img/rishi.jpg" class="testimonial-img" alt="">
                <h3>Rishi Modi</h3>
                <h4>Ui-Ux Designer</h4>
                              </div>
            </div>
            <div class="swiper-slide">
              <div class="testimonial-item" data-aos="fade-up">
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
            They were receptive to our ideas and offered valuable suggestions to improve our online presence.  ideas and offered valuable suggestions to improve our online presence. <i class="bx bxs-quote-alt-right quote-icon-right"></i>
               </p>    <img src="assets/img/picc4.jpg" class="testimonial-img" alt="">
                
                 <h3>Raj Sahu</h3>
                <h4>BackEnd_Developer</h4>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item" data-aos="fade-up" data-aos-delay="100">
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                 From the moment he stepped into the classroom at Softwaves Technology, it was evident that he possessed a genuine passion for learning and a remarkable aptitude for coding. <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                 
                </p>
                <img src="assets/img/prati.jpg" class="testimonial-img" alt="">
               <h3>Prati Tiwari</h3>
                <h4>FrontEnd_Developer</h4>
              </div>
            </div><!-- End testimonial item -->



          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section><!-- End Testimonials Section -->

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">

        <div class="section-title">
          <h2>Contact Us</h2>
       </div>

        <div class="row" data-aos="fade-in">

          <div class="col-lg-5 d-flex align-items-stretch">
            <div class="info">
              <div class="address">
                <i class="bi bi-geo-alt"></i>
                <h4>Location:</h4>
                <p>IT Park,Yash Building,Indore,MP 487551</p>
              </div>

              <div class="email">
                <i class="bi bi-envelope"></i>
                <h4>Email:</h4>
                <p>techsphere@gmail.com</p>
              </div>

              <div class="phone">
                <i class="bi bi-phone"></i>
                <h4>Call:</h4>
                <p>+91 4560100654</p>
              </div>

              <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3681.142856692966!2d75.86868628885499!3d22.685725299999998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3962fd11cbaf30c5%3A0xeddd100ed6a7f182!2sIT%20park%20indore!5e0!3m2!1sen!2sin!4v1714677401624!5m2!1sen!2sin"
              frameborder="0" style="border:0; width: 100%; height: 290px;"  allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>

          </div>

          <div class="col-lg-7 mt-5 mt-lg-0 d-flex align-items-stretch">
            <form action="contactController" method="post" role="form" class="php-email-form">
              <div class="row">
                <div class="form-group col-md-6">
                  <label for="name">Your Name</label>
                  <input type="text" name="name" placeholder="Enter Your Name" class="form-control" id="name" required>
                </div>
                <div class="form-group col-md-6">
                  <label for="name">Your Email</label>
                  <input type="email" class="form-control" name="email" placeholder="example@gmail.com" id="email" required>
                </div>
              </div>
              <div class="form-group">
                <label for="name">WorkMode :</label>
                <input type="text" class="form-control" name="mode" placeholder="online/offline" id="subject" required>
 
              </div>
                  
              <div class="form-group">
                <label for="name">Message</label>
                <textarea class="form-control" name="message" placeholder="Description of Project" rows="10" required></textarea>
              </div>
        
              <div class="text-center">
              <center>
              <button class="Btn">
  Submit
</button>
</center>
</div>

            </form>
          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->

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