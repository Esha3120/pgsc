<?php
    include "scheck.php";
      if(isset($_REQUEST['btnsubmit']))
      {
                  if($_FILES['txt_img']['type']=="image/jpeg" or
            $_FILES['txt_img']['type']=="image/jpg" or 
            $_FILES['txt_img']['type']=="image/png"
            )
            {
                $name=$_REQUEST['txt_name'];
                $fees=$_REQUEST['txt_fees'];
                $month=$_REQUEST['txt_month'];
                $des=$_REQUEST['txt_des'];
                $img=date('dmy_').rand(100000,999999)."_".$_FILES['txt_img']['name'];
                 $q="insert into course_mst set
                    c_name='$name',
                    c_fees='$fees',
                    c_month='$month',
                    c_des='$des',
                    c_img='$img'
                  ";
                        move_uploaded_file($_FILES['txt_img']['tmp_name'],
                        "../assets/img/academic/".$img);
                     $res=mysqli_query($con,$q);
                 header("location:course.php");
            }
      }
      if(isset($_REQUEST['btndelete']))
      {
          $id=$_REQUEST['did'];
           $q="update course_mst set
            c_status=0 where c_id='$id'
          ";
        mysqli_query($con,$q);  
        header("location:course.php");
      }
      if(isset($_REQUEST['btnedit']))
      {
        if($_FILES['txt_img']['name']=="")
        {
            $name=$_REQUEST['txt_name'];
            $fees=$_REQUEST['txt_fees'];
            $month=$_REQUEST['txt_month'];
            $des=$_REQUEST['txt_des'];
            $active=$_REQUEST['txt_active'];
            $uid=$_REQUEST['eid'];
            echo  $q="update course_mst set
            c_name='$name',
            c_fees='$fees',
            c_month='$month',
            c_des='$des',
            c_active='$active'
            where c_id='$uid'
            ";
       }
       else
      {
        $name=$_REQUEST['txt_name'];
            $fees=$_REQUEST['txt_fees'];
            $month=$_REQUEST['txt_month'];
            $des=$_REQUEST['txt_des'];
            $active=$_REQUEST['txt_active'];
            $uid=$_REQUEST['eid'];
            $img=date('dmy_').rand(100000,999999)."_".$_FILES['txt_img']['name'];
            echo  $q="update course_mst set
            c_name='$name',
            c_fees='$fees',
            c_month='$month',
            c_des='$des',
            c_active='$active',
            c_img='$img'
            where c_id='$uid'
            ";
            move_uploaded_file($_FILES['txt_img']['tmp_name'],
        "../assets/img/academic/".$img);
      }
        mysqli_query($con,$q);
      header("location:course.php");
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
            <h1><button class="btn btn-info" id="show">Add Course</button>
              </h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index.php">Home</a></li>
              <li class="breadcrumb-item active">Course Page</li>
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
          <h3 class="card-title">Add Course</h3>

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
                    <label>Name</label>
                    <input type="text"  class="form-control" name="txt_name" required="">
                </div>
                <div class="form-group">
                    <label>Fess</label>
                    <input type="number"  class="form-control" name="txt_fees" required="">
                </div>
                <div class="form-group">
                    <label>Total Mounth of Course Time</label>
                    <input type="number"  class="form-control" name="txt_month" required="">
                </div>
                <div class="form-group">
                    <label>Description</label>
                    <textarea  class="form-control" name="txt_des" required=""></textarea>
                </div>
                <div class="form-group">
                    <label>Image</label>
                    <input type="file" name="txt_img" required="" class="form-control">
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
          <h3 class="card-title">View Course</h3>

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
                    <th>Fees</th>
                    <th>Totla Month</th>
                    <th>Description</th>
                    <th>Img</th>
                    <th>Action</th>
                  </tr>
                  </thead>
                  <tbody>
                      <?php
                        $q="SELECT * FROM `course_mst` WHERE c_status = 1";
                      $res=mysqli_query($con,$q);
                      $i=1;
                      while ($row=mysqli_fetch_assoc($res)){
                        ?>
                        <tr>
                            <td><?php echo $i++?></td>
                            <td><?php echo $row['c_name']?></td>
                            <td><?php echo $row['c_fees']?></td>
                            <td><?php echo $row['c_month']?></td>
                            <td><?php echo $row['c_des']?></td>
                            <td><img src="../assets/img/academic/<?php echo $row['c_img']?>" height="50px" width="50px"></td>
                            <td>
                                        <button type="button" class="btn btn-info btn-xs" data-toggle="modal" data-target="#modal-default<?php echo $row['c_id']?>"><i class="fa fa-pencil
"> Edit</i>
                                         </button>
                                         <button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#modal-delete<?php echo $row['c_id']?>"><i class="fa fa-trash
"> Delete</i>
                                         </button>
                                       </td>
                                       <div class="modal fade" id="modal-delete<?php echo $row['c_id']?>">
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
                                                  <input type="hidden" name="did" value="<?php echo $row['c_id']; ?>">
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
                                          <div class="modal fade" id="modal-default<?php echo $row['c_id']?>">
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
                                                    <input type="hidden" name="eid" value="<?php echo $row['c_id']?>">
                                                      <div class="form-group">
                                                          <label>Name</label>
                                                          <input type="text"class="form-control" required="" name="txt_name" value="<?php echo $row['c_name']?>">
                                                      </div>
                                                      <div class="form-group">
                                                          <label>Fees</label>
                                                          <input type="number"  class="form-control" name="txt_fees" required="" value="<?php echo $row['c_fees']?>">
                                                      </div>
                                                      <div class="form-group">
                                                          <label>Month</label>
                                                          <input type="number"  class="form-control" name="txt_month" required="" value="<?php echo $row['c_month']?>">
                                                      </div>
                                                      <div class="form-group">
                                                          <label>Description</label>
                                                          <textarea type="text" class="form-control" name="txt_des" required="" ><?php echo $row['c_des']?></textarea>
                                                      </div>
                                                      <div class="form-group">
                                                          <label>Image</label>
                                                          <input type="file" name="txt_img" class="form-control">
                                                      </div>
                                                      <div class="form-group">
                                                        <label>Active</label>
                                                        <?php
                                                          if($row['c_active']==1)
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
                    <th>Name</th>
                    <th>Fees</th>
                    <th>Totla Month</th>
                    <th>Description</th>
                    <th>Img</th>
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
