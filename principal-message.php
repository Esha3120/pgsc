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
            <h2>Principal Message</h2>
            <ol class="breadcrumb">
              <li><a href="index.php">Home</a></li>
              <li class="active">Principal's Message</li>
            </ol>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End breadcrumb -->
  <section id="mu-course-content">
    <div class="container">
      <?php
      $q = "select * from content_mst where co_type='principal'";
      $res = mysqli_query($con, $q);
      $row = mysqli_fetch_assoc($res);
      echo $row['co_content']
      ?>

    </div>
    </div>
  </section>
  <?php
  require_once "./includes/footer.php";
  ?>
  </body>

</html>