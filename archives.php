<?php
include 'includes/header.php';
?>  
<!-- Dynamic sidebar -->          
<div class="container py-4">
    <div class="row mb-3">
        <div class="col-md-4 themed-grid-col">               
            <div class="row p-2">
                <div class="p-3 border bg-light">
                    <h2>Random Word</h2>
                        <?php include 'includes/words-random.php';?>
                </div>
            </div>
            <div class="row p-2">
                <div class="p-3 border bg-light">
                    <h2>Random Song</h2>
                        <?php include 'includes/songs-random.php';?>
                </div>
            </div>
        </div>
<!-- Archives content -->        
<div class="col-md-8 themed-grid-col">            
        <?php include 'archives/wordcloud234-0.html';?>
        <hr>
        <?php include 'archives/wordcloud234-1.html';?>
        <hr>
        <?php include 'archives/wordcloud234-2.html';?>
        </div>
    </div>

    <?php 
    include 'includes/footer.php';
    ?>  