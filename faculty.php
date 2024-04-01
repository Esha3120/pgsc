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
            <h2>Faculty</h2>
            <ol class="breadcrumb">
              <li><a href="index.php">Home</a></li>
              <li class="active">Staff</li>
            </ol>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End breadcrumb -->
    
    

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
  <section id="mu-course-content">
  <div class="container">
  <h1>Staff</h1>
  <hr>
  <p>Our college has a team of competent, experienced and trained professionals in the fields of Science.</p><br>
  <a href="teaching.php">Members of the Teaching staff</a><br><br>
  <a href="non-teaching.php">Members of the Non-Teaching staff</a>
  </div>
</div>
  </section>

  <?php
  require_once "./includes/footer.php";
  ?>