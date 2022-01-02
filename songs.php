<?php
include 'includes/header.php';
?>  
<!-- Songs sidebar -->          
<div class="container py-4">
    <div class="row mb-3">
        <div class="col-md-4 themed-grid-col">               
            <div class="row p-2">
                <div class="p-3 border bg-light">
                    <h2>Ganz Spontan</h2>
                        <?php include 'includes/songs-random.php';?>
                </div>
            </div>
            <div class="row p-2">
                <div class="p-3 border bg-light">
                    <h2>Filter</h2>
                        <?php include 'includes/songs-abc.php';?>
                </div>
            </div>
        </div>
<!-- Songs dynamic content -->        
        <div class="col-md-8 themed-grid-col">
            <?php include 'includes/songs-count.php';?>
            <?php include 'includes/songs-list.php';?>
        </div>
    </div>       
<?php 
include 'includes/footer.php';
?>          
      
          