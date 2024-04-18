<!DOCTYPE html>
<html lang="en">

<head>
  <?php
  require_once "conn.php";
  require_once "./includes/header.php";
  ?>
</head>

<body>
  <!-- Page breadcrumb -->
  <section id="mu-page-breadcrumb">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="mu-page-breadcrumb-area">
            <h2>Events</h2>
            <ol class="breadcrumb">
              <li><a href="#">Home</a></li>
              <li class="active">Events</li>
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
                  <li class="filter" data-filter=".2024">2024-2023</li>
                  <li class="filter" data-filter=".2023">2023-2022</li>
                  <li class="filter" data-filter=".2022">2022-2021</li>
                </ul>
              </div>
              <!-- End gallery menu -->
              <div class="mu-gallery-body">
                <ul id="mixit-container" class="row">
                  <?php
                  $q = "SELECT * FROM `events` WHERE e_status = 1 ORDER BY e_year DESC";
                  $res = mysqli_query($con, $q);
                  while ($row = mysqli_fetch_assoc($res)) {
                  ?>
                    <li class="col-md-4 col-sm-6 col-xs-12 mix <?php echo $row['e_year']; ?>">
                      <div class="mu-single-gallery">
                        <div class="mu-single-gallery-item">
                          <div class="mu-single-gallery-img">
                            <img src="assets/img/events/<?php echo $row["e_img"]; ?>">
                          </div>
                          <div class="mu-single-gallery-info">
                            <div class="mu-single-gallery-info-inner">
                              <h4><?php echo $row["e_heading"]; ?></h4>
                              <p><?php echo $row["e_des"]; ?></p>
                              <a href="assets/img/events/<?php echo $row["e_img"]; ?>" data-fancybox-group="gallery" class="fancybox"><span class="fa fa-eye"></span></a>
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
