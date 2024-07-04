<?php
    include 'func/header.php';
?>

<div class="col-md-12">

    <?php 

        if ($_GET["search"] && $_GET["pagina"])
        {

            echo table_licences_search($_GET["search"], $_GET["pagina"]); 

        }
        elseif ($_GET["pagina"])
        {
			echo table_licences($_GET["pagina"]); 
        }
    ?>

</div>  
<?php

    include 'func/footer.php';


    if ($_GET["search"] && $_GET["pagina"])

    {

        echo table_LicencesModalSearch($_GET["search"], $_GET["pagina"]); 

    }

    elseif ($_GET["pagina"])

    {

        echo table_LicencesModal($_GET["pagina"]);

    }

?>

        

