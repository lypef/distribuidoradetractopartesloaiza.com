<?php
    include 'db.php';
    db_sessionValidarNO();
    
    $url = $_POST['url'];
    $url = str_replace("&delete=true","",$url);
    $url = str_replace("?delete=true","",$url);
    $url = str_replace("&deleteno=true","",$url);
    $url = str_replace("?deleteno=true","",$url);
    
    $id = $_POST['id'];
    
    $con = db_conectarLicences(); 
    
    mysqli_query($con,"UPDATE `licence` SET `status` = '0' WHERE `licence`.`licence` = '$id';");    
    
    
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
            echo '<script>location.href = "'.$url.'&process_yes=true"</script>';
        }else{
            echo '<script>location.href = "'.$url.'?process_yes=true"</script>';
        }
    }else
    {
        echo '<script>location.href = "/licences.php?pagina=1&deleteno=true"</script>';
    }

?>
