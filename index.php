<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Patidar Gin Science College | Home</title>

  <?php
  include "conn.php";
  require_once "./includes/header.php";
  ?>
  <!-- Start Slider -->
  <section id="mu-slider">
    <?php
    $q = "SELECT * FROM `slider_mst` WHERE sd_status = 1";
    $res = mysqli_query($con, $q);
    $i = 1;
    while ($row = mysqli_fetch_assoc($res)) {
    ?>
      <!-- Start single slider item -->
      <div class="mu-slider-single">
        <div class="mu-slider-img">
          <figure>
            <img src="admin_pgsc/images/slider/<?php echo $row['sd_img'] ?>" alt="img">
          </figure>
        </div>
        <div class="mu-slider-content">
          <!-- <h4></h4>
        <span></span> -->
          <h3>Welcome To Patidar Gin Science College</h3>
          <!-- <p> debitis corporis temporibus recusandae accusamus.</p>
        <a href="#" class="mu-read-more-btn">Read More</a> -->
        </div>
      </div>
      <!-- Start single slider item -->
    <?php
    }
    ?>
  </section>
  <!-- End Slider -->
  <!-- Start service  -->
  <section id="mu-service">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 col-md-12">
          <div class="mu-service-area">
            <!-- Start single service -->
            <div class="mu-service-single">
              <span class="fa fa-book"></span>
              <h3>Website Links</h3>
              <ul type="circle">
                <li>Veer Narmad South Gujarat University, Surat
                  <a href="http://www.vnsgu.ac.in">www.vnsgu.ac.in</a>
                </li>
                <li>University Grants Commission (UGC)
                  <a href="http://www.ugc.ac.in">www.ugc.ac.in</a>
                </li>
                <li>National Assessment and Accreditation Council (NAAC)
                  <a href="http://www.naac.gov.in">www.naac.gov.in</a>
                </li>
              </ul>
            </div>
            <!-- Start single service -->
            <!-- Start single service -->
            <div class="mu-service-single">
              <span class="fa fa-users"></span>
              <h3>Adminssion Links</h3>
              <ul type="circle">
                <li>Veer Narmad South Gujarat University, Surat
                  <a href="http://www.vnsgu.ac.in">www.vnsgu.ac.in</a>
                </li>
                
              </ul>
            </div>
            <!-- Start single service -->
            <!-- Start single service -->
            <div class="mu-service-single">
              <span class="fa fa-table"></span>
              <h3>Latest News</h3>
              <marquee direction="up" onMouseOver="this.stop()" onMouseOut="this.start()" height="100" width="200">
                <ul>
                  <?php
                  $q = "SELECT * FROM `news` WHERE n_status = 1";
                  $res = mysqli_query($con, $q);
                  $i = 1;
                  while ($row = mysqli_fetch_assoc($res)) {
                  ?>
                    <li><?php echo $row['n_title'] ?></li>
                    <li><?php echo $row['n_des'] ?></li>
                  <?php
                  }
                  ?>

                </ul>
              </marquee>
            </div>
            <!-- Start single service -->
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End service  -->

  <!-- Start about us -->
  <section id="mu-about-us">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="mu-about-us-area">
            <div class="row">
              <div class="col-lg-6 col-md-6">
                <div class="mu-about-us-left">
                  <!-- Start Title -->
                  <div class="mu-title">
                    <h2></h2>
                  </div>

                  <?php
                  $q = "select * from content_mst where co_type='about'";
                  $res = mysqli_query($con, $q);
                  $row = mysqli_fetch_assoc($res);
                  echo $row['co_content']
                  ?>
                  <!-- End Title -->
                  <!-- <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rerum pariatur fuga eveniet soluta aspernatur rem, nam voluptatibus voluptate voluptates sapiente, inventore. Voluptatem, maiores esse molestiae.</p>
                  <ul>
                    <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</li>
                    <li>Saepe a minima quod iste libero rerum dicta!</li>
                    <li>Voluptas obcaecati, iste porro fugit soluta consequuntur. Veritatis?</li>
                    <li>Ipsam deserunt numquam ad error rem unde, omnis.</li>
                    <li>Repellat assumenda adipisci pariatur ipsam eos similique, explicabo.</li>
                  </ul>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis quaerat harum facilis excepturi et? Mollitia!</p>
  -->
                </div>
              </div>
              <div class="col-lg-6 col-md-6">
                <div class="mu-about-us-right">
                  <a id="mu-abtus-video" href="https://www.youtube.com/embed/HN3pm9qYAUs" target="mutube-video">
                    <img src="assets/img/gallery/big/15.jpeg" alt="img">
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End about us -->

  <!-- Start about us counter -->
  <!--
  <section id="mu-abtus-counter">

    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="mu-abtus-counter-area">
            <div class="row">-->
  <!-- Start counter item -->
  <!--<div class="col-lg-3 col-md-3 col-sm-3">
                <div class="mu-abtus-counter-single">
                  <span class="fa fa-book"></span>
                  <h4 class="counter">10</h4>
                  <p>Subjects</p>
                </div>
              </div>-->
  <!-- End counter item -->
  <!-- Start counter item -->
  <!--<div class="col-lg-3 col-md-3 col-sm-3">
                <div class="mu-abtus-counter-single">
                  <span class="fa fa-users"></span>
                  <h4 class="counter">3500</h4>
                  <p>Students</p>
                </div>
              </div>-->
  <!-- End counter item -->
  <!-- Start counter item -->
  <!--<div class="col-lg-3 col-md-3 col-sm-3">
                <div class="mu-abtus-counter-single">
                  <span class="fa fa-flask"></span>
                  <h4 class="counter">15</h4>
                  <p>Modern Lab</p>
                </div>
              </div>
                -->


  <!-- End counter item -->
  <!-- Start counter item -->
  <!--<div class="col-lg-3 col-md-3 col-sm-3">
                <div class="mu-abtus-counter-single no-border">
                  <span class="fa fa-user-secret"></span>
                  <h4 class="counter">42</h4>
                  <p>Teachers</p>
                </div>
              </div>-->
  <!-- End counter item -->
  </div>
  </div>
  </div>
  </div>
  </div>

  </section>
  <!-- End about us counter -->

  <!-- Start features section -->
  <!--<section id="mu-features">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 col-md-12">
          <div class="mu-features-area">
            <!-- Start Title -->
  <!--<div class="mu-title">
              <h2>Our Features</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Distinctio ipsa ea maxime mollitia, vitae voluptates, quod at, saepe reprehenderit totam aliquam architecto fugiat sunt animi!</p>
            </div>
            <!-- End Title -->
  <!-- Start features content -->
  <!--<div class="mu-features-content">
              <div class="row">
                <div class="col-lg-4 col-md-4  col-sm-6">
                  <div class="mu-single-feature">
                    <span class="fa fa-book"></span>
                    <h4>Professional Courses</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus non dolorem excepturi libero itaque sint labore similique maxime natus eum.</p>
                    <a href="#">Read More</a>
                  </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                  <div class="mu-single-feature">
                    <span class="fa fa-users"></span>
                    <h4>Expert Teachers</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus non dolorem excepturi libero itaque sint labore similique maxime natus eum.</p>
                    <a href="#">Read More</a>
                  </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                  <div class="mu-single-feature">
                    <span class="fa fa-laptop"></span>
                    <h4>Online Learning</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus non dolorem excepturi libero itaque sint labore similique maxime natus eum.</p>
                    <a href="#">Read More</a>
                  </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                  <div class="mu-single-feature">
                    <span class="fa fa-microphone"></span>
                    <h4>Audio Lessons</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus non dolorem excepturi libero itaque sint labore similique maxime natus eum.</p>
                    <a href="#">Read More</a>
                  </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                  <div class="mu-single-feature">
                    <span class="fa fa-film"></span>
                    <h4>Video Lessons</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus non dolorem excepturi libero itaque sint labore similique maxime natus eum.</p>
                    <a href="#">Read More</a>
                  </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                  <div class="mu-single-feature">
                    <span class="fa fa-certificate"></span>
                    <h4>Professional Certificate</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus non dolorem excepturi libero itaque sint labore similique maxime natus eum.</p>
                    <a href="#">Read More</a>
                  </div>
                </div>
              </div>
            </div>
            <!-- End features content -->
  <!--</div>
        </div>
      </div>
    </div>
  </section>-->
  <!-- End features section -->

  <!-- Start latest course section -->
  <section id="mu-latest-courses">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 col-md-12">
          <div class="mu-latest-courses-area">
            <!-- Start Title -->
            <div class="mu-title">
              <h2>Latest Courses</h2>
            </div>
            <!-- End Title -->
            <!-- Start latest course content -->
            <div class="mu-latest-courses-content">
              <div class="row">
                <div class="col-md-12">
                  <div class="mu-related-item">
                    <h3>Recent Courses</h3>
                    <div class="mu-related-item-area">
                      <div id="mu-related-item-slide">
                        <?php
                        $q = "SELECT * FROM `course_mst`";
                        $res = mysqli_query($con, $q);
                        $i = 1;
                        while ($row = mysqli_fetch_assoc($res)) {
                        ?>
                          <div class="col-md-6">
                            <div class="mu-latest-course-single">
                              <figure class="mu-latest-course-img">
                                <a href="#"><img alt="img" height="400" id="clickableImage" src="assets/img/academic/<?php echo $row["c_img"]; ?>"></a>
                                <figcaption class="mu-latest-course-imgcaption">
                                  <a href="#"><?php echo $row["c_name"]; ?></a>
                                  <span><i class="fa fa-clock-o"></i><?php echo $row["c_month"]; ?> Months</span>
                                </figcaption>
                              </figure>
                              <!-- <div class="mu-latest-course-single-content">
                                      <h4><a href="#">Lorem ipsum dolor sit amet.</a></h4>
                                      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet quod nisi quisquam modi dolore, dicta obcaecati architecto quidem ullam quia.</p>
                                      <div class="mu-latest-course-single-contbottom">
                                        <a href="#" class="mu-course-details">Details</a>
                                        <span href="#" class="mu-course-price">$105.00</span>
                                      </div>
                                    </div> -->
                            </div>
                          </div>
                        <?php
                        }
                        ?>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <!-- End latest course content -->
            </div>
          </div>
        </div>
      </div>
  </section>
  <!-- End latest course section -->

  <!-- Start our teacher -->
  <section id="mu-our-teacher">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="mu-our-teacher-area">
            <!-- begain title -->
            <div class="mu-title">
              <h2>Our Facilities</h2>

            </div>
            <!-- end title -->
            <!-- begain our teacher content -->
            <div class="mu-our-teacher-content">
              <div class="row">
                <div class="col-lg-3 col-md-3  col-sm-6">
                  <div class="mu-our-teacher-single">
                    <figure class="mu-our-teacher-img">
                      <a href="infrastructure.php">
                        <img src="assets/img/teachers/teacher-01.png" alt="teacher img">
                      </a>
                    </figure>
                    <div class="mu-ourteacher-single-content">
                      <h4>infrastructure</h4>
                    </div>
                  </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6">
                  <div class="mu-our-teacher-single">
                    <figure class="mu-our-teacher-img">
                      <a href="laboratories.php">
                        <img src="assets/img/teachers/teacher-01.png" alt="teacher img">
                      </a>
                    </figure>
                    <div class="mu-ourteacher-single-content">
                      <h4>Laboratories</h4>
                    </div>
                  </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6">
                  <div class="mu-our-teacher-single">
                    <figure class="mu-our-teacher-img">
                      <a href="library.php">
                        <img src="assets/img/teachers/teacher-01.png" alt="teacher img">
                      </a>
                    </figure>
                    <div class="mu-ourteacher-single-content">
                      <h4>Library</h4>
                    </div>
                  </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6">
                  <div class="mu-our-teacher-single">
                    <figure class="mu-our-teacher-img">
                      <a href="sports_facility.php">
                        <img src="assets/img/teachers/teacher-01.png" alt="teacher img">
                      </a>
                    </figure>
                    <div class="mu-ourteacher-single-content">
                      <h4>Sports Facility</h4>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- End our teacher content -->
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End our teacher -->

  <!-- Start testimonial -->
  <!-- <section id="mu-testimonial">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="mu-testimonial-area">
            <div id="mu-testimonial-slide" class="mu-testimonial-content">-->
              <!-- start testimonial single item -->
              <!-- <div class="mu-testimonial-item">
                <div class="mu-testimonial-quote">
                  <blockquote>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatem rerum soluta aperiam blanditiis obcaecati eveniet aliquam consequatur nobis eaque id.</p>
                  </blockquote>
                </div>
                <div class="mu-testimonial-img">
                  <img src="assets/img/testimonial-1.png" alt="img">
                </div>
                <div class="mu-testimonial-info">
                  <h4>John Doe</h4>
                  <span>Happy Student</span>
                </div>
              </div>-->
              <!-- end testimonial single item -->
              <!-- start testimonial single item -->
              <!-- <div class="mu-testimonial-item">
                <div class="mu-testimonial-quote">
                  <blockquote>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatem rerum soluta aperiam blanditiis obcaecati eveniet aliquam consequatur nobis eaque id.</p>
                  </blockquote>
                </div>
                <div class="mu-testimonial-img">
                  <img src="assets/img/testimonial-3.png" alt="img">
                </div>
                <div class="mu-testimonial-info">
                  <h4>Rebaca Michel</h4>
                  <span>Happy Parent</span>
                </div>
              </div>-->
              <!-- end testimonial single item -->
              <!-- start testimonial single item -->
              <!-- <div class="mu-testimonial-item">
                <div class="mu-testimonial-quote">
                  <blockquote>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatem rerum soluta aperiam blanditiis obcaecati eveniet aliquam consequatur nobis eaque id.</p>
                  </blockquote>
                </div>
                <div class="mu-testimonial-img">
                  <img src="assets/img/testimonial-2.png" alt="img">
                </div>
                <div class="mu-testimonial-info">
                  <h4>Stev Smith</h4>
                  <span>Happy Student</span>
                </div>
              </div>-->
              <!-- end testimonial single item -->
            <!-- </div>
          </div>
        </div>
      </div>
    </div>
  </section>-->
  <!-- End testimonial -->

          </div>
        </div>
      </div>
    </div>
  </section>
  <script>
    document.getElementById("clickableImage").addEventListener("click", function() {
      // Navigate to another page
      window.location.href = "pgsc/academic.php";
    });
  </script>
  <!-- End from blog -->
  <?php
  require_once "./includes/footer.php";
  ?>