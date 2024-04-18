<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Patidar Gin Science College | Home</title>

  <!-- Favicon -->
  <link rel="shortcut icon" href="assets/img/favicon.ico" type="image/x-icon">

  <!-- Font awesome -->
  <link href="assets/css/font-awesome.css" rel="stylesheet">
  <!-- Bootstrap -->
  <link href="assets/css/bootstrap.css" rel="stylesheet">
  <!-- Slick slider -->
  <link rel="stylesheet" type="text/css" href="assets/css/slick.css">
  <!-- Fancybox slider -->
  <link rel="stylesheet" href="assets/css/jquery.fancybox.css" type="text/css" media="screen" />
  <!-- Theme color -->
  <link id="switcher" href="assets/css/theme-color/default-theme.css" rel="stylesheet">

  <!-- Main style sheet -->
  <link href="assets/css/style.css" rel="stylesheet">


  <!-- Google Fonts -->
  <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Roboto:400,400italic,300,300italic,500,700' rel='stylesheet' type='text/css'>


  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

  <!--START SCROLL TOP BUTTON -->
  <a class="scrollToTop" href="#">
    <i class="fa fa-angle-up"></i>
  </a>
  <!-- END SCROLL TOP BUTTON -->

  <!-- Start header  -->
  <header id="mu-header">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 col-md-12">
          <div class="mu-header-area">
            <div class="row">
              <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                <div class="mu-header-top-left">
                  <div class="mu-top-email">
                    <i class="fa fa-envelope"></i>
                    
                  <?php
                  $q = "SELECT * FROM `website_setting` WHERE status = 1 LIMIT 1";
                  $res = mysqli_query($con, $q);
                  $i = 1;
                  while ($row = mysqli_fetch_assoc($res)) {
                  ?>
                    <span><?php echo $row['email'] ?></span>
                    
                  
                     <!--<span>sciencecollegebardoli@gmail.com   02622-220003</span>-->
                  </div>
                  <div class="mu-top-phone">
                    <i class="fa fa-phone"></i>
                    <span><?php echo $row['contact'] ?></span>
                  </div>
                  
                </div>
              </div>
              <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                <div class="mu-header-top-right">
                  <nav>
                    <ul class="mu-top-social-nav">
                      <li> <a href="https://vnsgu.ac.in/admission_tab23-24.html" itemprop="telephone">
                          <img src="./assets/img/new2.gif" height="20" width="25">&nbsp;
                          <b>FY BSc Admission Open</b></a></li>
                      <li><a href="#"><span class="fa fa-facebook"></span></a></li>
                      <li><a href="#"><span class="fa fa-twitter"></span></a></li>
                      <li><a href="#"><span class="fa fa-google-plus"></span></a></li>
                      <li><a href="#"><span class="fa fa-linkedin"></span></a></li>
                      <li><a href="#"><span class="fa fa-youtube"></span></a></li>
                    </ul>
                  </nav>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </header>
  <!-- End header  -->
  <!-- Start menu -->
  <section id="mu-menu">
    <nav class="navbar navbar-default" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <!-- FOR MOBILE VIEW COLLAPSED BUTTON -->
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <!-- LOGO -->
          <!-- <a class="navbar-brand" href="index.html"><i class="fa fa-university"></i><span>Varsity</span></a>-->
          <!-- IMG BASED LOGO  -->
          <a class="navbar-brand" href="index.php">
            <img src="assets/img/<?php echo $row['logo'] ?>" alt="logo" width="500px"></a>
            <?php
                  }
                  ?>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul id="top-menu" class="nav navbar-nav navbar-right main-nav">
            <li class="active"><a href="index.php">Home</a></li>
            <!-- <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Course <span class="fa fa-angle-down"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="course.html">Course Archive</a></li>                
                <li><a href="course-detail.html">Course Detail</a></li>                
              </ul>
            </li>            -->
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">About Us<span class="fa fa-angle-down"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="about-trust.php">About Trust</a></li>
                <li><a href="principal-message.php">About Principal's Message</a></li>
              </ul>
            </li>
            <li><a href="academic.php">Academic</a></li>
            
            <li><a href="gallery.php">Gallery</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Community<span class="fa fa-angle-down"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="faculty.php">Faculty</a></li>
                <li><a href="nss2015-16.php">Activity</a></li>
                <li><a href="events.php">Events</a></li>
                <li><a href="achievement15-16.php">Student's Acheivement</a></li>
                <li><a href="sport.php">Sports</a></li>
                <li><a href="annual_prize_distribution.php">Extracuricullar Activities</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Student Corner<span class="fa fa-angle-down"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="download.php">Downloads</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">IQAC<span class="fa fa-angle-down"></span></a>
              <ul class="dropdown-menu" role="menu">

              <li><a href="AQAR.php">AQAR</a></li>
                <li><a href="performance_of_institute.php">The Performance of the Institute</a></li>
                <li><a href="Student_Performance_and_Learning.php">Student Performance and Learning Outcomes</a></li>
                <li><a href="procedures_and_policies.php">Procedures and Policies</a></li>
                <li><a href="best_practices.php">Best Practicies</a></li>
                <li><a href="#">NAAC</a></li>
                <li><a href="#">IQAC Committee</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Facilities<span class="fa fa-angle-down"></span></a>
              
            <ul class="dropdown-menu" role="menu">
            <li><a href="infrastructure.php">Infrastructure</a></li>
              <li><a href="laboratories.php">Laboratories</a></li>
              <li><a href="library.php">Library</a></li>
              <li><a href="sports_facility.php">Sports Facility</a></li>
              <li><a href="ict_facility.php">ICT Facility</a></li>
            </ul>
            </li>
            <li><a href="contact.php">Contact</a></li>
            <li><a href="#" id="mu-search-icon"><i class="fa fa-search"></i></a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
  </section>
  <!-- End menu -->
  <!-- Start search box -->
  <div id="mu-search">
    <div class="mu-search-area">
      <button class="mu-search-close"><span class="fa fa-close"></span></button>
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <form class="mu-search-form">
              <input type="search" placeholder="Type Your Keyword(s) & Hit Enter">
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- End search box -->
</body>

</html>