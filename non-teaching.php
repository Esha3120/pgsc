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
        <table border="3" class="table">
          <thead>
            <tr>
              <th>Sr.No</th>
              <th>Name</th>
              <th>Designation</th>
              <th>Image</th>
            </tr>
          </thead>
          <tbody>
            <?php
            $q = "SELECT * FROM staff WHERE s_type='non-teaching'";
            $res = mysqli_query($con, $q);
            $i = 1;
            while ($row = mysqli_fetch_assoc($res)) {
            ?>
              <tr>
                <td><?php echo $i++ ?></td>
                <td><?php echo $row['name'] ?></td>
                <td><?php echo $row['designation'] ?></td>
                <td><img src="admin_pgsc/img/<?php echo $row['img'] ?>" height="50px" width="50px"></td>
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