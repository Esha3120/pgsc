<?php 
  include"scheck.php";
  
  if(isset($_REQUEST['btndelete']))
  {
      $id=$_REQUEST['did'];
       $q="update staff set
       s_status=0 where id='$id'
     ";
    mysqli_query($con,$q);  
    header("location:staff_info.php");
  }
  if(isset($_REQUEST['btnedit']))
  {
      if($_FILES['txt_img']['name']=="")
      {
        $name=$_REQUEST['txt_name'];
        $designation=$_REQUEST['txt_designation'];
        $subject=$_REQUEST['txt_subject'];
        $email=$_REQUEST['txt_email'];
        $s_type=$_REQUEST['txt_stype'];
        $img=$_FILES['txt_img']['name'];
        $active=$_REQUEST['txt_active'];
        $uid=$_REQUEST['eid'];
      $q="update  staff set
      name='$name',
      designation='$designation',
      subject='$subject',
      email='$email',
      s_type='$s_type',
      img='$img',
      s_active='$active'
        where id='$uid'
        ";
      }
      else
      {
        $name=$_REQUEST['txt_name'];
        $designation=$_REQUEST['txt_designation'];
        $subject=$_REQUEST['txt_subject'];
        $email=$_REQUEST['txt_email'];
        $s_type=$_REQUEST['txt_stype'];
        $img=$_FILES['txt_img']['name'];
        $active=$_REQUEST['txt_active'];
        $uid=$_REQUEST['eid'];
      $q="update  staff set
      name='$name',
      designation='$designation',
      subject='$subject',
      email='$email',
      s_type='$s_type',
      img='$img',
      s_active='$active',
        where id='$uid'
        ";
         move_uploaded_file($_FILES['txt_img']['tmp_name'],
            "images/".$_FILES['txt_img']['name']);
      }
        mysqli_query($con,$q);
        header("location:staff_info.php");
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
                    <th>Name</th>
                    <th>Subject</th>
                    <th>Designation</th>
                    <th>Email</th>
                    <th>Image</th>
                    <th>Staff Type</th>
                    <th>Action</th>
                  </tr>
                  </thead>
                  <tbody>
                    <?php
                      $q="select * from staff";
                      $res=mysqli_query($con,$q);
                      $i=1;
                      while ($row=mysqli_fetch_assoc($res)) 
                      {
                          ?>
                            <tr>
                              <td><?php echo $i++?></td>
                              <td><?php echo $row['name'] ?></td>
                              <td><?php echo $row['subject'] ?></td>
                              <td><?php echo $row['designation']?></td>
                              <td><?php echo $row['email']?></td>
                              <td><?php echo $row['s_type']?></td>
                              <td><img src="img/<?php echo $row['img']?>" height="50px" width="50px"></td>
                                    <td>
                                    
                                        <button type="button" class="btn btn-info btn-xs" data-toggle="modal" data-target="#modal-default<?php echo $row['id']?>"><i class="fa fa-pencil
"> Edit</i>
                                         </button>
                                       <button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#modal-delete<?php echo $row['id']?>"><i class="fa fa-trash
"> Delete</i>
                                         </button>
                                       </td>
                                        <div class="modal fade" id="modal-delete<?php echo $row['id']?>">
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
                                          <div class="modal fade" id="modal-default<?php echo $row['id']?>">
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
                                                    <input type="hidden" name="eid" value="<?php echo $row['id']?>">
                                                    <div class="form-group">
                                                        <label for="inputDescription">Name</label>
                                                        <input type="text" name="txt_name" class="form-control" required="" value="<?php echo $row['name'];?>">
                                                      </div>
                                                      <div class="form-group">
                                                        <label for="inputDescription">Subject</label>
                                                        <input type="text" name="txt_subject" class="form-control" required=""value="<?php echo $row['subject'];?>">
                                                      </div>
                                                      <div class="form-group">
                                                        <label for="inputDescription">designation</label>
                                                        <input type="text" name="txt_designation" class="form-control" required=""value="<?php echo $row['designation'];?>">
                                                      </div>
                                                          <!-- /.input group -->
                                                        
                                                        <div class="form-group">
                                                        <label for="Url">Email</label>
                                                        <input type="Email" name="txt_email" class="form-control"required="" value="<?php echo $row['email'];?>">
                                                      </div>
                                                      
                                                      <div class="form-group">
                                                        <label for="Url">Staff Type</label>
                                                        <input type="text" name="txt_stype" class="form-control"required="" value="<?php echo $row['s_type'];?>">
                                                      </div>
                                                      <div class="form-group">
                                                        <label for="inputDescription">Image</label>
                                                        <input type="file" name="txt_img" class="form-control">
                                                      </div>
                                                      <?php
                                                          if($row['s_active']==1)
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
                    <th>Subject</th>
                    <th>Designation</th>
                    <th>Email</th>
                    <th>Staff Type</th>
                    <th>Photo</th>
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
