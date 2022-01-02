<?php

include 'db/dbconnection.php';

$query = "SELECT * from song";
  
    if ($result = mysqli_query($link, $query)) {
  
    // Return the number of rows in result set
    $songcount = mysqli_num_rows( $result );
      
    // Display result
    echo "<h2>$songcount Jemma Songs & counting...</h2>";
    echo "<hr>";
}
 
/* close connection */
include 'db/dbclose.php';
?>