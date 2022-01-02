<?php
include 'db/dbconnection.php';

if (isset($_GET['id'])) {
    $letterFilter = $_GET['id'];
  echo "<div class='alert alert-dark text-center' role='alert'><h3>" . $letterFilter . "</h3></div>";
  $query = "SELECT * FROM song WHERE song_title LIKE \"{$_GET['id']}%\"";
} else {
  $query = "SELECT * FROM song ORDER BY song_title";
}

$result = mysqli_query($link, $query);

if (mysqli_num_rows($result) > 0){
  /*output data of each row*/
  while($row = mysqli_fetch_assoc($result)){
    echo "<p><strong>" . $row["song_title"] . " </strong>" . " by " . $row["song_artist"] . "<br><em>Episodes: " . $row["episodes"] . "</em>";

  }
} else {
  echo "0 results";
}

/* close connection */
include 'db/dbclose.php';
?>