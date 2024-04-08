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

  <section id="mu-course-content">
    <div class="container">
      <div class="table-responsive">
        <table  class="table table-striped">
          <thead>
            <tr>
              <th>Sr.No</th>
              <th>Title</th>
              <th>Description</th>
              <th>Files</th>
            </tr>
          </thead>
          <tbody>
            <?php
            $q = "SELECT * FROM download_mst ";
            $res = mysqli_query($con, $q);
            $i = 1;
            while ($row = mysqli_fetch_assoc($res)) {
            ?>
              <tr>
                <td><?php echo $i++ ?></td>
                <td><?php echo $row['dw_title'] ?></td>
                <td><?php echo $row['dw_des'] ?></td>
                <td><a href="files/<?php echo $row['dw_file'] ?>" height="50px" width="50px">View</a></td>

              </tr>
            <?php
            }
            ?>
          </tbody>
        </table>
      
      </div>
    </div>
  </section>
  <?php
  require_once "./includes/footer.php";
  ?>