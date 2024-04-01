<?php
    include "scheck.php";
      if(isset($_REQUEST['btnsubmit']))
      {
                  if($_FILES['txt_img']['type']=="image/jpeg" or
            $_FILES['txt_img']['type']=="image/jpg" or 
            $_FILES['txt_img']['type']=="image/png"
            )
            {
                $heading=$_REQUEST['txt_heading'];
                $img=$_FILES['txt_img']['name'];
                 $q="insert into slider_mst set
                    sd_heading='$heading',
                    sd_img='$img'
                  ";
                        move_uploaded_file($_FILES['txt_img']['tmp_name'],
                        "images/slider/".$_FILES['txt_img']['name']);
                     $res=mysqli_query($con,$q);
                 header("location:slider.php");
            }
      }
      if(isset($_REQUEST['btndelete']))
      {
          $id=$_REQUEST['did'];
           $q="update slider_mst set
            sd_status=0 where sd_id='$id'
          ";
        mysqli_query($con,$q);  
        header("location:slider.php");
      }
      if(isset($_REQUEST['btnedit']))
      {
        if($_FILES['txt_img']['name']=="")
        {
            $heading=$_REQUEST['txt_heading'];
            $active=$_REQUEST['txt_active'];
            $uid=$_REQUEST['eid'];
          echo  $q="update slider_mst set
            sd_heading='$heading',
            sd_active='$active'
            where sd_id='$uid'
            ";
       }
       else
      {
        $heading=$_REQUEST['txt_heading'];
        $active=$_REQUEST['txt_active'];
        $uid=$_REQUEST['eid'];
        $img=$_FILES['txt_img']['name'];
        $q="update slider_mst set
        sd_heading='$heading',
        sd_active='$active',
        sd_img='$img'
        where sd_id='$uid'
        ";
         move_uploaded_file($_FILES['txt_img']['tmp_name'],
            "images/slider/".$_FILES['txt_img']['name']);
      }
        mysqli_query($con,$q);
       header("location:slider.php");
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
            <h1>Slider Page</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index.php">Home</a></li>
              <li class="breadcrumb-item active">Slider Page</li>
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
          <h3 class="card-title">Add Slider</h3>

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
                    <label>Heading</label>
                    <textarea class="form-control" name="txt_heading" required=""></textarea>
                </div>
                <div class="form-group">
                    <label>Slider Image</label>
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
      <!-- /.card -->
       <div class="card">
        <div class="card-header">
          <h3 class="card-title">View Slider</h3>

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
                    <th>Photo</th>
                    <th>Action</th>
                  </tr>
                  </thead>
                  <tbody>
                      <?php
                        $q="SELECT * FROM `slider_mst` WHERE sd_status = 1";
                      $res=mysqli_query($con,$q);
                      $i=1;
                      while ($row=mysqli_fetch_assoc($res)){
                        ?>
                        <tr>
                            <td><?php echo $i++?></td>
                            <td><?php echo $row['sd_heading']?></td>
                            <td><img src="images/slider/<?php echo $row['sd_img']?>" height="50px" width="50px"></td>
                            <td>
                                        <button type="button" class="btn btn-info btn-xs" data-toggle="modal" data-target="#modal-default<?php echo $row['sd_id']?>"><i class="fa fa-pencil
"> Edit</i>
                                         </button>
                                         <button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#modal-delete<?php echo $row['sd_id']?>"><i class="fa fa-trash
"> Delete</i>
                                         </button>
                                       </td>
                                        <div class="modal fade" id="modal-delete<?php echo $row['sd_id']?>">
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
                                                  <input type="hidden" name="did" value="<?php echo $row['sd_id']; ?>">
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
                                          <div class="modal fade" id="modal-default<?php echo $row['sd_id']?>">
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
                                                    <input type="hidden" name="eid" value="<?php echo $row['sd_id']?>">
                                                      <div class="form-group">
                                                          <label>Heading</label>
                                                          <textarea class="form-control" required="" name="txt_heading"><?php echo $row['sd_heading']?></textarea>
                                                      </div>
                                                      <div class="form-group">
                                                        <label>Active</label>
                                                        <?php
                                                          if($row['sd_active']==1)
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
                            </td>
                        </tr>
                        <?php
                      }
                      ?>
                  </tbody>
                  <tfoot>
                  <tr>
                    <th>SR.NO</th>
                    <th>Name</th>
                    <th>Photo</th>
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
</body>
</html>
