<?php
    include 'db.php';
    db_sessionValidarNO();
    
    if ($_SESSION['token'] == GetToken())
    {
        session_start();
        $user = $_SESSION['users_id'];
        $creado = date("Y-m-d");

        $url = 'http://' .$_POST['url_web'] . $_POST['url'];
        $url = remove_url_query_args($url,array("client_add_noadd","client_add_noadd"));
        
        $nombre = strtoupper($_POST['nombre']);
        $direccion = strtoupper($_POST['direccion']);
        $telefono = strtoupper($_POST['telefono']);
        $p_descuento = $_POST['p_descuento'];
        $rfc = strtoupper($_POST['rfc']);
        $r_social = strtoupper($_POST['r_social']);
        $correo = $_POST['correo'];
        $clasificacion = $_POST['clasificacion'];
        $r_fiscal = $_POST['r_fiscal'];
        $d_fiscal = $_POST['d_fiscal'];
        
        
        $con = db_conectar();  
        mysqli_query($con,"INSERT INTO `clients` (`nombre`, `direccion`, `telefono`, `descuento`, `rfc`, `razon_social`, `correo`, `user`, `creado`, `clasificacion`, `r_fiscal`, `d_fiscal`) VALUES ('$nombre', '$direccion', '$telefono', '$p_descuento', '$rfc', '$r_social', '$correo', '$user', '$creado', '$clasificacion', '$r_fiscal', '$d_fiscal');");
    
        $addpregunta = false;
    
        for($i=0;$i<strlen($url);$i++)
        {
            if ($url[$i] == "?")
            {
                $addpregunta = true;
            }
        }
    
        if ($addpregunta)
        {
            if (!mysqli_error($con))
            {
                echo '<script>location.href = "'.$url.'&client_add_add=true"</script>';
            }else
            {
                echo '<script>location.href = "'.$url.'&client_add_noadd=true"</script>';
            }
        }else
        {
            if (!mysqli_error($con))
            {
                echo '<script>location.href = "'.$url.'?client_add_add=true"</script>';
            }else
            {
                echo '<script>location.href = "'.$url.'?client_add_noadd=true"</script>';
            }
        }
    }
?>