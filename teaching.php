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
              <th>Image</th>
              <th>Name</th>
              <th>Subject</th>
              <th>Designation</th>
              <th>Email</th>
              
            </tr>
          </thead>
          <tbody>
            <?php
            $q = "SELECT * FROM staff WHERE s_type='teaching'";
            $res = mysqli_query($con, $q);
            $i = 1;
            while ($row = mysqli_fetch_assoc($res)) {
            ?>
              <tr>
                <td><?php echo $i++ ?></td>
                <td><img src="admin_pgsc/img/<?php echo $row['img'] ?>" height="80px" width="80px" style="border-radius: 50%;"></td>
                <td><?php echo $row['name'] ?></td>
                <td><?php echo $row['subject'] ?></td>
                <td><?php echo $row['designation'] ?></td>
                <td><?php echo $row['email'] ?></td>
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