<?php
error_reporting(E_ALL);
date_default_timezone_set('America/Mexico_City');

require_once 'db.php';
// Se incluye el SDK
include_once 'SDK2/sdk2.php';

//Variables
    $folio = $_POST['folio'];

    $data = mysqli_query(db_conectar(),"SELECT cfdi_lugare_expedicion, cfdi_rfc, nombre, cfdi_regimen, cfdi_cer, cfdi_key, cfdi_pass FROM `empresa`");

    while($row = mysqli_fetch_array($data))
    {
        $cfdi_lugare_expedicion = $row[0];
        $cfdi_rfc = $row[1];
        $cfdi_nombre = $row[2];
        $cfdi_regimen = $row[3];
        $cfdi_cer = $row[4];
        $cfdi_key = $row[5];
        $cfdi_pass = $row[6];
    }

    $datos['PAC']['usuario'] = 'LOLA560503FU9';
    $datos['PAC']['pass'] = 'loaiza';
    $datos['PAC']['produccion'] = "SI";
    $datos['modulo']="cancelacion2018"; 
    $datos['accion']="cancelar";
    $datos['produccion']='SI'; 
    $datos["xml"]= 'SDK2/timbrados/'.$folio.'.xml';
    //$datos["uuid"]="25d57a90-77cc-4fe2-acf6-67a3c2f2508d";
    $datos["rfc"] ='LOLA560503FU9';
    $datos["password"] = 'alfo5653';
    $datos["b64Cer"] = 'SDK2/certificados/CSD_alfonso_loaiza_loaeza_LOLA560503FU9_20180604_133248s.cer';
    $datos["b64Key"] = 'SDK2/certificados/CSD_alfonso_loaiza_loaeza_LOLA560503FU9_20180604_133248.key';

    $res = mf_ejecuta_modulo($datos);
    
        
    if ($res["codigo_mf_texto"] == 0)
    {
        echo "<h1>Cancelacion en proceso</h1>";
        echo "<pre>";
        print_r($res);
        echo "</pre>";
        mysqli_query(db_conectar(),"DELETE from `facturas` WHERE folio = '$folio';");
        echo '<script>location.href = "/facturas.php?pagina=1"</script>';
    }else
    {
        echo "<pre>";
        print_r($res);
        echo "</pre>";

    }
?>