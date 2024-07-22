<?php
    require_once 'db.php';
    
    $url = $_POST['url'];

    $header = $_POST['header'];

    $url = str_replace("&sendmail=true","",$url);
    $url = str_replace("?sendmail=true","",$url);
    $url = str_replace("&nosendmail=true","",$url);
    $url = str_replace("?nosendmail=true","",$url);

    $current_url = $_POST['url_web']; 

    $mail_receptor = $_POST['mail'];
    
    $body = $_POST['body'];
    
    $folio = $_POST['folio'];
    
    $total_pagar = Return_TotalPagar_Folio($folio);
    
    $message = str_replace("%cot_cot%", '<a href="'.static_empresa_url().'sale_finaly_report_cotizacion_plain.php?folio_sale='.$folio.'" target="_blank"><br>VER DOCUMENTO</a>', $body);
    
    $txtxtra = $_POST['txtxtra']; 
    
    if ($txtxtra.length > 0)
    {
        $txtxtra .= '<br>'; 
    }
    
    $formato = 
    '
    <html>
				<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
					
					
					<link href="styles.css" media="all" rel="stylesheet" type="text/css" />
					<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
					<style>
					/* Reset -------------------------------------------------------------------- */
					* 	 { margin: 0;padding: 0; }
					body { font-size: 14px; }
			
					/* OPPS --------------------------------------------------------------------- */
			
					h4 {
						margin-bottom: 8px;
						font-size: 12px;
						font-weight: 600;
						text-transform: uppercase;
					}
			
					.opps {
						width: 100%; 
						border-radius: 4px;
						box-sizing: border-box;
						padding: 0 45px;
						margin: 40px auto;
						overflow: hidden;
						border: 1px solid #b0afb5;
						font-family: "Open Sans", sans-serif;
						color: #4f5365;
					}
			
					.opps-reminder {
						position: relative;
						top: -1px;
						padding: 9px 0 10px;
						font-size: 11px;
						text-transform: uppercase;
						text-align: center;
						color: #ffffff;
						background: #000000;
					}
			
					.opps-info {
						margin-top: 26px;
						position: relative;
					}
			
					.opps-info:after {
						visibility: hidden;
						display: block;
						font-size: 0;
						content: " ";
						clear: both;
						height: 0;
			
					}
			
					.opps-ammount {
						width: 100%;
						float: right;
					}
			
					.opps-ammount h2 {
						font-size: 36px;
						color: #000000;
						line-height: 24px;
						margin-bottom: 15px;
					}
			
					.opps-ammount h2 sup {
						font-size: 16px;
						position: relative;
						top: -2px
					}
			
					.opps-ammount p {
						font-size: 10px;
						line-height: 14px;
					}
			
					.opps-reference {
						margin-top: 14px;
					}
			
					h3 {
						font-size: 15px;
						color: #000000;
						text-align: center;
						margin-top: -1px;
						padding: 6px 0 7px;
						border: 1px solid #b0afb5;
						border-radius: 4px;
						background: #f8f9fa;
					}
			
					.opps-instructions {
						margin: 32px -45px 0;
						padding: 32px 45px 45px;
						border-top: 1px solid #b0afb5;
						background: #f8f9fa;
					}
			
					ol {
						margin: 14px 0 0 13px;
					}
			
					li + li {
						margin-top: 8px;
						color: #000000;
					}
			
					a {
						color: #1155cc;
					}
			
					.opps-footnote {
						margin-top: 22px;
						padding: 22px 20 24px;
						color: #108f30;
						text-align: center;
						border: 1px solid #108f30;
						border-radius: 4px;
						background: #ffffff;
					}
			</style>
				</head>
				<body>
				'.$txtxtra.'
				<div class="opps">
				<div class="opps-header">
					<div class="opps-reminder">Ficha digital. No es necesario imprimir.</div>
					<div class="opps-info">
						<div class="opps-ammount">
							<h4>Monto a pagar</h4>
									<h2>$ '.number_format($total_pagar,GetNumberDecimales(),".",",").' <sup>MXN</sup></h2>
									<p>'.numtoletras($total_pagar).'</p>
								</div>
							</div>
							<div class="opps-reference">
							<h4>FOLIO</h4>
					<h3><a href="'.static_empresa_url().'sale_finaly_report_cotizacion_plain.php?folio_sale='.$folio.'" target="_blank">'.$folio.'</a></h3>
								</div>
						</div>
                  		<span><center><br>'.$message.'<br><br></center></span>
                  </p>
						<div class="opps-instructions">
							<div class="opps-footnote">### '.static_empresa_nombre().' ###</div>
						</div>
					</div>	
				</body>
			</html>
    ';
    
    $mail = MailConfig();
	
	//Email receptor
	$ArrMail = explode(",",$mail_receptor);
	
	foreach ($ArrMail as $valor) {
		$mail->addAddress($valor);
	}

	//Asunto
	$mail->Subject = "Cotizacion";

	$mail->msgHTML(file_get_contents($formato), __DIR__);
	//Replace the plain text body with one created manually  
	$mail->Body = $formato;
	
	$enviar = $mail->send();
	
	/////// Se envia notificacion a whatsapp de cliente //////////
	
	$wp_body = '*TOTAL:* $ '.number_format($total_pagar,GetNumberDecimales(),".",",");
	$wp_body .= "\n" . '(' . numtoletras($total_pagar) . ')';
	$wp_body .= "\n\n" . 'Debido, a su interes en uno de nuestros productos o servicios. Le doy seguimiento a su solicitud, le envio su cotizacion y quedo a la orden para cualquier duda o comentario.';
	
	SendWP($_POST['telefono'],$wp_body,static_empresa_url().'sale_finaly_report_cotizacion_mob.php?folio_sale='.$folio);

	///////// Se envia notificacion a whatsapp de cliente ////////
    
    if ($enviar)
    {
		echo '<script>location.href = "/cotizaciones.php?sendmail=true"</script>';
    }else
    {
        echo '<script>location.href = "/cotizaciones.php?nosendmail=true"</script>';
    }
?>