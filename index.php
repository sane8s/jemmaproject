<?php
include 'includes/header.php';
?>          
<!-- Words sidebar -->          
<div class="container py-4">
    <div class="row mb-3">
        <div class="col-md-4 themed-grid-col">               
            <div class="row p-2">
                <div class="p-3 border bg-light">
                    <h2>Ganz Spontan</h2>
                        <?php include 'includes/words-random.php';?>
                </div>
            </div>
            <div class="row p-2">
                <div class="p-3 border bg-light">
                    <h2>Filter</h2>
                        <?php include 'includes/words-abc.php';?>
                </div>
            </div>
        </div>
<!-- Words dynamic content -->        
        <div class="col-md-8 themed-grid-col">
            <?php include 'includes/words-count.php';?>
            <?php include 'includes/words-list.php';?>
        </div>
    </div>
    <?php 
    include 'includes/footer.php';
    ?>          
      
          