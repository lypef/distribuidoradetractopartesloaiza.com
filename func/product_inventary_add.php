<?php

    include 'db.php';
    db_sessionValidarNO();

    $Parte = Comillas($_GET['parte']);
    $Nombre = Comillas($_GET['nombre']);
    $Descripcion = Comillas($_GET['descripcion']);
    $Almacen = $_GET['almacen'];
    $Departamento = $_GET['departamento'];
    $Ubicacion = $_GET['loc_almacen'];
    $Marca = $_GET['marca'];
    $Proveedor = $_GET['proveedor'];
    $Precio = $_GET['precio_normal'];
    $Precio_oferta = $_GET['precio_oferta'];
    $precio_costo = $_GET['precio_costo'];
    $Stock = $_GET['stock'];
    $TiempoEntrega = $_GET['t_entrega'];
    $stock_min = $_GET['stock_min'];
    $stock_max = $_GET['stock_max'];
    $cv = $_GET['cv'];
    $um = $_GET['um'];
    $um_des = $_GET['um_des'];
    $user_oferta = 0;
    $pedir_medidas = 0;

    if (empty($cv))
    {
        $cv = "01010101";    
    }

    if (empty($um))
    {
        $um = "H87";    
    }
    
    if (empty($um_des))
    {
        $um_des = "NA";    
    }

    $con = db_conectar();  
        
    $sql = "INSERT INTO `productos` (`no. De parte`, `nombre`, `descripcion`, `almacen`, `departamento`, `loc_almacen`, `marca`, `proveedor`, `foto0`, `foto1`, `foto2`, `foto3`, `oferta`, `precio_normal`, `precio_oferta`, `stock`, `tiempo de entrega`, `stock_min`, `stock_max`, `precio_costo`,`cv`,`um`,`um_des`,`pedir_medidas`) VALUES ('$Parte', '$Nombre', '$Descripcion', '$Almacen', '$Departamento', '$Ubicacion', '$Marca', '$Proveedor', '', '', '', '', '$user_oferta', '$Precio', '$Precio_oferta', '$Stock', '$TiempoEntrega', '$stock_min', '$stock_max', '$precio_costo', '$cv', '$um', '$um_des', '$pedir_medidas');";
    mysqli_query($con,$sql);

    if (!mysqli_error($con))
    {
        echo json_encode(200);
    }

?>