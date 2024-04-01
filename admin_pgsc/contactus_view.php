<?php 
  include"scheck.php";
  if(isset($_REQUEST['btndelete']))
  {
      $id=$_REQUEST['did'];
       $q="update contact_us_mst set
        cu_status=0 where cu_id='$id'
      ";
    mysqli_query($con,$q);  
    header("location:contactus_view.php");
  }
  if(isset($_REQUEST['btnedit']))
  {
        $name=$_REQUEST['txt_name'];
        $email=$_REQUEST['txt_email'];
        $mobile=$_REQUEST['txt_phonenumber'];
        $message=$_REQUEST['txt_message'];
        $active=$_REQUEST['txt_active'];
        $uid=$_REQUEST['eid'];
     $q="update  contact_us_mst set
        cu_name='$name',
        cu_email='$email',
        cu_mobile_no='$mobile',
        cu_message='$message',
        cu_active='$active'
        where cu_id='$uid'
        ";
      
        mysqli_query($con,$q);
        header("location:contactus_view.php");
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
            <h1>View Contact us Info</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index.php">Home</a></li>
              <li class="breadcrumb-item e">Contact Us</li>
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
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone No</th>
                    <th>Message</th>
                    <th>Action</th>
                  </tr>
                  </thead>
                  <tbody>
                    <?php
                      $q="SELECT * FROM `contact_us_mst` WHERE cu_status = 1";
                      $res=mysqli_query($con,$q);
                      $i=1;
                      while ($row=mysqli_fetch_assoc($res)) 
                      {
                          ?>
                            <tr>
                              <td><?php echo $i++?></td>
                              <td><?php echo $row['cu_name']?></td>
                              <td><?php echo $row['cu_email']?></td>
                              <td><?php echo $row['cu_mobile_no']?></td>
                              <td><?php echo $row['cu_message']?></td>
                                    <td>
                                        <button  type="button" class="btn btn-info btn-xs" data-toggle="modal" data-target="#modal-default<?php echo $row['cu_id']?>"><i class="fa fa-pencil
"> Edit</i>
                                         </button>
                                         <button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#modal-delete<?php echo $row['cu_id']?>"><i class="fa fa-trash
"> Delete</i>
                                         </button>
                                       </td>
                                        <div class="modal fade" id="modal-delete<?php echo $row['cu_id']?>">
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
                                                  <input type="hidden" name="did" value="<?php echo $row['cu_id']; ?>">
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
                                          <div class="modal fade" id="modal-default<?php echo $row['cu_id']?>">
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
                                                    <input type="hidden" name="eid" value="<?php echo $row['cu_id']?>">
                                                    <div class="form-group">
                                                        <label for="inputDescription">Name</label>
                                                        <input type="text" name="txt_name" class="form-control" required="" value="<?php echo $row['cu_name'];?>">
                                                      </div>
                                                        <div class="form-group">
                                                        <label for="Url">Email</label>
                                                        <input type="Email" name="txt_email" class="form-control"required="" value="<?php echo $row['cu_email'];?>" required>
                                                        </div>
                                                        <div>
                                                            <label>Mobile Number</label>
                                                            <input type="text" name="txt_phonenumber" value="<?php echo $row['cu_mobile_no']?>" class="form-control" required>
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Message</label>
                                                            <textarea class="form-control" name="txt_message" required=""><?php echo $row['cu_message']?></textarea>
                                                        </div>
                                                      <div class="form-group">
                                                        <label>Active</label>
                                                        <?php
                                                          if($row['cu_active']==1)
                                                          {
                                                            ?>
                                                            <input type="radio" name="txt_active" checked="" required="" value="1">Active
                                                            <input type="radio" name="txt_active" value="0">Deactive
                                                            <?php
                                                          }
                                                          else
                                                          {
                                                            ?>
                                                            <input type="radio" name="txt_active" required="" value="1">Active
                                                            <input type="radio" name="txt_active" checked="" value="0">Deactive

                                                            <?php
                                                          }
                                                        ?>
                                                      </div>
                                                      
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
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone No</th>
                    <th>Message</th>
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
<?php include "jquery.php"?>
</body>
</html>
