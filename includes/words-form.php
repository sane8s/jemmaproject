<?php
include 'db/dbconnection.php';
?>

<!-- Input form -->
<form action="" method="get">
<div class="form-check">
  <input class="form-check-input" type="radio" name="sort" id="sortAZ" onclick="check(this.value)" value="sortAZ" checked>
  <label class="form-check-label" for="sortAZ">Sort A-Z</label>
</div>
<div class="form-check">
  <input class="form-check-input" type="radio" name="sort" id="sortZA" onclick="check(this.value)" value="sortZA">
  <label class="form-check-label" for="sortZA">Sort Z-A</label>
</div>
<div class="form-check">
  <input class="form-check-input" type="radio" name="sort" id="anotherOption" onclick="check(this.value)" value="anotherOption">
  <label class="form-check-label" for="anotherOption">Another option</label>
</div>
<div class="form-check">
  <input class="form-check-input" type="radio" name="sort" id="sortRecent" onclick="check(this.value)" value="sortRecent">
  <label class="form-check-label" for="sortRecent">Sort Most Recent</label>
</div>
</form>

<!-- Output form-->
<input type="text" id="sortOption" size="20">
<?php
echo "<script>document.writeln(sortOption);</script>";

?>

<?php 
/* close connection */
include 'db/dbclose.php';
?>