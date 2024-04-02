<?php
include "scheck.php";
if (isset($_REQUEST['btnsubmit'])) {
    if (
        $_FILES['txt_img']['type'] == "image/jpeg" or
        $_FILES['txt_img']['type'] == "image/jpg" or
        $_FILES['txt_img']['type'] == "image/png"
    ) {
        if ($_FILES['txt_img']['size'] < 1000000)
            $name = $_REQUEST['txt_name'];
        $designation = $_REQUEST['txt_designation'];
        $subject = $_REQUEST['txt_subject'];
        $email = $_REQUEST['txt_email'];
        $s_type = $_REQUEST['txt_stype'];
        $img = $_FILES['txt_img']['name'];
        $q = "insert into staff set
        name='$name',
        designation='$designation',
        subject='$subject',
        email='$email',
        s_type='$s_type',
        img='$img'
        ";
        move_uploaded_file(
            $_FILES['txt_img']['tmp_name'],
            "img/" . $_FILES['txt_img']['name']
        );
        $res = mysqli_query($con, $q);
    } else
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
                            <h1>Staff Add</h1>
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
                                        <label for="inputDescription">Name</label>
                                        <input type="text" name="txt_name" class="form-control" required="">
                                    </div>
                                    <div class="form-group">
                                        <label for="inputDescription">Subject</label>
                                        <input type="text" name="txt_subject" class="form-control" >
                                    </div>
                                    <div class="form-group">
                                        <label for="inputDescription">Designation</label>
                                        <input type="text" name="txt_designation" class="form-control" required="">
                                    </div>
                                    <!-- /.input group -->

                                    <div class="form-group">
                                        <label for="Url">Email</label>
                                        <input type="text" name="txt_email" class="form-control" >
                                    </div>
                                    <div class="form-group">
                                        <label for="Url">Staff Type</label>
                                        <input type="text" name="txt_stype" class="form-control" required="" >
                                    </div>
                                    <div class="form-group">
                                        <label for="inputDescription">Image</label>
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
        $(function() {
            //Initialize Select2 Elements
            $('.select2').select2()

            //Initialize Select2 Elements
            $('.select2bs4').select2({
                theme: 'bootstrap4'
            })

            //Datemask dd/mm/yyyy
            $('#datemask').inputmask('dd/mm/yyyy', {
                'placeholder': 'dd/mm/yyyy'
            })
            //Datemask2 mm/dd/yyyy
            $('#datemask2').inputmask('mm/dd/yyyy', {
                'placeholder': 'mm/dd/yyyy'
            })
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
            $('#daterange-btn').daterangepicker({
                    ranges: {
                        'Today': [moment(), moment()],
                        'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                        'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                        'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                        'This Month': [moment().startOf('month'), moment().endOf('month')],
                        'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                    },
                    startDate: moment().subtract(29, 'days'),
                    endDate: moment()
                },
                function(start, end) {
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

            $("input[data-bootstrap-switch]").each(function() {
                $(this).bootstrapSwitch('state', $(this).prop('checked'));
            });

        })
    </script>

    <?php include "jquery.php" ?>
</body>

</html>