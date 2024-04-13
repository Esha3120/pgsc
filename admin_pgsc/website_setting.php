<?php
include "scheck.php";
if (isset($_REQUEST['btnsubmit'])) {
  if (
    $_FILES['logo']['type'] == "image/jpeg" or
    $_FILES['logo']['type'] == "image/jpg" or
    $_FILES['logo']['type'] == "image/png"
  ) {
    $logo = $_REQUEST['logo'];
    $email = $_REQUEST['email'];
    $contact = $_REQUEST['contact'];
    $video = $_REQUEST['video'];
    $address = $_REQUEST['address'];
    $status = $_REQUEST['status'];
    $img = date('dmy_') . rand(100000, 999999) . "_" . $_FILES['logo']['logo'];
    $q = "insert into website_setting set
                 logo='$logo',   
                 email='$email',
                    contact='$contact',
                    video='$video',
                    address='$address',
                    status='$status'
                  ";
    move_uploaded_file(
      $_FILES['logo']['logo'],
      "../assets/img/" . $img
    );
    $res = mysqli_query($con, $q);
    header("location:website_setting.php");
  }
}
if (isset($_REQUEST['btndelete'])) {
  $id = $_REQUEST['id'];
  $q = "update website_setting set
            status=0 where id='$id'
          ";
  mysqli_query($con, $q);
  header("location:website_setting.php");
}
if (isset($_REQUEST['btnedit'])) {
  if ($_FILES['logo']['name'] == "") {
    $logo = $_REQUEST['logo'];
    $email = $_REQUEST['email'];
    $contact = $_REQUEST['contact'];
    $video = $_REQUEST['video'];
    $address = $_REQUEST['address'];
    $status = $_REQUEST['status'];
    echo  $q = "update website_setting set
            logo='$logo',
            email='$email',
            contact='$contact',
            video='$video',
            address='$address',
            status='$status'
            where id='$id'
            ";
  } else {
    $logo = $_REQUEST['logo'];
    $email = $_REQUEST['email'];
    $contact = $_REQUEST['contact'];
    $video = $_REQUEST['video'];
    $address = $_REQUEST['address'];
    $status = $_REQUEST['status'];
    $id = $_REQUEST['id'];
    $logo = date('dmy_') . rand(100000, 999999) . "_" . $_FILES['logo']['name'];
    echo  $q = "update website_setting set
            logo='$logo',
            email='$email',
            contact='$contact',
            video='$video',
            address='$address',
            status='$status',
            where id='$id'
            ";
    move_uploaded_file(
      $_FILES['logo']['website_setting'],
      "../assets/img/academic/" . $img
    );
  }
  mysqli_query($con, $q);
  header("location:website_setting.php");
}

?>
<!DOCTYPE html>
<html>

<head>
  <?php include "link.php";

  ?>
</head>

<body class="hold-transition sidebar-mini">
  <!-- Site wrapper -->
  <div class="wrapper">
    <!-- Navbar -->
    <?php include "navbar.php" ?>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <?php include "aside.php" ?>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1><button class="btn btn-info" id="show">Add detail</button>
              </h1>
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                <li class="breadcrumb-item active">Web Setting</li>
              </ol>
            </div>
          </div>
        </div><!-- /.container-fluid -->
      </section>

      <!-- Main content -->
      <section class="content">

        <!-- Default box -->
        <div id="disp" style="display:none;">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title">Add detail</h3>

              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                  <i class="fas fa-minus"></i></button>
                <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                  <i class="fas fa-times"></i></button>
              </div>
            </div>
            <div class="card-body">
              <form method="post" enctype="multipart/form-data" class="swalDefaultSuccess">
                <div class="form-group">
                  <label>Logo</label>
                  <input type="file" class="form-control" name="logo" required="">
                </div>
                <div class="form-group">
                  <label>Email</label>
                  <input type="email" class="form-control" name="email" required="">
                </div>
                <div class="form-group">
                  <label>Contact</label>
                  <input type="number" class="form-control" name="contact" required="">
                </div>

                <div class="form-group">
                  <label>Video</label>
                  <input type="textbox" class="form-control" name="video" required="">
                </div>
                <div class="form-group">
                  <label>Address</label>
                  <input type="textbox" class="form-control" name="address" required="">
                </div>
                <div class="form-group">
                  <label>Status</label>
                  <input type="radio" name="status" required="" value="Active">Active
                  <input type="radio" name="status" required="" value="Inactive">Inactive
                </div>

                <input type="submit" name="btnsubmit" class="btn btn-info">
              </form>
            </div>
            <!-- /.card-body -->
            <div class="card-footer">
              Footer
            </div>
            <!-- /.card-footer-->
          </div>
        </div>
        <!-- /.card -->
        <div class="card">
          <div class="card-header">
            <h3 class="card-title">View Details</h3>

            <div class="card-tools">
              <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                <i class="fas fa-minus"></i></button>
              <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                <i class="fas fa-times"></i></button>
            </div>
          </div>
          <div class="card-body">
            <table id="example1" class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>SR.NO</th>
                  <th>Logo</th>
                  <th>Email</th>
                  <th>Contact</th>
                  <th>Video</th>
                  <th>Address</th>
                  <th>Status</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                <?php
                $q = "SELECT * FROM `website_setting` WHERE status = 0";
                $res = mysqli_query($con, $q);
                $i = 1;
                while ($row = mysqli_fetch_assoc($res)) {
                ?>
                  <tr>
                    <td><?php echo $i++ ?></td>
                    <td> <img src="../assets/img/<?php echo $row['logo']; ?>" height="50px" width="50px"></td>
                    <td><?php echo $row['email'] ?></td>
                    <td><?php echo $row['contact'] ?></td>
                    <td><?php echo $row['video'] ?></td>
                    <td><?php echo $row['address'] ?></td>
                    <td><?php echo $row['status'] ?></td>
                    <td>
                      <button type="button" class="btn btn-info btn-xs" data-toggle="modal" data-target="#modal-default<?php echo $row['id'] ?>"><i class="fa fa-pencil"> Edit</i>
                      </button>
                      <button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#modal-delete<?php echo $row['id'] ?>"><i class="fa fa-trash"> Delete</i>
                      </button>
                    </td>
                    <div class="modal fade" id="modal-delete<?php echo $row['id'] ?>">
                      <div class="modal-dialog">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h4 class="modal-title">Delete</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                          </div>
                          <div class="modal-body">
                            Are You Sure You Want To Delete
                            <form method="post" class="">
                              <input type="hidden" name="id" value="<?php echo $row['id']; ?>">
                          </div>
                          <div class="modal-footer justify-content-between">
                            <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
                            <button type="submit" class="btn btn-primary swalDefaultSuccess" name="btndelete">Yes</button>
                            </form>
                          </div>
                        </div>
                      </div>
                      <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
          </div>
          <div class="modal fade" id="modal-default<?php echo $row['id'] ?>">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h4 class="modal-title">Edit</h4>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  <form method="post" enctype="multipart/form-data" class="swalDefaultInfo">
                    <input type="hidden" name="eid" value="<?php echo $row['id'] ?>">
                    <div class="form-group">
                      <label>Logo</label>
                      <input type="file" class="form-control" required="" name="logo" value="<?php echo $row['logo'] ?>">
                    </div>
                    <div class="form-group">
                      <label>Email</label>
                      <input type="email" class="form-control" name="email" required="" value="<?php echo $row['email'] ?>">
                    </div>
                    <div class="form-group">
                      <label>Contact</label>
                      <input type="number" class="form-control" name="contact" required="" value="<?php echo $row['contact'] ?>">
                    </div>

                    <div class="form-group">
                      <label>Video</label>
                      <textarea type="textbox" class="form-control" name="video" required=""><?php echo $row['video'] ?></textarea>
                    </div>
                    <div class="form-group">
                      <label>Address</label>
                      <textarea type="textbox" class="form-control" name="address" required=""><?php echo $row['address'] ?></textarea>
                    </div>

                    <div class="form-group">
                      <label>Status</label>
                      <?php
                      if ($row['active'] == 'Active') {
                      ?>
                        <input type="radio" name="active" checked="" required="" value="1">Active
                        <input type="radio" name="active" value="Inactive">Inactive
                      <?php
                      } else {
                      ?>
                        <input type="radio" name="active" required="" value="active">Active
                        <input type="radio" name="active" checked="" value="Inactive">Inactive

                      <?php
                      }
                      ?>
                    </div>
                </div>
                <div class="modal-footer justify-content-between">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                  <button type="submit" class="btn btn-primary swalDefaultSuccess" name="btnedit">Save changes</button>
                  </form>
                </div>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
        </tr>
      <?php
                }
      ?>
      </tbody>
      <tfoot>
        <tr>
          <th>SR.NO</th>
          <th>Logo</th>
          <th>Email</th>
          <th>Contact</th>
          <th>Video</th>
          <th>Address</th>
          <th>Status</th>
          <th>Action</th>
        </tr>
      </tfoot>
    </div>
    </table>
  </div>
  <!-- /.card-body -->
  <div class="card-footer">
    Footer
  </div>
  <!-- /.card-footer-->
  </div>
  <!-- /.card -->

  </section>
  <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <footer class="main-footer">
    <?php include "foot.php" ?>
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
  </div>
  <!-- ./wrapper -->

  <!-- jQuery -->
  <?php include "jquery.php" ?>
  <script>
    $(document).ready(function() {
      $("#show").click(function() {
        $("#disp").show();
      });
    });
  </script>

</body>

</html>