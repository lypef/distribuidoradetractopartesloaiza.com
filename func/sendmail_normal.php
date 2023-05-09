<?php
    require_once 'db.php';
    
    $url = $_POST['url'];

    $asunto = $_POST['asunto'];

    $url = str_replace("&sendmail=true","",$url);
    $url = str_replace("?sendmail=true","",$url);
    $url = str_replace("&nosendmail=true","",$url);
    $url = str_replace("?nosendmail=true","",$url);

    $mail_receptor = $_POST['mail_cliente'];
    
    $body = $_POST['body_msg'];

    
    $addpregunta = false;

    
	$cabecera = "From: ".static_empresa_nombre()."\r\n";
	$cabecera .= "Reply-To: ".static_empresa_email_responder()."\r\n";
	$cabecera .= "Content-type: text/html;  charset=utf-8";

	$enviar = mail($mail_receptor, $asunto, $body, $cabecera);

    
    for($i=0;$i<strlen($url);$i++)
    {
        if ($url[$i] == "?")
        {
            $addpregunta = true;
        }
    }

    if ($addpregunta)
    {
        if ($enviar)
        {
            echo '<script>location.href = "'.$url.'&sendmail=true"</script>';
        }else {echo '<script>location.href = "'.$url.'&nosendmail=true"</script>';}
    }else
    {
        if ($enviar)
        {
            echo '<script>location.href = "'.$url.'?sendmail=true"</script>';
        }else {echo '<script>location.href = "'.$url.'?nosendmail=true"</script>';
            
        }
    }
?>