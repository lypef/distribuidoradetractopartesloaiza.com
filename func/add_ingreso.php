<?php
    include 'db.php';
    db_sessionValidarNO();
    session_start();
    
    $url = $_POST['url'];
    $monto = $_POST['monto'];
    $concepto = $_POST['concepto'];
    $sucursal = $_POST['sucursal'];
    $fecha = date("Y-m-d H:i:s");
    $folio = $vendedor . date("YmdHis");
    $vendedor = $_SESSION['users_id'];

    $con = db_conectar();  

    if ($_SESSION['token'] == GetToken())
    {mysqli_query($con,"INSERT INTO `folio_venta` (`folio`,`vendedor`, `client`, `descuento`, `fecha`, `open`, `cobrado`,`fecha_venta`,`cut`,`sucursal`,`cut_global`, `iva`, `t_pago`, `pedido`, `folio_venta_ini`, `cotizacion`, `concepto`) VALUES ('$folio', '$vendedor', '1', '0', '$fecha', '0', '$monto', '$fecha', '0', '$sucursal', '0', '0', 'efectivo', '0', '', '0', '$concepto');");}

    if (!mysqli_error($con))
    {
        echo '<script>location.href = "'.$url.'"</script>';
    }else
    {
        echo '<script>location.href = "'.$url.'"</script>';
    }
?>