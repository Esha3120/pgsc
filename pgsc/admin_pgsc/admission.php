<?php
    include "scheck.php";
      if(isset($_REQUEST['id']))
      {
          $q="select * from inquiry where i_id=".$_REQUEST['id'];
          $resd=mysqli_query($con,$q);
          $del=mysqli_fetch_assoc($resd);
      }
      if(isset($_REQUEST['btnsubmit']))
      {
                  if($_FILES['txt_img']['type']=="image/jpeg" or
            $_FILES['txt_img']['type']=="image/jpg" or 
            $_FILES['txt_img']['type']=="image/png"
            )
            {
                  $sname=$_REQUEST['txt_sname'];
                  $fname=$_REQUEST['txt_fname'];
                  $email=$_REQUEST['txt_email'];
                  $mobilenumber=$_REQUEST['txt_mobilenumber'];
                  $address=$_REQUEST['txt_address'];
                  $birthdate=$_REQUEST['txt_birthdate'];
                  $blood_group=$_REQUEST['txt_bloodgroup'];
                  $last_qulification=$_REQUEST['txt_lastqulification'];
                  $gender=$_REQUEST['txt_gender'];
                  $remark=$_REQUEST['txt_remak'];
                  $interestedSubject=$_REQUEST['txt_intrestedsubject'];
                  $img=date('dmy_').rand(100000,999999)."_".$_FILES['txt_img']['name'];
                 $q="insert into admission_mst set
                      a_stud_name='$sname',
                      a_father_name='$fname',
                      a_email='$email',
                      a_mobilenumber='$mobilenumber',
                      a_address='$address',
                      a_birth_date='$birthdate',
                      a_blood_group='$blood_group',
                      a_last_qualification='$last_qulification',
                      a_gender='$gender',
                      a_remark='$remark',
                      a_interested_subject ='$interestedSubject',
                      a_img='$img'
                  ";
                    $u="update inquiry set
                        i_active=0 where i_id=
                    ".$_REQUEST['id'];
                    $ures=mysqli_query($con,$u);
                        move_uploaded_file($_FILES['txt_img']['tmp_name'],
                        "../images/student_img/".$img);
                     $res=mysqli_query($con,$q);
                 header("location:admission.php");
            }
      }
      if(isset($_REQUEST['btndelete']))
      {
          $id=$_REQUEST['did'];
           $q="update admission_mst set
            a_status=0 where a_id='$id'
          ";
        mysqli_query($con,$q);  
        header("location:admission.php");
      }
      if(isset($_REQUEST['btnedit']))
      {
        if($_FILES['txt_img']['name']=="")
        {
            $uid = $_REQUEST['eid'];
            $sname=$_REQUEST['txt_sname'];
            $fname=$_REQUEST['txt_fname'];
            $email=$_REQUEST['txt_email'];
            $mobilenumber=$_REQUEST['txt_mobilenumber'];
            $address=$_REQUEST['txt_address'];
            $birthdate=$_REQUEST['txt_birthdate'];
            $blood_group=$_REQUEST['txt_bloodgroup'];
            $last_qulification=$_REQUEST['txt_lastqulification'];
            $gender=$_REQUEST['txt_gender'];
            $remark=$_REQUEST['txt_remak'];
            $interestedSubject=$_REQUEST['txt_intrestedsubject'];
            $active = $_REQUEST['txt_active'];
          echo  $q="update admission_mst set
                      a_stud_name='$sname',
                      a_father_name='$fname',
                      a_email='$email',
                      a_mobilenumber='$mobilenumber',
                      a_address='$address',
                      a_birth_date='$birthdate',
                      a_blood_group='$blood_group',
                      a_last_qualification='$last_qulification',
                      a_gender='$gender',
                      a_remark='$remark',
                      a_interested_subject ='$interestedSubject',
                      a_active='$active'
                      where a_id='$uid'
                      ";
       }
       else
      {
       $uid = $_REQUEST['eid'];
            $sname=$_REQUEST['txt_sname'];
            $fname=$_REQUEST['txt_fname'];
            $email=$_REQUEST['txt_email'];
            $mobilenumber=$_REQUEST['txt_mobilenumber'];
            $address=$_REQUEST['txt_address'];
            $birthdate=$_REQUEST['txt_birthdate'];
            $blood_group=$_REQUEST['txt_bloodgroup'];
            $last_qulification=$_REQUEST['txt_lastqulification'];
            $gender=$_REQUEST['txt_gender'];
           $remark=$_REQUEST['txt_remak'];
            $interestedSubject=$_REQUEST['txt_intrestedsubject'];
            $active = $_REQUEST['txt_active'];
            $img=date('dmy_').rand(100000,999999)."_".$_FILES['txt_img']['name'];
            $q="update admission_mst set
                      a_stud_name='$sname',
                      a_father_name='$fname',
                      a_email='$email',
                      a_mobilenumber='$mobilenumber',
                      a_address='$address',
                      a_birth_date='$birthdate',
                      a_blood_group='$blood_group',
                      a_last_qualification='$last_qulification',
                      a_gender='$gender',
                      a_remark='$remark',
                      a_interested_subject ='$interestedSubject',
                      a_active='$active',
                      a_img='$img'
                      where a_id='$uid'
                      ";
                      move_uploaded_file($_FILES['txt_img']['tmp_name'],
                        "../images/student_img/".$img);
      }
        mysqli_query($con,$q);
       header("location:admission.php");
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
            <h1><button class="btn btn-info" id="show">Add Admission</button>
              </h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index.php">Home</a></li>
              <li class="breadcrumb-item active">Admission Page</li>
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
          <h3 class="card-title">Add Admission</h3>

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
                    <label>Student Full Name:</label>
                    <?php
                      if(isset($del['i_name']))
                      {
                          ?>
                            <input type="text"  class="form-control" name="txt_sname" required="" value="<?php echo $del['i_name']?>">
                          <?php
                      }
                      else
                      {
                        ?>
                        <input type="text"  class="form-control" name="txt_sname" required="">
                      <?php
                       }
                    ?>
                </div>
                <div class="form-group">
                    <label>Father Full Name:</label>
                    <input type="text"  class="form-control" name="txt_fname" required="">
                </div>
                <div class="form-group">
                    <label>Email:</label>
                    <input type="email"  class="form-control" name="txt_email" required="">
                </div>
                <div class="form-group">
                    <label>Mobile Number:</label>
                    <input type="tel"  class="form-control" name="txt_mobilenumber" required="">
                </div>
                <div class="form-group">
                    <label>Gender</label>
                    <div class="form-control">
                        <input type="radio" name="txt_gender" value="Male" required="" checked="">Male
                        <input type="radio" name="txt_gender" value="Female" required="">Female
                    </div>
                </div>
                <div class="form-group">
                    <label>Birth Date:</label>
                    <input type="date"  class="form-control" name="txt_birthdate" required="">
                </div>
                <div class="form-group">
                    <label>Blood Group:</label>
                    <select name="txt_bloodgroup" class="form-control" required="">
                        <option value="">--------Select Blood Group------</option>
                        <option value="A+">A+</option>
                        <option value="A-">A-</option>
                        <option value="AB+">AB+</option>
                        <option value="AB-">AB-</option>
                        <option value="B+">B+</option>
                        <option value="B-">B-</option>
                        <option value="O+">O+</option>
                        <option value="O-">O-</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>Address</label>
                    <textarea name="txt_address" required="" class="form-control"></textarea>
                </div>
                <div class="form-group">
                    <label>Last Qulification:</label>
                    <input type="tel"  class="form-control" name="txt_lastqulification" required="">
                </div>
                <div class="form-group">
                    <label>Interested Subject:</label>
                    <input type="tel"  class="form-control" name="txt_intrestedsubject" required="">
                </div>
                <div class="form-group">
                    <label>Remark:</label>
                    <textarea name="txt_remak" required="" class="form-control"></textarea>
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
                    <th>Full Name<br>Father Name</th>
                    <th>Email</th>
                    <th>Mobile Number</th>
                    <th>Gender</th>
                    <th>Img</th>
                    <th>Action</th>
                  </tr>
                  </thead>
                  <tbody>
                      <?php
                        $q="SELECT * FROM `admission_mst` WHERE a_status = 1";
                      $res=mysqli_query($con,$q);
                      $count=1;
                      while ($row=mysqli_fetch_assoc($res)){
                        ?>
                        <tr>
                            <td><?php echo $count?></td>
                            <td><?php echo $row['a_stud_name']?><br><?php echo $row['a_father_name']?></td>
                            <td><?php echo $row['a_email']?></td>
                            <td><?php echo $row['a_mobilenumber']?></td>
                            <td><?php echo $row['a_gender']?></td>
                            <td><img src="../images/student_img/<?php echo $row['a_img']?>" height="50px" width="50px"></td>
                            <td>
                                        <button type="button" class="btn btn-info btn-xs" data-toggle="modal" data-target="#modal-default<?php echo $row['a_id']?>"><i class="fa fa-pencil
"> Edit</i>
                                         </button>
                                         <button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#modal-delete<?php echo $row['a_id']?>"><i class="fa fa-trash
"> Delete</i>
                                         </button>
                                       </td>
                                       <div class="modal fade" id="modal-delete<?php echo $row['a_id']?>">
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
                                                  <input type="hidden" name="did" value="<?php echo $row['a_id']; ?>">
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
                                          <div class="modal fade" id="modal-default<?php echo $row['a_id']?>">
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
                                                    <input type="hidden" name="eid" value="<?php echo $row['a_id']?>">
                                                      <div class="form-group">
                                                          <label>Student Full Name:</label>
                                                          <input type="text"  class="form-control" name="txt_sname" required="" value="<?php echo $row['a_stud_name']?>">
                                                      </div>
                                                      <div class="form-group">
                                                          <label>Father Full Name:</label>
                                                          <input type="text"  class="form-control" name="txt_fname" required="" value="<?php echo $row['a_father_name']?>">
                                                      </div>
                                                      <div class="form-group">
                                                          <label>Email:</label>
                                                          <input type="email"  class="form-control" name="txt_email" required="" value="<?php echo $row['a_email']?>">
                                                      </div>
                                                      <div class="form-group">
                                                          <label>Mobile Number:</label>
                                                          <input type="tel"  class="form-control" name="txt_mobilenumber" required="" value="<?php echo $row['a_mobilenumber']?>">
                                                      </div>
                                                      <div class="form-group">
                                                          <label>Gender</label>
                                                          <div class="form-control">
                                                            <?php
                                                              if($row['a_gender']=="Male")
                                                              {
                                                                ?>
                                                                <input type="radio" name="txt_gender" value="Male" required="" checked="">Male
                                                              <input type="radio" name="txt_gender" value="Female" required="">Female
                                                              <?php
                                                              }
                                                              else
                                                              {
                                                                ?>
                                                              <input type="radio" name="txt_gender" value="Male" required="">Male
                                                              <input type="radio" name="txt_gender" value="Female" required="" checked="">Female
                                                              <?php
                                                              }
                                                            ?>
                                                              
                                                          </div>
                                                      </div>
                                                      <div class="form-group">
                                                          <label>Birth Date:</label>
                                                          <input type="date"  class="form-control" name="txt_birthdate" required="" value="<?php echo $row['a_birth_date']?>">
                                                      </div>
                                                      <div class="form-group">
                                                          <label>Blood Group:</label>
                                                          <select name="txt_bloodgroup" class="form-control" required="">
                                                              <option value="">--------Select Blood Group------</option>
                                                              <?php
                                                                $blodgroup = array('A+','A-','AB+','AB-','B+','B-','O+','O-');
                                                                for ($i=0; $i < count($blodgroup) ; $i++) 
                                                                { 
                                                                    if($blodgroup[$i]==$row['a_blood_group'])
                                                                    {
                                                                        ?>
                                                                        <option value="<?php echo $blodgroup[$i]?>" selected><?php 
                                                                        echo $blodgroup[$i]?></option>
                                                                        <?php
                                                                    }
                                                                    else
                                                                    {
                                                                        ?>
                                                                        <option value="<?php echo $blodgroup[$i]?>"><?php
                                                                        echo $blodgroup[$i]?></option>
                                                                        <?php
                                                                    } 
                                                                }
                                                              ?>
                                                          </select>
                                                      </div>
                                                      <div class="form-group">
                                                          <label>Address</label>
                                                          <textarea name="txt_address" required="" class="form-control"><?php echo $row['a_address']?></textarea>
                                                      </div>
                                                      <div class="form-group">
                                                          <label>Last Qulification:</label>
                                                          <input type="tel"  class="form-control" name="txt_lastqulification" required="" value="<?php echo $row['a_last_qualification']?>">
                                                      </div>
                                                      <div class="form-group">
                                                          <label>Interested Subject:</label>
                                                          <input type="tel"  class="form-control" name="txt_intrestedsubject" required="" value="<?php echo $row['a_interested_subject'] ?>">
                                                      </div>
                                                      <div class="form-group">
                                                          <label>Remark:</label>
                                                          <textarea name="txt_remak" required="" class="form-control"><?php echo $row['a_remark']?></textarea>
                                                      </div>
                                                      <div class="form-group">
                                                          <label>Image</label>
                                                          <input type="file" name="txt_img"  class="form-control">
                                                      </div>
                                                      <div class="form-group">
                                                        <label>Active</label>
                                                        <?php
                                                          if($row['a_active']==1)
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
                        $count=$count+1;
                      }
                      ?>
                  </tbody>
                  <tfoot>
                  <tr>
                    <th>SR.NO</th>
                    <th>Full Name<br>Father Name</th>
                    <th>Email</th>
                    <th>Mobile Number</th>
                    <th>Gender</th>
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
