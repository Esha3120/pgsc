<?php
    include "scheck.php";
      if(isset($_REQUEST['btnsubmit']))
      {
          
                $name=$_REQUEST['txt_name'];
                $email=$_REQUEST['txt_email'];
                $mobile_number=$_REQUEST['txt_mobile_number'];
                $subject=$_REQUEST['txt_subject'];
                $remark=$_REQUEST['txt_remark'];
                $date=date("Y/m/d");
               echo $q="insert into inquiry set
                    i_name='$name',
                    i_email='$email',
                    i_mobile_number='$mobile_number',
                    i_subject='$subject',
                    i_remark='$remark',
                    i_date='$date'
                  ";
                        
                     $res=mysqli_query($con,$q);
                 header("location:inquiry.php");
      }
      if(isset($_REQUEST['btndelete']))
      {
          $id=$_REQUEST['did'];
           $q="update inquiry set
            i_status=0 where i_id='$id'
          ";
        mysqli_query($con,$q);  
        header("location:inquiry.php");
      }
      if(isset($_REQUEST['btnedit']))
      {
        $name=$_REQUEST['txt_name'];
                $email=$_REQUEST['txt_email'];
                $mobile_number=$_REQUEST['txt_mobile_number'];
                $subject=$_REQUEST['txt_subject'];
                $remark=$_REQUEST['txt_remark'];
                $date=date("Y/m/d");
                $uid=$_REQUEST['uid'];
               echo $q="update inquiry set
                    i_name='$name',
                    i_email='$email',
                    i_mobile_number='$mobile_number',
                    i_subject='$subject',
                    i_remark='$remark',
                    i_date='$date'
                    where i_id = '$uid'
                  ";
        mysqli_query($con,$q);
       header("location:inquiry.php");
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
            <h1><button class="btn btn-info" id="show">Add Inquiry</button></h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index.php">Home</a></li>
              <li class="breadcrumb-item active">inquiry Page</li>
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
          <h3 class="card-title">Add inquiry</h3>

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
                    <label>Name:</label>
                    <input type="text"  class="form-control" name="txt_name" required="">
                </div>
                <div class="form-group">
                    <label>Email:</label>
                    <input type="email"  class="form-control" name="txt_email" required="">
                </div>
                <div class="form-group">
                    <label>Phone Number:</label>
                    <input type="tel"  class="form-control" name="txt_mobile_number" required="" maxlength="10">
                </div>
                <div class="form-group">
                    <label>Remark:</label>
                    <textarea  class="form-control" name="txt_remark" required=""></textarea>
                </div>
                <div class="form-group">
                    <label>Interested Subject</label>
                    <select class="form-control" name="txt_subject" required="">
                        <option value="">-----Select Subject-----</option>
                        <?php
                        $q="SELECT * FROM `course_mst` WHERE c_status = 1 and c_active = 1";
                        $res=mysqli_query($con,$q);
                       while ($row=mysqli_fetch_assoc($res)){
                        ?>
                        <option value="<?php echo $row['c_name']?>"><?php echo $row['c_name']?></option>
                        <?php
                         }
                      ?>
                    </select>
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
          <h3 class="card-title">View</h3>

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
                    <th>Phone Number</th>
                    <th>Subject</th>
                    <th>Remark</th>
                    <th>Date Time</th>
                    <th>Admitted</th>
                    <th>Action</th>
                  </tr>
                  </thead>
                  <tbody>
                      <?php
                      $q="SELECT * FROM `inquiry` WHERE i_status = 1 and  i_active = 1";
                      $res=mysqli_query($con,$q);
                      $i=1;
                      while ($row=mysqli_fetch_assoc($res)){
                        ?>
                        <tr>
                            <td><?php echo $i++?></td>
                            <td><?php echo $row['i_name']; ?></td>
                            <td><?php echo $row['i_email']; ?></td>
                            <td><?php echo $row['i_mobile_number'];?></td>
                            <td><?php echo $row['i_subject'];?></td>
                            <td><?php echo $row['i_remark']?></td>
                            <td><?php
                              echo date('d-M-Y',strtotime($row['i_date']));
                            ?></td>
                            <td>
                                            <a href="admission.php?id=<?php echo $row['i_id']?>"><button class="btn btn-primary btn-xs"><spam class=" fa fa-plus-circle"></spam> Admitted</button></a>
                                        </td>
                            <td>
                              
                                        <button type="button" class="btn btn-info btn-xs" data-toggle="modal" data-target="#modal-default<?php echo $row['i_id']?>"><i class="fa fa-pencil
"> Edit</i>
                                         </button>
                                         <button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#modal-delete<?php echo $row['i_id']?>"><i class="fa fa-trash
"> Delete</i>
                                         </button>
                                       </td>
                                        <div class="modal fade" id="modal-delete<?php echo $row['i_id']?>">
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
                                                  <input type="hidden" name="did" value="<?php echo $row['i_id']; ?>">
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
                                          <div class="modal fade" id="modal-default<?php echo $row['i_id']?>">
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
                                                    <input type="hidden" name="uid" value="<?php echo $row['i_id']?>">
                                                    <div class="form-group">
                                                        <label>Name:</label>
                                                        <input type="text"  class="form-control" name="txt_name" required="" value="<?php echo $row['i_name']?>">
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Email:</label>
                                                        <input type="email"  class="form-control" name="txt_email" required="" value="<?php echo $row['i_email']?>">
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Phone Number:</label>
                                                        <input type="tel"  class="form-control" name="txt_mobile_number" required="" maxlength="10" value="<?php echo $row['i_mobile_number']?>">
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Remark:</label>
                                                        <textarea  class="form-control" name="txt_remark" required=""><?php echo $row['i_remark']?></textarea>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Interested Subject</label>
                                                        <select class="form-control" name="txt_subject" required="">
                                                            <option value="">-----Select Subject-----</option>
                                                            <?php
                                                            $q="SELECT * FROM `course_mst` WHERE c_status = 1 and c_active = 1";
                                                            $res1=mysqli_query($con,$q);
                                                           while ($row1=mysqli_fetch_assoc($res1)){
                                                            if($row['i_subject']==$row1['c_name'])
                                                            {
                                                              ?>
                                                              <option value="<?php echo $row1['c_name']?>" selected><?php echo $row1['c_name']?></option>
                                                              <?php
                                                            }
                                                            else
                                                            {
                                                            ?>
                                                            <option value="<?php echo $row1['c_name']?>"><?php echo $row1['c_name']?></option>

                                                            <?php
                                                            }
                                                            }
                                                          ?>
                                                        </select>
                                                    </div>                                              </div>
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
                    <th>Phone Number</th>
                    <th>Subject</th>
                    <th>Remark</th>
                    <th>Date Time</th>
                    <th>Admitted</th>
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
<?php include "jquery.php"?>
<script>
$(document).ready(function(){
  $("#show").click(function(){
    $("#disp").show();
  });
});
</script>
</body>
</html>
