<?php
    include "scheck.php";
      if(isset($_REQUEST['btnsubmit']))
      {
          if($_FILES['txt_file']['type']=="application/pdf"
            )
            {
                $title=$_REQUEST['txt_title'];
                $des=$_REQUEST['txt_des'];
                $file=date('dmy_').rand(100000,999999)."_".$_FILES['txt_file']['name'];
               echo $q="insert into download_mst set
                    dw_title='$title',
                    dw_des='$des',
                    dw_file='$file'
                  ";
                        move_uploaded_file($_FILES['txt_file']['tmp_name'],
                        "../files".$file);
                     $res=mysqli_query($con,$q);
                 header("location:download.php");
            }
      }
      if(isset($_REQUEST['btndelete']))
      {
          $id=$_REQUEST['did'];
           $q="update download_mst set
            dw_status=0 where dw_id='$id'
          ";
        mysqli_query($con,$q);  
        header("location:download.php");
      }
      if(isset($_REQUEST['btnedit']))
      {
        if($_FILES['txt_file']['type']=="")
        {
            $title=$_REQUEST['txt_title'];
            $des=$_REQUEST['txt_des'];
            $active=$_REQUEST['txt_active'];
            $uid=$_REQUEST['eid'];
         $q="update download_mst set
            dw_title='$title',
            dw_des='$des',
            dw_active='$active'
            where dw_id='$uid'
            ";
       }
       else
      {
        $title=$_REQUEST['txt_title'];
        $des=$_REQUEST['txt_des'];
        $active=$_REQUEST['txt_active'];
        $uid=$_REQUEST['eid'];
        $file=date('dmy_').rand(100000,999999)."_".$_FILES['txt_file']['name'];
       $q="update download_mst set
            dw_title='$title',
            dw_des='$des',
            dw_active='$active',
            dw_file='$file
            where dw_id='$uid'
            ";
        move_uploaded_file($_FILES['txt_file']['tmp_name'],
                        "../files/".$file);
      }
        mysqli_query($con,$q);
       header("location:download.php");
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
            <h1><button class="btn btn-info" id="show">Add Downloads</button></h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index.php">Home</a></li>
              <li class="breadcrumb-item active">Download Page</li>
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
          <h3 class="card-title">Add Download</h3>

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
                    <label>tile</label>
                    <input type="text"  class="form-control" name="txt_title" required="">
                </div>
                <div class="form-group">
                    <label>Description</label>
                    <textarea  class="form-control" name="txt_des" required="" ></textarea>
                </div>
                <div class="form-group">
                    <label>PDF</label>
                    <input type="file" name="txt_file" required="" class="form-control" accept="application/pdf">
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
          <h3 class="card-title">View Testimonail</h3>

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
                    <th>Title</th>
                    <th>Description</th>
                    <th>PDF</th>
                    <th>Action</th>
                  </tr>
                  </thead>
                  <tbody>
                      <?php
                        $q="SELECT * FROM `download_mst` WHERE dw_status = 1 ";
                      $res=mysqli_query($con,$q);
                      $i=1;
                      while ($row=mysqli_fetch_assoc($res)){
                        ?>
                        <tr>
                            <td><?php echo $i++?></td>
                            <td><?php echo $row['dw_title']?></td>
                            <td><?php echo $row['dw_des']?></td>
                            <td><embed  src="../files/<?php echo $row['dw_file']?>" height="50px" width="50px"></td>
                            <td>
                              
                                        <button type="button" class="btn btn-info btn-xs" data-toggle="modal" data-target="#modal-default<?php echo $row['dw_id']?>"><i class="fa fa-pencil
"> Edit</i>
                                         </button>
                                         <button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#modal-delete<?php echo $row['dw_id']?>"><i class="fa fa-trash
"> Delete</i>
                                         </button>
                                       </td>
                                        <div class="modal fade" id="modal-delete<?php echo $row['dw_id']?>">
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
                                                  <input type="hidden" name="did" value="<?php echo $row['dw_id']; ?>">
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
                                          <div class="modal fade" id="modal-default<?php echo $row['dw_id']?>">
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
                                                    <input type="hidden" name="eid" value="<?php echo $row['dw_id']?>">
                                                      <div class="form-group">
                                                          <label>Title</label>
                                                          <textarea class="form-control" required="" name="txt_title" ><?php echo $row['dw_title']?></textarea>
                                                      </div>
                                                      <div class="form-group">
                                                          <label>Description</label>
                                                          <textarea type="text" class="form-control" name="txt_des" required=""><?php echo $row['dw_des']?></textarea>
                                                      </div>
                                                      <div class="form-group">
                                                          <label>File</label>
                                                          <input type="file" name="txt_file" class="form-control" accept="application/pdf">
                                                      </div>
                                                      <div class="form-group">
                                                        <label>Active</label>
                                                        <?php
                                                          if($row['dw_active']==1)
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
                    <th>Title</th>
                    <th>Description</th>
                    <th>PDF</th>
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
