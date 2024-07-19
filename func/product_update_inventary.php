<?php
    
    include 'db.php';
    $con = db_conectar();  
    
    $product = $_GET['product'];
    $celda = $_GET['celda'];
    $value = Comillas($_GET['value']);

    $sql = "UPDATE productos SET `$celda` = '$value' WHERE id = $product; ";

    mysqli_query($con,$sql);

    if (!mysqli_error($con))
    {
        echo json_encode(200);
    }else {
        echo "Error";
    }
?>