<?php
include 'db/dbconnection.php';

if (isset($_GET['id'])) {
    $letterFilter = $_GET['id'];
  echo "<div class='alert alert-dark text-center' role='alert'><h3>" . $letterFilter . "</h3></div>";
  $query = "SELECT * FROM word WHERE word_name LIKE \"{$_GET['id']}%\"";
} else {
  $query = "SELECT * FROM word ORDER BY word_name";
}

//echo $selected; //radio sort value
//$query = "SELECT * FROM word ORDER BY $selected";

$result = mysqli_query($link, $query);

if (mysqli_num_rows($result) > 0){
  /*output data of each row*/
  while($row = mysqli_fetch_assoc($result)){
    echo "<p><strong>" . $row["word_name"] . " </strong>". $row["definition"] ." <em>Example: " . $row["example"]."</em></p>";  
  }
} else {
  echo "0 results";
}

/* close connection */
include 'db/dbclose.php';
?>