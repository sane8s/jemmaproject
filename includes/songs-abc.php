<?php
include 'db/dbconnection.php';

$query = "SELECT upper(SUBSTRING(song_title, 1, 1)) AS letter FROM song GROUP BY letter ORDER BY letter";
$result = mysqli_query($link, $query);

echo "<ul class='list-inline'><li class='list-inline-item p-1 h5'><a href='songs.php'>ALL</a></li>";
if (mysqli_num_rows($result) > 0){
  /*output data of each row*/
  while($row = mysqli_fetch_assoc($result)){
    $l = $row["letter"];
    echo "<li class='list-inline-item p-1 h5'><a href='songs.php?id=$l'>" . $l . "</a></li>";    
  
  }
} else {
  echo "0 results";
}
echo "</ul>";
/* close connection */
include 'db/dbclose.php';
?>