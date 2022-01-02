<?php 
if(!empty($_GET['sort'])){ $selected = $_GET['sort'];}
else{ $selected = 'word_name';}

?>
<!--<form action="" method="post">
    <label>
        <input type="radio" name="a1" value="home" /> Home 
    </label></br>
    <label>
        <input type="radio" name="a1" value="site1" /> Site 1 
    </label></br>
    <label>
        <input type="radio" name="a1" value="site2" /> Site 2 
    </label></br>
</form>-->
<form action="words-list.php" method="get">
<div class="form-check">
  <input class="form-check-input" type="radio" name="sort" id="sortAZ" value="word_name ASC" onChange="autoSubmit();" checked>
  <label class="form-check-label" for="sortAZ">Sort A-Z</label>
</div>
<div class="form-check">
  <input class="form-check-input" type="radio" name="sort" id="sortZA" value="word_name DESC" onChange="autoSubmit();">
  <label class="form-check-label" for="sortZA">Sort Z-A</label>
</div>
<div class="form-check">
  <input class="form-check-input" type="radio" name="sort" id="anotherOption" value="anotherOption">
  <label class="form-check-label" for="anotherOption">Another option</label>
</div>
<div class="form-check">
  <input class="form-check-input" type="radio" name="sort" id="sortRecent" value="word_id DESC">
  <label class="form-check-label" for="sortRecent">Sort Most Recent</label>
</div>
</form>
<span class="r-text"><?php echo $selected;?></span>
<script>
    $('input[type=radio]').click(function(e) {//jQuery works on clicking radio box
        var value = $(this).val(); //Get the clicked checkbox value
        $('.r-text').html(value);
    });
</script>