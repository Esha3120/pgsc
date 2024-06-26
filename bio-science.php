<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Patidar Gin Science College | Home</title>

  <?php
  include "conn.php";
  require_once "./includes/header.php";
  ?>

  <!-- Page breadcrumb -->
  <section id="mu-page-breadcrumb">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="mu-page-breadcrumb-area">
            <h2>Academic</h2>
            <ol class="breadcrumb">
              <li><a href="index.php">Home</a></li>
              <li class="active"><a href="academic.php">Academic</a></li>
            </ol>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End breadcrumb -->
  <section id="mu-course-content">
    <div class="container">
      <section id="mu-course-content">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <div class="mu-course-content-area">
                <div class="row">
                  <div class="col-md-9">
                    <!-- start course content container -->
                    <?php
                    $q = "select * from content_mst where co_type='bio'";
                    $res = mysqli_query($con, $q);
                    $row = mysqli_fetch_assoc($res);
                    echo $row['co_content']
                    ?>
                    <!-- <div class="mu-course-container">
                  <div class="row">
                    <div class="col-md-6 col-sm-6">
                    <div class="mu-latest-course-single">
                      <figure class="mu-latest-course-img">
                        <a href="#"><img src="assets/img/academic/chem.jpeg" alt="img"></a>
                        <figcaption class="mu-latest-course-imgcaption">
                          <a href="#">Chemistry</a>
                          <span><i class="fa fa-clock-o"></i>90Days</span>
                        </figcaption>
                      </figure>
                      <div class="mu-latest-course-single-content">
                        <h4><a href="#">Lorem ipsum dolor sit amet.</a></h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet quod nisi quisquam modi dolore, dicta obcaecati architecto quidem ullam quia.</p>
                        <div class="mu-latest-course-single-contbottom">
                          <a class="mu-course-details" href="#">Details</a>
                          <span class="mu-course-price" href="#">$165.00</span>
                        </div>
                      </div>
                    </div> 
                  </div>                  
                  <div class="col-md-6 col-sm-6">
                    <div class="mu-latest-course-single">
                      <figure class="mu-latest-course-img">
                        <a href="#"><img src="assets/img/academic/maths.jpeg" alt="img"></a>
                        <figcaption class="mu-latest-course-imgcaption">
                          <a href="#">Mathematics </a>
                          <span><i class="fa fa-clock-o"></i>75Days</span>
                        </figcaption>
                      </figure>
                      <div class="mu-latest-course-single-content">
                        <h4><a href="#">Lorem ipsum dolor sit amet.</a></h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet quod nisi quisquam modi dolore, dicta obcaecati architecto quidem ullam quia.</p>
                        <div class="mu-latest-course-single-contbottom">
                          <a class="mu-course-details" href="#">Details</a>
                          <span class="mu-course-price" href="#">$165.00</span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-6 col-sm-6">
                    <div class="mu-latest-course-single">
                      <figure class="mu-latest-course-img">
                        <a href="#"><img src="assets/img/academic/bio.jpeg" alt="img"></a>
                        <figcaption class="mu-latest-course-imgcaption">
                          <a href="#">Bio-Science</a>
                          <span><i class="fa fa-clock-o"></i>90Days</span>
                        </figcaption>
                      </figure>
                      <div class="mu-latest-course-single-content">
                        <h4><a href="#">Lorem ipsum dolor sit amet.</a></h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet quod nisi quisquam modi dolore, dicta obcaecati architecto quidem ullam quia.</p>
                        <div class="mu-latest-course-single-contbottom">
                          <a class="mu-course-details" href="#">Details</a>
                          <span class="mu-course-price" href="#">$165.00</span>
                        </div>
                      </div>
                    </div> 
                  </div>                  
                                   
                  <div class="col-md-6 col-sm-6">
                    <div class="mu-latest-course-single">
                      <figure class="mu-latest-course-img">
                        <a href="#"><img src="assets/img/academic/sports.jpeg" alt="img"></a>
                        <figcaption class="mu-latest-course-imgcaption">
                          <a href="#">Sports</a>
                          <span><i class="fa fa-clock-o"></i>75Days</span>
                        </figcaption>
                      </figure>
                      <div class="mu-latest-course-single-content">
                        <h4><a href="#">Lorem ipsum dolor sit amet.</a></h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet quod nisi quisquam modi dolore, dicta obcaecati architecto quidem ullam quia.</p>
                        <div class="mu-latest-course-single-contbottom">
                          <a class="mu-course-details" href="#">Details</a>
                          <span class="mu-course-price" href="#">$165.00</span>
                        </div>
                      </div>
                    </div>
                  </div>
                  </div>
                </div> -->
                    <!-- end course content container -->

                    <!-- end course pagination -->
                  </div>
                  <div class="col-md-3">
                    <!-- start sidebar -->
                    <aside class="mu-sidebar">
                      <!-- start single sidebar -->
                      <div class="mu-single-sidebar">
                        <div id="sidebar-content-container">
                          <h3>Subjects</h3>
                          <ul class="mu-sidebar-catg">
                            <li><a href="chemistry.php" id="chemistry-tab">B.Sc. Chemistry</a></li>
                            <li><a href="mathematics.php" id="mathematics-tab">B.Sc. Mathematics</a></li>
                            <li><a href="bio-science.php" id="bio-science-tab">B.Sc. Bio-Science</a></li>
                            <li><a href="sports.php" id="sports-tab">B.Sc. Sports</a></li>
                          </ul>
                        </div>
                        <!-- end single sidebar -->
                      </div>
                      <!-- end single sidebar -->
                    </aside>
                    <!-- / end sidebar -->
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
    </div>

    <!-- Add a container for sidebar content -->
    <!-- JavaScript to load content dynamically -->
    <script>
      // Get references to the sidebar links and the container for sidebar content
      const chemistryTab = document.getElementById('chemistry-tab');
      const mathematicsTab = document.getElementById('mathematics-tab');
      const bioScienceTab = document.getElementById('bio-science-tab');
      const sportsTab = document.getElementById('sports-tab');
      const sidebarContentContainer = document.getElementById('sidebar-content-container');

      // Function to load content from external file using AJAX
      function loadContent(url) {
        const xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function() {
          if (xhr.readyState === XMLHttpRequest.DONE) {
            if (xhr.status === 200) {
              document.getElementById('sidebar-content-container').innerHTML = xhr.responseText;
            } else {
              console.error('Failed to load content: ' + xhr.status);
            }
          }
        };
        xhr.open('GET', url, true);
        xhr.send();
      }

      // Add click event listeners to each tab to load content dynamically
      const sidebarTabs = document.querySelectorAll('.sidebar-tab');
      sidebarTabs.forEach(function(tab) {
        tab.addEventListener('click', function(event) {
          event.preventDefault(); // Prevent default link behavior
          const url = tab.getAttribute('data-url');
          loadContent(url); // Load content from the specified URL
        });
      });
    </script>
  </section>
  <?php
  require_once "./includes/footer.php";
  ?>
  </body>

</html>