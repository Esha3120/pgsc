<?php
if($_SERVER['HTTP_HOST']=='localhost')
                    $con=mysqli_connect("localhost","root","","mydb_pgsc");
               else 
                  $con=mysqli_connect("localhost","db_dca","db_dca@1","db_dca"); 
		// Check connection
		if (mysqli_connect_errno())                                        
	  	{
	  		echo "Failed to connect to MySQL: " . mysqli_connect_error();
	  	}
		return $con;
?>