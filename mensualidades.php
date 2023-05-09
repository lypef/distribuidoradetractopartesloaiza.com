<?php
    include 'func/header.php';
    ValidateMensualidades();
?>
<div class="col-md-12">
    <?php 
        if ($_GET["search"])
        {
            echo table_mensualidades($_GET["search"]); 
        }else
        {
            echo table_mensualidades(""); 
        }
        
    ?>
</div>  
<?php
    include 'func/footer.php';
    if ($_GET["search"])
    {
        echo table_MensualidadesModal($_GET["search"]); 
    }else
    {
        echo table_MensualidadesModal("");
    }
?>
        
