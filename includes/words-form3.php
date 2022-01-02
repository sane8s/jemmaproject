<?php 
if(!empty($_POST['sort'])){ $selected = $_POST['sort'];}
else{ $selected = 'word_name';}
?>

<form action="" method="post">
<div class="input-group input-group-sm mb-3">
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="sort" id="sortAZ" value="word_name ASC" onChange="autoSubmit();" checked>
  <label class="form-check-label" for="sortAZ">Sort A-Z</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="sort" id="sortZA" value="word_name DESC" onChange="autoSubmit();">
  <label class="form-check-label" for="sortZA">Sort Z-A</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="sort" id="sortRecent" value="word_id DESC">
  <label class="form-check-label" for="sortRecent">Sort Most Recent</label>
</div>
<!--<div class="form-check form-check-inline">
    <button type="submit" class="btn btn-outline-dark btn-sm">Sort</button>
</div>-->
</div> 
</form>
<span class="r-text"><em><?php echo $selected;?></em></span>
<script>
    $('input[type=radio]').click(function(e) {//jQuery works on clicking radio box
        var value = $(this).val(); //Get the clicked checkbox value
        $('.r-text').html(value);
    });
</script><!---->