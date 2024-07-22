<?php
    include 'db.php';
    
    
    $inicio_old = $_GET["desde"];
    $desde = $inicio_old . ' 00:00:00';
    
    $finaliza_old = $_GET["hasta"];
    $hasta = $finaliza_old . ' 23:59:59';

	$proveedor = $_GET["proveedor"];

	$total_unitario = 0;
	$total_total = 0;

    
    $data = mysqli_query(db_conectar(),"SELECT v.id, p.nombre, (select sum(v2.unidades) from producto_vendidos v2 WHERE v2.producto = v.producto and v2.fecha >= '$desde' and v2.fecha <= '$hasta' ) as unidades, p.foto0, p.`no. De parte`, p.precio_normal, (p.precio_normal * unidades) as total, p.precio_costo FROM producto_vendidos v, productos p WHERE v.producto = p.id and v.fecha >= '$desde' and v.fecha <= '$hasta' and p.proveedor like '%$proveedor%' GROUP by v.producto ORDER by p.nombre asc");
    
    // Dompdf php 7
    //require_once 'dompdf_php7.1/autoload.inc.php';
    //use Dompdf\Dompdf;

    // Dompdf php 5
    require_once("../dompdf_php5.6/dompdf_config.inc.php");
    
    
    
    $ColorBarr = ColorBarrReport();
    $Showiva = DesglosarReportIva();

    session_start();
    
    $body_products = "";

    $cont = 0; $first = true;

    
    while($row = mysqli_fetch_array($data))
    {

		$total_unitario = $total_unitario + $row[5];
		$total_total = $total_total + $row[6];
		$total_costo = $total_costo + $row[7];

        if ($cont == 0)
        {
            $body_products .= '
            <table border="0" style="width:100%; border-collapse: collapse;">
                <tr>
                <th bgcolor="'.$ColorBarr.'" style="border-right:1px solid '.$ColorBarr.';border-left:1px solid '.$ColorBarr.';border-bottom:1px solid black;border-top:1px solid '.$ColorBarr.'">NOMBRE</th> 
                <th bgcolor="'.$ColorBarr.'" style="width:25%; border-right:1px solid '.$ColorBarr.';border-left:1px solid '.$ColorBarr.';border-bottom:1px solid black;border-top:1px solid '.$ColorBarr.'">VENDIDOS</th> 
                <th bgcolor="'.$ColorBarr.'" style="border-right:1px solid '.$ColorBarr.';border-left:1px solid '.$ColorBarr.';border-bottom:1px solid black;border-top:1px solid '.$ColorBarr.'">NO. PARTE</th>
				<th bgcolor="'.$ColorBarr.'" style="border-right:1px solid '.$ColorBarr.';border-left:1px solid '.$ColorBarr.';border-bottom:1px solid black;border-top:1px solid '.$ColorBarr.'">C/U</th>
				<th bgcolor="'.$ColorBarr.'" style="border-right:1px solid '.$ColorBarr.';border-left:1px solid '.$ColorBarr.';border-bottom:1px solid black;border-top:1px solid '.$ColorBarr.'">P/U</th>
				<th bgcolor="'.$ColorBarr.'" style="border-right:1px solid '.$ColorBarr.';border-left:1px solid '.$ColorBarr.';border-bottom:1px solid black;border-top:1px solid '.$ColorBarr.'">TOTAL</th>
                </tr>
                <tr>
                    <td style="font-family: Arial, serif; font-size: small; border-right: 1px solid black;border-left:1px solid black;border-bottom: 1px solid black;border-top:none">'.$row[1].'</td>
                    <td style="font-family: Arial, serif; font-size: small; border-right: 1px solid black;border-left:1px solid black;border-bottom: 1px solid black;border-top:none"><center>'.$row[2].'</center></td>
                    <td style="font-family: Arial, serif; font-size: small; border-right: 1px solid black;border-left:1px solid black;border-bottom: 1px solid black;border-top:none">'.$row[4].'</td>

					<td style="font-family: Arial, serif; font-size: small; border-right: 1px solid black;border-left:1px solid black;border-bottom: 1px solid black;border-top:none">
					<table border="0" width="100%">
					<tr>
						<td style="text-align: center;">$</td>
						<td style="text-align: right;">'.number_format($row[7],GetNumberDecimales(),".",",").'</td>
					</tr>
					</table>
					
					</td>
					
					<td style="font-family: Arial, serif; font-size: small; border-right: 1px solid black;border-left:1px solid black;border-bottom: 1px solid black;border-top:none">
					<table border="0" width="100%">
					<tr>
						<td style="text-align: center;">$</td>
						<td style="text-align: right;">'.number_format($row[5],GetNumberDecimales(),".",",").'</td>
					</tr>
					</table>
					
					</td>
					
					<td style="font-family: Arial, serif; font-size: small; border-right: 1px solid black;border-left:1px solid black;border-bottom: 1px solid black;border-top:none">
					
					<table border="0" width="100%">
					<tr>
						<td style="text-align: center;">$</td>
						<td style="text-align: right;">'.number_format($row[6],GetNumberDecimales(),".",",").'</td>
					</tr>
					</table>
					
					</td>
                </tr>
            ';
        }

        if ($cont > 0)
        {
            $body_products .= '
            <tr>
				<td style="font-family: Arial, serif; font-size: small; border-right: 1px solid black;border-left:1px solid black;border-bottom: 1px solid black;border-top:none">'.$row[1].'</td>
				<td style="font-family: Arial, serif; font-size: small; border-right: 1px solid black;border-left:1px solid black;border-bottom: 1px solid black;border-top:none"><center>'.$row[2].'</center></td>
				<td style="font-family: Arial, serif; font-size: small; border-right: 1px solid black;border-left:1px solid black;border-bottom: 1px solid black;border-top:none">'.$row[4].'</td>
				
				<td style="font-family: Arial, serif; font-size: small; border-right: 1px solid black;border-left:1px solid black;border-bottom: 1px solid black;border-top:none">
					<table border="0" width="100%">
					<tr>
						<td style="text-align: center;">$</td>
						<td style="text-align: right;">'.number_format($row[7],GetNumberDecimales(),".",",").'</td>
					</tr>
					</table>
					
				</td>
					
				<td style="font-family: Arial, serif; font-size: small; border-right: 1px solid black;border-left:1px solid black;border-bottom: 1px solid black;border-top:none">
				
				<table border="0" width="100%">
				<tr>
					<td style="text-align: center;">$</td>
					<td style="text-align: right;">'.number_format($row[5],GetNumberDecimales(),".",",").'</td>
				</tr>
				</table>
				
				</td>
				
				<td style="font-family: Arial, serif; font-size: small; border-right: 1px solid black;border-left:1px solid black;border-bottom: 1px solid black;border-top:none">
				
				<table border="0" width="100%">
				<tr>
					<td style="text-align: center;">$</td>
					<td style="text-align: right;">'.number_format($row[6],GetNumberDecimales(),".",",").'</td>
				</tr>
				</table>
				
				</td>
			</tr>
            ';
        }

        if ($first)
        {
            if ($cont == 20)
            {
                $cont = -1;
                $first = false;
                $body_products .= 
                '
                    </table>
                    <div style="page-break-after:always;"></div>
                ';
            }
        }else
        {
            if ($cont == 30)
            {
                $cont = -1;
                $body_products .= 
                '
                    </table>
                    <div style="page-break-after:always;"></div>
                ';
            }
        }

        $cont ++;
    }

		$body_products .= '
		<tr>
			<td style="font-family: Arial, serif; font-size: small; border-right: 1px solid black;border-left:1px solid black;border-bottom: 1px solid black;border-top:none">'.$row[1].'</td>
			<td style="font-family: Arial, serif; font-size: small; border-right: 1px solid black;border-left:1px solid black;border-bottom: 1px solid black;border-top:none"><center>'.$row[2].'</center></td>
			<td style="font-family: Arial, serif; font-size: small; border-right: 1px solid black;border-left:1px solid black;border-bottom: 1px solid black;border-top:none">'.$row[4].'</td>
			
			<td style="font-family: Arial, serif; font-size: small; border-right: 1px solid black;border-left:1px solid black;border-bottom: 1px solid black;border-top:none">
			
			<table border="0" width="100%">
			<tr>
				<td style="text-align: center;">$</td>
				<td style="text-align: right;">'.number_format($total_costo,GetNumberDecimales(),".",",").'</td>
			</tr>
			</table>
			
			</td>
			
			<td style="font-family: Arial, serif; font-size: small; border-right: 1px solid black;border-left:1px solid black;border-bottom: 1px solid black;border-top:none">
			
			<table border="0" width="100%">
			<tr>
				<td style="text-align: center;">$</td>
				<td style="text-align: right;">'.number_format($total_unitario,GetNumberDecimales(),".",",").'</td>
			</tr>
			</table>
			
			</td>
			
			<td style="font-family: Arial, serif; font-size: small; border-right: 1px solid black;border-left:1px solid black;border-bottom: 1px solid black;border-top:none">
			
			<table border="0" width="100%">
			<tr>
				<td style="text-align: center;">$</td>
				<td style="text-align: right;">'.number_format($total_total,GetNumberDecimales(),".",",").'</td>
			</tr>
			</table>
			
			</td>
		</tr>
		';


    $codigoHTML='
    <style>
    @page {
        margin-top: 0.7em;
        margin-left: 0.6em;
        margin-right: 0.6em;
        margin-bottom: 0.1em;
    }
    </style>
    <body>
    <table width="100%" border="0">
        <tr>
            <td width="35%">
                <img src="'."../".ReturnImgLogo().'" alt="Membrete" height="100" width="200">
            </td>

            <td>
                <center>
                <h2 style="display:inline;">'.$_SESSION['empresa_nombre'].'</h2>
                <br>Direccion: '.$_SESSION['empresa_direccion'].'<br>Telefono: '.$_SESSION['empresa_telefono'].'
                </center>
            </td>
        </tr>
    </table>
    
    <table style="height: 5px;" width="100%">
        <tr>
            <td bgcolor="'.$ColorBarr.'" align="center"><strong>REPORTE DE UNIDADES VENDIDAS</strong></td>
        </tr>
        <tr>
            <td>
            <table width="100%">
                <tr>
                <td style="border-right: 1px solid black;border-left:1px solid black;border-bottom: 1px solid black;border-top: 1px solid black" align="center"><b>DESDE:</b> '.GetFechaText($desde).' </td>
                        <td style="border-right: 1px solid black;border-left:1px solid black;border-bottom: 1px solid black;border-top: 1px solid black" align="center"><b>HASTA:</b> '.GetFechaText($hasta).' </td>
                </tr>
            </table>
            </td>
        </tr>
    </table>

    '.$body_products.'
    </table>
    ';
    
    $codigoHTML = mb_convert_encoding($codigoHTML, 'HTML-ENTITIES', 'UTF-8');
    $dompdf= new DOMPDF();
    $dompdf->set_paper('letter');
    $dompdf->load_html($codigoHTML);
    ini_set("memory_limit","128M");
    $dompdf->render();
    $dompdf->stream("unidades_vendidas.pdf");
?>