<?php
    include 'db.php';
    db_sessionValidarNO();
    
    $folio = $_POST['folio'];
    $url = $_POST['url'];
    $cfdi_cliente_correo = $_POST['cfdi_cliente_correo'];
    $cfdi_serie = $_POST['cfdi_serie'];

    // Phpmail
    
    $url = str_replace("&sendmail=true","",$url);
    $url = str_replace("?sendmail=true","",$url);
    $url = str_replace("&nosendmail=true","",$url);
    $url = str_replace("?nosendmail=true","",$url);

    
    $message = 'SE REENVIA PDF Y XML DE SU FACTURA VALIDA ANTE EL SAT. <br><br>Fichero XML: <a href="'.static_empresa_url().'func/SDK2/timbrados/' . $folio . '.xml" target="_blank">Factura XML</a><br><br>Fichero PDF: <a href="'.static_empresa_url().'func/SDK2/timbrados/' . $folio . '.pdf" target="_blank">Factura PDF</a>';
    
    //$message = $message . '<br><br><b>Si no puede acceder a el enlace, ingrese manualmente aqui.</b><br>' . $current_url.'/sale_finaly_report_cotizacion.php?folio_sale='.$folio;

    $asunto = 'FACTURA CFDI: '. $folio;
    
    $addpregunta = false;

    $mail_receptor = static_empresa_email_responder();
        
    $cabecera = "From: DTPL"."\r\n";
    $cabecera .= "Reply-To: ".static_empresa_email_responder()."\r\n";
    $cabecera .= "Content-type: text/html;  charset=utf-8";
    



    for($i=0;$i<strlen($url);$i++)
    {
        if ($url[$i] == "?")
        {
            $addpregunta = true;
        }
    }

    if ($addpregunta)
    {
        if (mail($cfdi_cliente_correo, $asunto, $message,$cabecera))
        {
            echo '<script>location.href = "'.$url.'&sendmail=true"</script>';
        }else {echo '<script>location.href = "'.$url.'&nosendmail=true"</script>';}
    }else
    {
        if ($r)
        {
            echo '<script>location.href = "'.$url.'?sendmail=true"</script>';
        }else {echo '<script>location.href = "'.$url.'?nosendmail=true"</script>';
            
        }
    }
?>
