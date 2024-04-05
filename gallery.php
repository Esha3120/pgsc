<!DOCTYPE html>
<html lang="en">

<head>
  <?php

  require_once "conn.php";
  require_once "./includes/header.php";
  ?>
  <!-- End search box -->
  <!-- Page breadcrumb -->
  <section id="mu-page-breadcrumb">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="mu-page-breadcrumb-area">
            <h2>Gallery</h2>
            <ol class="breadcrumb">
              <li><a href="#">Home</a></li>
              <li class="active">Gallery</li>
            </ol>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End breadcrumb -->
  <!-- Start gallery  -->
  <section id="mu-gallery">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="mu-gallery-area">
            <!-- start title -->
            <div class="mu-title">
              <h2>Some Moments</h2>
            </div>
            <!-- end title -->
            <!-- start gallery content -->
            <div class="mu-gallery-content">
              <!-- Start gallery menu -->
              <div class="mu-gallery-top">
                <ul>
                  <li class="filter active" data-filter="all">All</li>
                  <li class="filter" data-filter=".2021">2021</li>
                  <li class="filter" data-filter=".2022">2022</li>
                  <li class="filter" data-filter=".2023">2023</li>
                  <li class="filter" data-filter=".2024">2024</li>
                </ul>
              </div>

              <!-- End gallery menu -->

              <div class="mu-gallery-body">
                <ul id="mixit-container" class="row">
                  <!--start single gallery image -->
                  <?php
                  $q = "SELECT * FROM `gallery` WHERE g_status = 1";
                  $res = mysqli_query($con, $q);
                  $i = 1;
                  while ($row = mysqli_fetch_assoc($res)) {
                  ?>
                    <li class="col-md-4 col-sm-6 col-xs-12 mix all">
                      <div class="mu-single-gallery">
                        <div class="mu-single-gallery-item">
                          <div class="mu-single-gallery-img">
                            <img src="assets/img/gallery/small/<?php echo $row["g_img"]; ?>">
                          </div>
                          <div class="mu-single-gallery-info">
                            <div class="mu-single-gallery-info-inner">
                              <h4>Image Title</h4>
                              <p>Web Design</p>
                              <a href="assets/img/gallery/small/<?php echo $row["g_img"]; ?>" data-fancybox-group="gallery" class="fancybox"><span class="fa fa-eye"></span></a>
                              <a href="#" class="aa-link"><span class="fa fa-link"></span></a>
                            </div>
                          </div>
                        </div>
                      </div>
                    </li>
                  <?php
                  }
                  ?>
                  <?php
                  $q = "SELECT * FROM `gallery` WHERE g_year = 2021";
                  $res = mysqli_query($con, $q);
                  $i = 1;
                  while ($row = mysqli_fetch_assoc($res)) {
                  ?>

                    <li class="col-md-4 col-sm-6 col-xs-12 mix 2021">
                      <div class="mu-single-gallery">
                        <div class="mu-single-gallery-item">
                          <div class="mu-single-gallery-img">
                            <a href="#"><img alt="img" src="assets/img/gallery/small/<?php echo $row["g_img"]; ?>"></a>
                          </div>
                          <div class="mu-single-gallery-info">
                            <div class="mu-single-gallery-info-inner">
                              <h4>Image Title</h4>
                              <p>Animation</p>
                              <a href="assets/img/gallery/big/<?php echo $row["g_img"]; ?>" data-fancybox-group="gallery" class="fancybox"><span class="fa fa-eye"></span></a>
                              <a href="#" class="aa-link"><span class="fa fa-link"></span></a>
                            </div>
                          </div>
                        </div>
                      </div>
                    </li>
                  <?php
                  }
                  ?>


                  <?php
                  $q = "SELECT * FROM `gallery` WHERE g_year = 2022";
                  $res = mysqli_query($con, $q);
                  $i = 1;
                  while ($row = mysqli_fetch_assoc($res)) {
                  ?>

                    <li class="col-md-4 col-sm-6 col-xs-12 mix 2022">
                      <div class="mu-single-gallery">
                        <div class="mu-single-gallery-item">
                          <div class="mu-single-gallery-img">
                            <a href="#"><img alt="img" src="assets/img/gallery/small/<?php echo $row["g_img"]; ?>"></a>
                          </div>
                          <div class="mu-single-gallery-info">
                            <div class="mu-single-gallery-info-inner">
                              <h4>Image Title</h4>
                              <p>Animation</p>
                              <a href="assets/img/gallery/big/<?php echo $row["g_img"]; ?>" data-fancybox-group="gallery" class="fancybox"><span class="fa fa-eye"></span></a>
                              <a href="#" class="aa-link"><span class="fa fa-link"></span></a>
                            </div>
                          </div>
                        </div>
                      </div>
                    </li>
                  <?php
                  }
                  ?>

                  <?php
                  $q = "SELECT * FROM `gallery` WHERE g_year = 2023";
                  $res = mysqli_query($con, $q);
                  $i = 1;
                  while ($row = mysqli_fetch_assoc($res)) {
                  ?>

                    <li class="col-md-4 col-sm-6 col-xs-12 mix 2023">
                      <div class="mu-single-gallery">
                        <div class="mu-single-gallery-item">
                          <div class="mu-single-gallery-img">
                            <a href="#"><img alt="img" src="assets/img/gallery/small/<?php echo $row["g_img"]; ?>"></a>
                          </div>
                          <div class="mu-single-gallery-info">
                            <div class="mu-single-gallery-info-inner">
                              <h4>Image Title</h4>
                              <p>Animation</p>
                              <a href="assets/img/gallery/big/<?php echo $row["g_img"]; ?>" data-fancybox-group="gallery" class="fancybox"><span class="fa fa-eye"></span></a>
                              <a href="#" class="aa-link"><span class="fa fa-link"></span></a>
                            </div>
                          </div>
                        </div>
                      </div>
                    </li>
                  <?php
                  }
                  ?>

                  <?php
                  $q = "SELECT * FROM `gallery` WHERE g_year = 2024";
                  $res = mysqli_query($con, $q);
                  $i = 1;
                  while ($row = mysqli_fetch_assoc($res)) {
                  ?>

                    <li class="col-md-4 col-sm-6 col-xs-12 mix 2024">
                      <div class="mu-single-gallery">
                        <div class="mu-single-gallery-item">
                          <div class="mu-single-gallery-img">
                            <a href="#"><img alt="img" src="assets/img/gallery/small/<?php echo $row["g_img"]; ?>"></a>
                          </div>
                          <div class="mu-single-gallery-info">
                            <div class="mu-single-gallery-info-inner">
                              <h4>Image Title</h4>
                              <p>Animation</p>
                              <a href="assets/img/gallery/big/<?php echo $row["g_img"]; ?>" data-fancybox-group="gallery" class="fancybox"><span class="fa fa-eye"></span></a>
                              <a href="#" class="aa-link"><span class="fa fa-link"></span></a>
                            </div>
                          </div>
                        </div>
                      </div>
                    </li>
                  <?php
                  }
                  ?>
                </ul>
              </div>
            </div>
            <!-- end gallery content -->
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- End gallery  -->

  <?php
  require_once "./includes/footer.php";
  ?>
  </body>

</html>