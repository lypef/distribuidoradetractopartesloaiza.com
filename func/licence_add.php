<?php
    include 'db.php';
    db_sessionValidarNO();
    session_start();

    if ($_SESSION['token'] == GetToken())
    {
        $licence = $_POST['licence'];
        
        $fecha_actual = date("d-m-Y");
        $end = date("Y-m-d",strtotime($fecha_actual."+ ".$_POST['end']." days")); 
        
        $id_software_licence = $_POST['id_software_licence'];
        
    
        $con = db_conectarLicences();  
        
		mysqli_query($con,"INSERT INTO `licence` (`licence`, `mac`, `status`, `interesado`, `id_software_licence`, `end`) VALUES ('$licence', 'SN', '0', 'SN', '$id_software_licence', '$end');");
    
        if (!mysqli_error($con))
        {
            echo '<script>location.href = "/licences.php?pagina=1&search='.$licence.'&process_yes=true"</script>';
        }else
        {
            echo '<script>location.href = "/licences.php?pagina=1&sale_noliquid=true"</script>';
        }
    }
?>