<?php
    
    include 'db.php';
    $con = db_conectar();  
    
    $id = $_GET['id'];
    
    $sql = "DELETE FROM `productos` WHERE `productos`.`id` = $id;";

    mysqli_query($con,$sql);

    if (!mysqli_error($con))
    {
        echo json_encode(200);
    }else {
        echo "Error";
    }
?>