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

  <!-- Page breadcrumb -->
  <section id="mu-page-breadcrumb">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="mu-page-breadcrumb-area">
            <h2>Academic</h2>
            <ol class="breadcrumb">
              <li><a href="index.php">Home</a></li>
              <li class="active">Academic</li>
            </ol>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End breadcrumb -->
  <section id="mu-course-content">
    <div class="container">
      <section id="mu-course-content">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <div class="mu-course-content-area">
                <div class="row">
                  <div class="col-md-9">

                    <!-- start related course item -->
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
                                      <a href="#"><img alt="img" src="assets/img/academic/<?php echo $row["c_img"]; ?>"></a>
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
                    <!-- end start related course item -->
                  </div>
                  <div class="col-md-3">
                    <!-- start sidebar -->
                    <aside class="mu-sidebar">
                      <!-- start single sidebar -->
                      <div class="mu-single-sidebar">
                        <h3>Subjects</h3>
                        <ul class="mu-sidebar-catg">
                          <li><a href="chemistry.php" id="chemistry-tab">B.Sc. Chemistry</a></li>
                          <li><a href="mathematics.php" id="mathematics-tab">B.Sc. Mathematics</a></li>
                          <li><a href="bio-science.php" id="bio-science-tab">B.Sc. Bio-Science</a></li>
                          <li><a href="sports.php" id="sports-tab">B.Sc. Sports</a></li>

                        </ul>
                      </div>
                      <!-- end single sidebar -->

                      <!-- end single sidebar -->
                    </aside>
                    <!-- / end sidebar -->
                  </div>
                </div>
              </div>

            </div>
          </div>
      </section>
    </div>
    </div>

    <!-- Add a container for sidebar content -->
    <!-- JavaScript to load content dynamically -->

  </section>
  <?php
  require_once "./includes/footer.php";
  ?>
  </body>

</html>