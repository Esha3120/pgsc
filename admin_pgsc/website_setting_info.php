<?php
 include"scheck.php";
 if(isset($_REQUEST['btndelete']))
 {
     $id=$_REQUEST['did'];
      $q="update website_setting set
       status=0 where id='$id'
     ";
   mysqli_query($con,$q);  
   header("location: website_setting_info.php");
 }
if (isset($_REQUEST['btnedit'])) {
  if ($_FILES['txt_logo']['name'] == "") {
    $logo = $_FILES['txt_logo']['name'];
    $email = $_REQUEST['txt_email'];
    $contact = $_REQUEST['txt_contact'];
    $video = $_REQUEST['txt_video'];
    $address = $_REQUEST['txt_address'];
    $active = $_REQUEST['txt_active'];
    $uid = $_REQUEST['eid'];
    $q = "update  website_setting set
      logo='$logo',
      email='$email',
      contact='$contact',
      video='$video',
      address='$address',
      active='$active'
        where id='$uid'
        ";
  } else {
    $logo = $_FILES['txt_logo']['name'];
    $email = $_REQUEST['txt_email'];
    $contact = $_REQUEST['txt_contact'];
    $video = $_REQUEST['txt_video'];
    $address = $_REQUEST['txt_address'];
    $active = $_REQUEST['txt_active'];
    $uid = $_REQUEST['eid'];
    $q = "update  website_setting set
      logo='$logo',
      email='$email',
      contact='$contact',
      video='$video',
      address='$address',
      active='$active'
        where id='$uid'
        ";

    move_uploaded_file(
      $_FILES['txt_logo']['tmp_name'],
      "images/" . $_FILES['txt_logo']['name']
    );
  }
  mysqli_query($con, $q);
  header("location:website_setting_info.php");
}
?>
<!DOCTYPE html>
<html>

<head>
  <?php include "link.php" ?>
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
              <h1>View Staff Info</h1>
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                <li class="breadcrumb-item e">Staff info Page</li>
              </ol>
            </div>
          </div>
        </div><!-- /.container-fluid -->
      </section>

      <!-- Main content -->
      <section class="content">

        <!-- Default box -->
        <div class="card">
          <div class="card-header">
            <h3 class="card-title">Title</h3>

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
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                <?php
                $q = "select * from website_setting where status=1";
                $res = mysqli_query($con, $q);
                $i = 1;
                while ($row = mysqli_fetch_assoc($res)) {
                ?>
                  <tr>
                    <td><?php echo $i++ ?></td>
                    <td><img src="../assets/img/<?php echo $row['logo'] ?>" height="50px" width="50px"></td>
                    <td><?php echo $row['email'] ?></td>
                    <td><?php echo $row['contact'] ?></td>
                    <td><?php echo $row['video'] ?></td>
                    <td><?php echo $row['address'] ?></td>


                    <td>

                      <button type="button" class="btn btn-info btn-xs" data-toggle="modal" data-target="#modal-default<?php echo $row['id'] ?>"><i class="fa fa-pencil
"> Edit</i>
                      </button>
                      <button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#modal-delete<?php echo $row['id'] ?>"><i class="fa fa-trash
"> Delete</i>
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
                              <input type="hidden" name="did" value="<?php echo $row['id']; ?>">
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
                      <label for="inputDescription">Logo</label>
                      <input type="file" name="txt_logo" class="form-control">
                    </div>

                    <div class="form-group">
                      <label for="Url">Email</label>
                      <input type="Email" name="txt_email" class="form-control" required="" value="<?php echo $row['email']; ?>">
                    </div>
                    <div class="form-group">
                      <label for="inputDescription">Contact</label>
                      <input type="text" name="txt_contact" class="form-control" required="" value="<?php echo $row['contact']; ?>">
                    </div>
                    <div class="form-group">
                      <label for="inputDescription">Video</label>
                      <input type="text" name="txt_video" class="form-control" required="" value="<?php echo $row['video']; ?>">
                    </div>
                    <div class="form-group">
                      <label for="inputDescription">Address</label>
                      <input type="text" name="txt_address" class="form-control" required="" value="<?php echo $row['address']; ?>">
                    </div>
                    
                    <div class="form-group">
                    <label>Active</label>
                    <?php
                    if ($row['active'] == 1) {
                    ?>
                      <input type="radio" name="txt_active" checked="" required="" value="1">Active
                      <input type="radio" name="txt_active" value="0">Deactive
                    <?php
                    } else {
                    ?>
                      <input type="radio" name="txt_active" required="" value="1">Active
                      <input type="radio" name="txt_active" checked="" value="0">Deactive

                    <?php
                    }
                    ?>
                </div>
                <div class="modal-footer justify-content-between">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                  <button type="submit" class="btn btn-primary" name="btnedit">Save changes</button>
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
          <th>Action</th>
        </tr>
      </tfoot>
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
</body>

</html>