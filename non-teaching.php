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
    <?php
    }
    ?>
  <?php
  require_once "./includes/footer.php";
  ?>