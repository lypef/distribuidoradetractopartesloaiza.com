<?php
    include 'db.php';
    db_sessionValidarNO();
    
    $id = $_POST['id'];
    $url = $_POST['url'];
    $nombre = $_POST['nombre'];
    $direccion = $_POST['direccion'];
    $telefono = $_POST['telefono'];
    $p_descuento = $_POST['p_descuento'];
    $rfc = $_POST['rfc'];
    $r_social = $_POST['r_social'];
    $correo = $_POST['correo'];
    $clasificacion = $_POST['clasificacion'];
    $r_fiscal = $_POST['r_fiscal'];
    $d_fiscal = $_POST['d_fiscal'];
    
    $con = db_conectar();  
    mysqli_query($con,"UPDATE `clients` SET `r_fiscal` = '$r_fiscal',`d_fiscal` = '$d_fiscal',`nombre` = '$nombre', `direccion` = '$direccion', `telefono` = '$telefono', `descuento` = '$p_descuento', `rfc` = '$rfc', `razon_social` = '$r_social', `correo` = '$correo', `clasificacion` = '$clasificacion' WHERE id = '$id';");

    if (!mysqli_error($con))
    {
        for($i=0;$i<strlen($url);$i++)
        {
            if ($url[$i] == "?")
            {
                $addpregunta = true;
            }
        }
        if ($addpregunta)
        {
            echo '<script>location.href = "'.$url.'&update=true"</script>';
        }else{
            echo '<script>location.href = "'.$url.'?update=true"</script>';
        }
    }else
    {
        echo '<script>location.href = "/clients.php?pagina=1&noupdate=true"</script>';
    }

?>