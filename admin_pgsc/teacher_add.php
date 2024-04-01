<?php
    include "scheck.php";
    if(isset($_REQUEST['btnsubmit']))
  {
    if($_FILES['txt_img']['type']=="image/jpeg" or
    $_FILES['txt_img']['type']=="image/jpg" or 
    $_FILES['txt_img']['type']=="image/png"
    )
    {
      if($_FILES['txt_img']['size']<1000000)
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
      $q="insert into teacher_mst set
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
        t_img='$img'
        ";
        move_uploaded_file($_FILES['txt_img']['tmp_name'],
            "images/".$_FILES['txt_img']['name']);
      $res=mysqli_query($con,$q);

    }
    else
      echo "select image only";
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
    <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Teacher Add</h1>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-12">
          <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">General</h3>

              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                  <i class="fas fa-minus"></i></button>
              </div>
            </div>
            <form method="post" enctype="multipart/form-data" class="swalDefaultSuccess">
            <div class="card-body">
              <div class="form-group">
                <label for="inputDescription">First Name</label>
                <input type="text" name="txt_fname" class="form-control" required="">
              </div>
              <div class="form-group">
                <label for="inputDescription">Middle Name</label>
                <input type="text" name="txt_mname" class="form-control" required="">
              </div>
              <div class="form-group">
                <label for="inputDescription">Last Name</label>
                <input type="text" name="txt_lname" class="form-control" required="">
              </div>
              <div class="form-group">
                <label for="inputDescription">designation</label>
                <input type="text" name="txt_designation" class="form-control" required="">
              </div>
              <div class="form-group">
                <label for="inputDescription">Info</label>
                <textarea name="txt_info" class="form-control" required=""></textarea>
              </div>
                <div class="form-group">
                  <label>Mobile Number:</label>

                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="fas fa-phone"></i></span>
                    </div>
                    <input type="tel" class="form-control"
                           pattern="[0-9]{10}" title="Enter Valid Mobile Number" required="" name="txt_phonenumber">
                  </div>
                  <!-- /.input group -->
                </div>
                <div class="form-group">
                <label for="Url">Email</label>
                <input type="Email" name="txt_email" class="form-control"required="">
              </div>
              <div class="form-group">
                <label for="Url">Facebook URL</label>
                <input type="url" name="txt_facebook_url" class="form-control" required="">
              </div>
              <div class="form-group">
                <label for="Url">Twitter URL</label>
                <input type="url" name="txt_twitter_url" class="form-control"required="">
              </div>
              <div class="form-group">
                <label for="Url">Linkedin URL</label>
                <input type="url" name="txt_linkedin_url" class="form-control" required="">
              </div>
              <div class="form-group">
                <label for="Url">Instrgram URL</label>
                <input type="url" name="txt_instrgram_url" class="form-control" required="">
              </div>
              <div class="form-group">
                <label for="inputDescription">Photo</label>
                <input type="file" name="txt_img" class="form-control" required="">
              </div>        
            </div>
            <!-- /.card-body -->
            <div class="col-12">
              <a href="#" class="btn btn-secondary">Cancel</a>
              <input type="submit" value="Add" class="btn btn-success float-right" name="btnsubmit">
            </div>
      </form>
          </div>
          <!-- /.card -->
        </div>
      </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

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
<script>
  $(function () {
    //Initialize Select2 Elements
    $('.select2').select2()

    //Initialize Select2 Elements
    $('.select2bs4').select2({
      theme: 'bootstrap4'
    })

    //Datemask dd/mm/yyyy
    $('#datemask').inputmask('dd/mm/yyyy', { 'placeholder': 'dd/mm/yyyy' })
    //Datemask2 mm/dd/yyyy
    $('#datemask2').inputmask('mm/dd/yyyy', { 'placeholder': 'mm/dd/yyyy' })
    //Money Euro
    $('[data-mask]').inputmask()

    //Date range picker
    $('#reservationdate').datetimepicker({
        format: 'L'
    });
    //Date range picker
    $('#reservation').daterangepicker()
    //Date range picker with time picker
    $('#reservationtime').daterangepicker({
      timePicker: true,
      timePickerIncrement: 30,
      locale: {
        format: 'MM/DD/YYYY hh:mm A'
      }
    })
    //Date range as a button
    $('#daterange-btn').daterangepicker(
      {
        ranges   : {
          'Today'       : [moment(), moment()],
          'Yesterday'   : [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
          'Last 7 Days' : [moment().subtract(6, 'days'), moment()],
          'Last 30 Days': [moment().subtract(29, 'days'), moment()],
          'This Month'  : [moment().startOf('month'), moment().endOf('month')],
          'Last Month'  : [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
        },
        startDate: moment().subtract(29, 'days'),
        endDate  : moment()
      },
      function (start, end) {
        $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'))
      }
    )

    //Timepicker
    $('#timepicker').datetimepicker({
      format: 'LT'
    })
    
    //Bootstrap Duallistbox
    $('.duallistbox').bootstrapDualListbox()

    //Colorpicker
    $('.my-colorpicker1').colorpicker()
    //color picker with addon
    $('.my-colorpicker2').colorpicker()

    $('.my-colorpicker2').on('colorpickerChange', function(event) {
      $('.my-colorpicker2 .fa-square').css('color', event.color.toString());
    });

    $("input[data-bootstrap-switch]").each(function(){
      $(this).bootstrapSwitch('state', $(this).prop('checked'));
    });

  })
</script>

<?php include "jquery.php"?>
</body>
</html>
