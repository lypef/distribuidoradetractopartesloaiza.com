<?php
    require_once 'func/db.php';
    // Dompdf php 7
    //require_once 'dompdf_php7.1/autoload.inc.php';
    //use Dompdf\Dompdf;

    // Dompdf php 5
    require_once("dompdf_php5.6/dompdf_config.inc.php");
    
    $folio = $_GET["folio_sale"];

    $ColorBarr = ColorBarrReport();
    $Showiva = DesglosarReportIva();

    session_start();
    $usd = GetUsd();
    $con = db_conectar();  

    $venta = mysqli_query($con,"SELECT u.nombre, c.nombre, v.descuento, v.fecha, v.cobrado, v.fecha_venta, s.nombre, s.direccion, s.telefono, v.iva, c.razon_social, c.direccion FROM folio_venta v, users u, clients c, sucursales s WHERE v.vendedor = u.id and v.client = c.id and v.sucursal = s.id and v.folio = '$folio'");
    $genericos = mysqli_query($con,"SELECT unidades, p_generico, precio, id FROM product_venta v WHERE p_generico != '' and folio_venta = '$folio'");
    $cont = 0; $first = true;

    /////////////////////////////////
	/////////////////////////////////
	// Se imprimer reporte ticket ///
	/////////////////////////////////
	/////////////////////////////////
	
	while($row = mysqli_fetch_array($venta))
	{
		$vendedor = $row[0];
		$cliente = $row[1];
		$descuento = $row[2];
		$fecha_ini = $row[3];
		$cobrado = $row[4];
		$fecha_fini = $row[5];
		$sucursal = $row[6];
		$direccion = $row[7];
		$tel = $row[8];
		$iva = $row[9];
		$bodysucursal = '<span style="font-size: 10px;">' . $row[7] . '</span>
		<br><span style="font-size: 12px;"><br><b>RESPONSABLE</b><br>' . $vendedor . '</span><br><span style="font-size: 12px;"><br><b>TEL:</b> '.$tel.'</span>';
		$r_social = $row[10];
		$cliente_direccion = $row[11];
	}

	if (!empty($r_social))
	{
		$r_social = ' | ' . $r_social;
	}
	
	$products = mysqli_query($con,"SELECT p.nombre, p.`no. De parte`, v.unidades, v.precio , a.nombre, p.loc_almacen, v.product_sub FROM product_venta v, productos p, almacen a WHERE v.product = p.id and p.almacen = a.id and v.folio_venta = '$folio'");
	$body_products = '<ul style="padding: 0px 0px 0px 20px;">';
	while($row = mysqli_fetch_array($products))
	{
		if (!$row[6])
		{
			$ubicacion = substr($row[4],0,3) . ', ' . $row[5];
		}
		else
		{
			$ubicacion = Almacen_ubicacion_p_sub($row[6]);
		}

		$total_sin = $total_sin + ($row[2] * $row[3]);

		if ($Showiva)
		{
			$body_products .= 
			'<li style="padding: 0px 0px 10px 0px;">
				( '.$row[2].' ) '.$row[0] . ' $ ' . number_format(($row[2] * $row[3]) / 1.160000,GetNumberDecimales(),".",",").'<br>
			</li>';
		}else
		{
			$body_products .= 
			'<li style="padding: 0px 0px 10px 0px;">
				( '.$row[2].' ) '.$row[0] . ' $ ' . number_format($row[2] * $row[3],GetNumberDecimales(),".",",").'<br>
				</li>';
		}

	}
	
	while($row = mysqli_fetch_array($genericos))
	{
		$total_sin = $total_sin + ($row[0] * $row[2]);

		if ($Showiva)
		{
			$body_products .= 
			'<li style="padding: 0px 0px 10px 0px;">
				( '.$row[0].' ) '.$row[1]. ' $ ' . number_format(($row[0] * $row[2]) / 1.160000,GetNumberDecimales(),".",",").'<br>
				</li>';
		}else
		{
			$body_products .= 
			'<li style="padding: 0px 0px 10px 0px;">
				( '.$row[0].' ) '.$row[1]. ' $ ' . number_format($row[0] * $row[2],GetNumberDecimales(),".",",").'<br>
				</li>';
		}

		
	}

	$ivac = '.'.$iva;

	$total_pagar = $total_sin - ($total_sin * ($descuento / 100));
	$total_pagar_ = $total_pagar;
	
	$subtotal = $total_pagar / 1.160000;
	$subtotal_ = $subtotal;

	$iva_ = $total_pagar - $subtotal;

	$subtotal = number_format($subtotal,2,".",",");
	$total_pagar = number_format($total_pagar,2,".",",");
	$iva_ = number_format($iva_,2,".",",");
	
	$descuento_body = "";
	
	if ($descuento > 0)
	{
		$descuento_body = '
		<br>
		<strong>TOTAL SN DESC:</strong> $ '.number_format($total_sin,2,".",",").'
		<br>
		<strong>DESC '.$descuento .' %:</strong> - $ '.number_format(($total_sin - $total_pagar_),2,".",",").'
		<br>';
	}
	
	$MostrarDesgloseIva = "";

	if ($Showiva)
	{
		$MostrarDesgloseIva = '
			<br><strong> SUBTOTAL:</strong> $ '.$subtotal.'
			<br><strong> IVA:</strong> $ '.$iva_.'
		';
	}

	$codigoHTML='
	<style>
	
	
	@page {
		size: 5.6cm 40cm;
		font-size: 12px;
		margin-top: 0.1em;
		margin-left: 0.4em;
		margin-right: 0.4em;
		margin-bottom: 0.1em;
	}
	</style>
	<body style="margin: 0.2em auto 0.2em auto; zoom: 400%;">
	<center>
	<img src="'.ReturnImgLogo().'" alt="Membrete" height="120" width="auto">
	<br>
	<h4 style="display:inline;">'.$sucursal.'</h4>
	<br>'.$bodysucursal.'
	<br><br>
	<strong>CLIENTE: </strong><br>'.strtoupper($cliente).'
	<br><br><b>FECHA:</b> <br>'.GetFechaText($fecha_ini).'
	<br><b><br>FOLIO REMISION:</b><br> '.$folio.'
	<br><br></center>
	'.$body_products.'
	'.$descuento_body.'
	'.$MostrarDesgloseIva.'
	<br><br><center><strong> TOTAL PAGADO<br></strong> $ '.$total_pagar.' MXN<br></center>
	';
	
	$codigoHTML .= FooterPageReport();
	
	$codigoHTML = mb_convert_encoding($codigoHTML, 'HTML-ENTITIES', 'UTF-8');
	$dompdf=new DOMPDF();
	$dompdf->set_paper('letter');
	$dompdf->load_html($codigoHTML);
	ini_set("memory_limit","128M");
	$dompdf->render();
	$dompdf->stream("remision".$_GET["folio_sale"].".pdf");
?>