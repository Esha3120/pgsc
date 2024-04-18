<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>

<body>
  <!-- Start footer -->
  <footer id="mu-footer">
    <!-- start footer top -->
    <div class="mu-footer-top">
      <div class="container">
        <div class="mu-footer-top-area">
          <div class="row">
          <div class="col-lg-2 col-md-2 col-sm-2">
              <div class="mu-footer-widget">
                <h4>Home</h4>
              </div>
          </div>
            <div class="col-lg-2 col-md-2 col-sm-2">
              <div class="mu-footer-widget">
                <h4>About Us</h4>
                <ul>
                  <li><a href="about-trust.php">About Trust</a></li>
                  <li><a href="principal-message.php">Principal's Message</a></li>
                  
                </ul>
              </div>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-2">
              <div class="mu-footer-widget">
                <h4>Academic</h4>
                <ul>
                  <li><a href="chemistry.php">B.Sc Chemistry</a></li>
                  <li><a href="mathematics.php">B.Sc Mathematics</a></li>
                  <li><a href="bio-science.php">B.Sc BioScience</a></li>
                </ul>
              </div>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-2">
              <div class="mu-footer-widget">
                <h4>Community</h4>
                <ul>
                  <li><a href="faculty.php">Faculty</a></li>
                  <li><a href="#">Activity</a></li>
                  <li><a href="">Events</a></li>
                  <li><a href="">Gallery</a></li>
                  <li><a href="">Student's Achievement</a></li>
                  <li><a href="">Sports</a></li>
                  <li><a href="">Extra Curricular</a></li>
                </ul>
              </div>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-2">
              <div class="mu-footer-widget">
                <h4>Student Corner</h4>
                <ul>
                  <li><a href="download.php">Downloads</a></li>
              
                </ul>
              </div>
            </div>
            
            <div class="col-lg-2 col-md-2 col-sm-2">
              <div class="mu-footer-widget">
                <h4>Contact Us </h4>
                <address>
                <?php
                  $q = "SELECT * FROM `website_setting` WHERE status = 1 limit 1";
                  $res = mysqli_query($con, $q);
                  $i = 1;
                  while ($row = mysqli_fetch_assoc($res)) {
                  ?>
                  <p><?php echo $row['address'] ?></p>
                  <p>PHONE: <?php echo $row['contact'] ?></p>
                  
                  <p>Email:<?php echo $row['email'] ?></p>
                  <?php
                  }
                  ?>
                </address>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- end footer top -->
    <!-- start footer bottom -->
    <div class="mu-footer-bottom">
      <div class="container">
        <div class="mu-footer-bottom-area">
          <p>&copy; All Right Reserved. Designed by <a href="http://www.markups.io/" rel="nofollow">Banana SoftInfotech</a></p>
        </div>
      </div>
    </div>
    <!-- end footer bottom -->
  </footer>
  <!-- End footer -->

  <!-- jQuery library -->
  <script src="assets/js/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="assets/js/bootstrap.js"></script>
  <!-- Slick slider -->
  <script type="text/javascript" src="assets/js/slick.js"></script>
  <!-- Counter -->
  <script type="text/javascript" src="assets/js/waypoints.js"></script>
  <script type="text/javascript" src="assets/js/jquery.counterup.js"></script>
  <!-- Mixit slider -->
  <script type="text/javascript" src="assets/js/jquery.mixitup.js"></script>
  <!-- Add fancyBox -->
  <script type="text/javascript" src="assets/js/jquery.fancybox.pack.js"></script>


  <!-- Custom js -->
  <script src="assets/js/custom.js"></script>

</body>

</html>