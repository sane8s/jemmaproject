<?php

include 'db/dbconnection.php';

$query = "SELECT * FROM song ORDER by RAND() LIMIT 1";
$result = mysqli_query($link, $query);

if (mysqli_num_rows($result) > 0){
  /*output data of each row*/
  while($row = mysqli_fetch_assoc($result)){
    echo "<p><strong>" . $row["song_title"]. "</strong> by " . $row["song_artist"] . "</p>";
    echo "<p>". $row["episodes"]. "</p>";
  
  }
} else {
  echo "0 results";
}

/* close connection */
include 'db/dbclose.php';
?>