<?php
    $url = $_POST['url'];
    $url = str_replace("&update_producto=true", "", $url);
    $url = str_replace("&noupdate_producto=true", "", $url);
    
    include 'db.php';
    db_sessionValidarNO();
    $con = db_conectar();  

    if ($_POST['precio'] > 0 && $_SESSION['token'] == GetToken())
    {
        
        
        $id = $_POST['id'];
        $parte = $_POST['parte'];
        $nombre = $_POST['name'];
        $precio = $_POST['precio'];
        $p_oferta = $_POST['p_oferta'];
        $stock = $_POST['stock'];
        $use_oferta = $_POST['use_oferta'];
        $precio_usd = $_POST['precio_usd'];
    
        mysqli_query($con,"UPDATE `productos` SET `no. De parte` = '$parte', `nombre` = '$nombre', `oferta` = '$use_oferta', `precio_normal` = '$precio', `precio_oferta` = '$p_oferta', `stock` = '$stock', precio_usd = '$precio_usd' WHERE id = $id;");

        if (!mysqli_error($con))
        {
            echo '<script>location.href = "'.$url.'&update_producto=true"</script>';
        }else
        {
            echo '<script>location.href = "'.$url.'&noupdate_producto=true"</script>';
        }
    }
    else
    {
        echo '<script>location.href = "'.$url.'&noupdate_producto=true"</script>';
    }
?>