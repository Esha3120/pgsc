<?php
    include "scheck.php";
    $q="select * from content_mst where co_type='academic'";
    $res=mysqli_query($con,$q);
    $row=mysqli_fetch_assoc($res);
    if(isset($_REQUEST['btn_save']))
    {
          $content=$_REQUEST['content'];
          $ids=$_REQUEST['ids'];
          $q="update content_mst set
              co_content='$content'
              where co_id='$ids'
          ";
          mysqli_query($con,$q);
          header("location:academic.php");
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
            <h1>Academic</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index.php">Home</a></li>
              <li class="breadcrumb-item active">Academic</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="row">
        <div class="col-md-12" >
          <div class="card card-outline card-info">
            <div class="card-header">
              <h3 class="card-title">
                Bootstrap WYSIHTML5
                <small>Simple and fast</small>
              </h3>
              <!-- tools box -->
              <div class="card-tools">
                <button type="button" class="btn btn-tool btn-sm" data-card-widget="collapse" data-toggle="tooltip"
                        title="Collapse">
                  <i class="fas fa-minus"></i></button>
                <button type="button" class="btn btn-tool btn-sm" data-card-widget="remove" data-toggle="tooltip"
                        title="Remove">
                  <i class="fas fa-times"></i></button>
              </div>
              <!-- /. tools -->
            </div>
            <!-- /.card-header -->
            <div class="card-body pad">
              <form method="post">
              <div class="mb-3">
                <?php if($row['co_content']!="")
                  {
                ?>
                  <textarea class="textarea" placeholder="Place some text here"
                          style="width: 100%; height: 900px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;" name="content"><?php echo $row['co_content']?></textarea>

                <?php
                  }
                  else
                  {
                ?>
                  <textarea class="textarea" placeholder="Place some text here"
                          style="width: 100%; height: 900px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;" name="content"></textarea>
                <?php
                  }
                ?>
                    <input type="hidden" name="ids" value="<?php echo $row['co_id']?>">
                    <input type="submit" name="btn_save" class="btn btn-info" value="save">
              </form>
              </div>
            </div>
          </div>
        </div>
        <!-- /.col-->
      </div>
      <!-- /.card -->
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
