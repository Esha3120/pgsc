<?php 
  include"scheck.php";
  if(isset($_REQUEST['btndelete']))
  {
      $id=$_REQUEST['did'];
       $q="update teacher_mst set
        t_status=0 where t_id='$id'
      ";
    mysqli_query($con,$q);  
    header("location:teacher_info.php");
  }
  if(isset($_REQUEST['btnedit']))
  {
      if($_FILES['txt_img']['name']=="")
      {
        $fname=$_REQUEST['txt_fname'];
        $mname=$_REQUEST['txt_mname'];
        $lname=$_REQUEST['txt_lname'];
        $info=$_REQUEST['txt_info'];
        $designation=$_REQUEST['txt_designation'];
        $email=$_REQUEST['txt_email'];
        $mobile=$_REQUEST['txt_phonenumber'];
        $twitter=$_REQUEST['txt_twitter_url'];
        $facebook=$_REQUEST['txt_facebook_url'];
        $instrgram=$_REQUEST['txt_instrgram_url'];
        $linkedin=$_REQUEST['txt_linkedin_url'];
        $active=$_REQUEST['txt_active'];
        $uid=$_REQUEST['eid'];
      $q="update  teacher_mst set
        t_fname='$fname',
        t_mname='$mname',
        t_lname='$lname',
        t_info='$info',
        t_designation='$designation',
        t_email='$email',
        t_mobile_no='$mobile',
        t_twitter_url='$twitter',
        t_instgram_url='$instrgram',
        t_facebook_url='$facebook',
        t_linkedin_url='$linkedin',
        t_active='$active'
        where t_id='$uid'
        ";
      }
      else
      {
          $fname=$_REQUEST['txt_fname'];
        $mname=$_REQUEST['txt_mname'];
        $lname=$_REQUEST['txt_lname'];
        $info=$_REQUEST['txt_info'];
        $designation=$_REQUEST['txt_designation'];
        $email=$_REQUEST['txt_email'];
        $mobile=$_REQUEST['txt_phonenumber'];
        $twitter=$_REQUEST['txt_twitter_url'];
        $facebook=$_REQUEST['txt_facebook_url'];
        $instrgram=$_REQUEST['txt_instrgram_url'];
        $linkedin=$_REQUEST['txt_linkedin_url'];
        $img=$_FILES['txt_img']['name'];
        $active=$_REQUEST['txt_active'];
        $uid=$_REQUEST['eid'];
      $q="update  teacher_mst set
        t_fname='$fname',
        t_mname='$mname',
        t_lname='$lname',
        t_info='$info',
        t_designation='$designation',
        t_email='$email',
        t_mobile_no='$mobile',
        t_twitter_url='$twitter',
        t_instgram_url='$instrgram',
        t_facebook_url='$facebook',
        t_linkedin_url='$linkedin',
        t_active='$active',
        t_img='$img'
        where t_id='$uid'
        ";
         move_uploaded_file($_FILES['txt_img']['tmp_name'],
            "images/".$_FILES['txt_img']['name']);
      }
        mysqli_query($con,$q);
        header("location:teacher_info.php");
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
            <h1>View Teacher Info</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index.php">Home</a></li>
              <li class="breadcrumb-item e">Teacher info Page</li>
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
                    <th>info</th>
                    <th>Photo</th>
                    <th>Action</th>
                  </tr>
                  </thead>
                  <tbody>
                    <?php
                      $q="select * from teacher_mst where t_status=1";
                      $res=mysqli_query($con,$q);
                      $i=1;
                      while ($row=mysqli_fetch_assoc($res)) 
                      {
                          ?>
                            <tr>
                              <td><?php echo $i++?></td>
                              <td><?php echo $row['t_fname']." ".$row['t_mname']." ".$row['t_lname'] ?></td>
                              <td><?php echo $row['t_designation']?></td>
                              <td><?php echo $row['t_info']?></td>
                              <td><img src="images/<?php echo $row['t_img']?>" height="50px" width="50px"></td>
                                    <td>
                                    
                                        <button type="button" class="btn btn-info btn-xs" data-toggle="modal" data-target="#modal-default<?php echo $row['t_id']?>"><i class="fa fa-pencil
"> Edit</i>
                                         </button>
                                       <button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#modal-delete<?php echo $row['t_id']?>"><i class="fa fa-trash
"> Delete</i>
                                         </button>
                                       </td>
                                        <div class="modal fade" id="modal-delete<?php echo $row['t_id']?>">
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
                                                  <input type="hidden" name="did" value="<?php echo $row['t_id']; ?>">
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
                                          <div class="modal fade" id="modal-default<?php echo $row['t_id']?>">
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
                                                    <input type="hidden" name="eid" value="<?php echo $row['t_id']?>">
                                                    <div class="form-group">
                                                        <label for="inputDescription">First Name</label>
                                                        <input type="text" name="txt_fname" class="form-control" required="" value="<?php echo $row['t_fname'];?>">
                                                      </div>
                                                      <div class="form-group">
                                                        <label for="inputDescription">Middle Name</label>
                                                        <input type="text" name="txt_mname" class="form-control" required="" value="<?php echo $row['t_mname'];?>">
                                                      </div>
                                                      <div class="form-group">
                                                        <label for="inputDescription">Last Name</label>
                                                        <input type="text" name="txt_lname" class="form-control" required="" value="<?php echo $row['t_lname'];?>">
                                                      </div>
                                                      <div class="form-group">
                                                        <label for="inputDescription">designation</label>
                                                        <input type="text" name="txt_designation" class="form-control" required=""value="<?php echo $row['t_designation'];?>">
                                                      </div>
                                                      <div class="form-group">
                                                        <label for="inputDescription">Info</label>
                                                        <textarea name="txt_info" class="form-control" required=""><?php echo $row['t_info']?></textarea>
                                                      </div>
                                                        <div class="form-group">
                                                          <label>Intl US phone mask:</label>

                                                          <div class="input-group">
                                                            <div class="input-group-prepend">
                                                              <span class="input-group-text"><i class="fas fa-phone"></i></span>
                                                            </div>
                                                            <input type="text" class="form-control"
                                                                   pattern="[0-9]{10}" title="Enter Valid Mobile Number" required="" name="txt_phonenumber" value="<?php echo $row['t_mobile_no'];?>">
                                                          </div>
                                                          <!-- /.input group -->
                                                        </div>
                                                        <div class="form-group">
                                                        <label for="Url">Email</label>
                                                        <input type="Email" name="txt_email" class="form-control"required="" value="<?php echo $row['t_email'];?>">
                                                      </div>
                                                      <div class="form-group">
                                                        <label for="Url">Facebook URL</label>
                                                        <input type="url" name="txt_facebook_url" class="form-control" required=""value="<?php echo $row['t_facebook_url'];?>">
                                                      </div>
                                                      <div class="form-group">
                                                        <label for="Url">Twitter URL</label>
                                                        <input type="url" name="txt_twitter_url" class="form-control"required=""value="<?php echo $row['t_twitter_url'];?>">
                                                      </div>
                                                      <div class="form-group">
                                                        <label for="Url">Linkedin URL</label>
                                                        <input type="url" name="txt_linkedin_url" class="form-control" required=""
                                                        value="<?php echo $row['t_linkedin_url'];?>">
                                                      </div>
                                                      <div class="form-group">
                                                        <label for="Url">Instrgram URL</label>
                                                        <input type="url" name="txt_instrgram_url" class="form-control" required=""value="<?php echo $row['t_instgram_url'];?>">
                                                      </div>
                                                      <div class="form-group">
                                                        <label>Active</label>
                                                        <?php
                                                          if($row['t_active']==1)
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
                                                      <div class="form-group">
                                                        <label for="inputDescription">Photo</label>
                                                        <input type="file" name="txt_img" class="form-control">
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
                    <th>SR>NO</th>
                    <th>Name</th>
                    <th>Subject</th>
                    <th>info</th>
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
