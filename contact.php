<!DOCTYPE html>
<?php
include "conn.php";
if (isset($_REQUEST['btnsubmit'])) {

  $name = $_REQUEST['txt_name'];
  $email = $_REQUEST['txt_email'];
  $subject = $_REQUEST['txt_subject'];
  $message = $_REQUEST['txt_message'];
  echo $q = "insert into contact_us_mst set
                    cu_name='$name',
                    cu_email='$email',
                    cu_subject='$subject',
                    cu_message='$message'
                  ";

  $res = mysqli_query($con, $q);
  header("location:contact.php");
}
?>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Patidar Gin Science College | Home</title>

  <?php
  include "conn.php";
  require_once "./includes/header.php";
  ?> <!-- Page breadcrumb -->
  <section id="mu-page-breadcrumb">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="mu-page-breadcrumb-area">
            <h2>Contact</h2>
            <ol class="breadcrumb">
              <li><a href="#">Home</a></li>
              <li class="active">Contact</li>
            </ol>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End breadcrumb -->

  <!-- Start contact  -->
  <section id="mu-contact">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="mu-contact-area">
            <!-- start title -->
            <div class="mu-title">
              <h2>Get in Touch</h2>
            </div>
            <!-- end title -->
            <!-- start contact content -->
            <div class="mu-contact-content">
              <div class="row">
                <div class="col-md-6">
                  <div class="mu-contact-left">
                    <form class="contactform">
                      <p class="comment-form-author">
                        <label for="author">Name <span class="required">*</span></label>
                        <input type="text" required="required" size="30" value="" name="txt_name">
                      </p>
                      <p class="comment-form-email">
                        <label for="email">Email <span class="required">*</span></label>
                        <input type="email" required="required" aria-required="true" value="" name="txt_email">
                      </p>
                      <p class="comment-form-url">
                        <label for="subject">Subject</label>
                        <input type="text" name="txt_subject">
                      </p>
                      <p class="comment-form-comment">
                        <label for="comment">Message</label>
                        <textarea required="required" aria-required="true" rows="8" cols="45" name="txt_message"></textarea>
                      </p>
                      <p class="form-submit">
                        <input type="submit" value="Send Message" class="mu-post-btn" name="btnsubmit">
                      </p>
                    </form>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="mu-contact-right">
                  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3721.618246500475!2d73.10421157525938!3d21.127780680546472!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be06773b5c8284b%3A0x7700924d39d52308!2sThe%20Patidar%20Gin%20Science%20College%2C%20Bardoli!5e0!3m2!1sen!2sin!4v1713269313647!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                  </div>
                </div>
              </div>
            </div>
            <!-- end contact content -->
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End contact  -->

  <?php
  require_once "./includes/footer.php";
  ?>
  </body>

</html>