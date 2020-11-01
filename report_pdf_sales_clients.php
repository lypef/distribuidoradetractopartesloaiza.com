<?php
    require_once 'func/db.php';
    require_once("dompdf/dompdf_config.inc.php");
    session_start();
    
    $inicio = $_GET["inicio"] . ' 00:00:00';
    $finaliza = $_GET["finaliza"] . ' 23:59:59';
    $client = $_GET["client"];
    $vendedor = $_GET["usuario"];
    $sucursal = $_GET["sucursal"];
    $efectivo = 0;
    $transferencia = 0;
    $deposito = 0;
    $total = 0;
    $tarjeta = 0;

    $total_costo = 0;
    $con_costo = db_conectar();

    $con = db_conectar();  
    if ($vendedor > 0 && $sucursal == 0)
    {
        $sales = mysqli_query($con,"SELECT f.folio, v.nombre, c.nombre, f.descuento, f.fecha, f.cobrado, f.fecha_venta, s.nombre, f.t_pago FROM folio_venta f, clients c, users v, sucursales s  WHERE f.vendedor = v.id and f.client = c.id and f.open = 0 and f.sucursal = s.id and f.fecha_venta >= '$inicio' and f.fecha_venta <= '$finaliza' and f.vendedor = '$vendedor' and f.client = '$client' order by  f.fecha_venta desc ");
    }
    elseif ($vendedor == 0 && $sucursal > 0)
    {
        $sales = mysqli_query($con,"SELECT f.folio, v.nombre, c.nombre, f.descuento, f.fecha, f.cobrado, f.fecha_venta, s.nombre, f.t_pago FROM folio_venta f, clients c, users v, sucursales s  WHERE f.vendedor = v.id and f.client = c.id and f.open = 0 and f.sucursal = s.id and f.fecha_venta >= '$inicio' and f.fecha_venta <= '$finaliza' and f.sucursal = '$sucursal' and f.client = '$client' order by  f.fecha_venta desc ");
    }
    elseif ($vendedor > 0 && $sucursal > 0)
    {
        $sales = mysqli_query($con,"SELECT f.folio, v.nombre, c.nombre, f.descuento, f.fecha, f.cobrado, f.fecha_venta, s.nombre, f.t_pago FROM folio_venta f, clients c, users v, sucursales s  WHERE f.vendedor = v.id and f.client = c.id and f.open = 0 and f.sucursal = s.id and f.fecha_venta >= '$inicio' and f.fecha_venta <= '$finaliza' and f.sucursal = '$sucursal' and f.vendedor = '$vendedor' and f.client = '$client' order by  f.fecha_venta desc ");
    }
    else
    {
        $sales = mysqli_query($con,"SELECT f.folio, v.nombre, c.nombre, f.descuento, f.fecha, f.cobrado, f.fecha_venta, s.nombre, f.t_pago FROM folio_venta f, clients c, users v, sucursales s  WHERE f.vendedor = v.id and f.client = c.id and f.open = 0 and f.fecha_venta >= '$inicio' and f.fecha_venta <= '$finaliza' and f.sucursal = s.id  and f.client = '$client' order by  f.fecha_venta desc ");
    }
    
    $body = '';
    while($row = mysqli_fetch_array($sales))
    {
        if ($row[8] == "efectivo")
        {
            $efectivo = $efectivo + $row[5];
        }
        elseif ($row[8] == "transferencia")
        {
            $transferencia = $transferencia + $row[5];
        }
        elseif ($row[8] == "deposito")
        {
            $deposito = $deposito + $row[5];
        }
        elseif ($row[8] == "tarjeta")
        {
            $tarjeta = $tarjeta + $row[5];
        }
        
        // Total Productos costo
        $costo_tmp = 0;
        $costo_data = mysqli_query($con_costo,"SELECT SUM(p.precio_costo) as total_costo FROM product_venta v, productos p WHERE v.product = p.id and v.folio_venta = $row[0] ");

        while($row_costo = mysqli_fetch_array($costo_data))
        {
            $costo_tmp = $costo_tmp + $row_costo[0];
            $total_costo = $total_costo + $row_costo[0];
        }
        //
                
        $body = $body.'
        <tr>
        <td class="item-des">'.$row[0].'</td>
        <td class="item-des"><p>'.$row[1].'</p></td>
        <td class="item-des"><p>'.$row[2].'</p></td>
        <td class="item-des"><p>'.$row[7].'</p></td>
        <td class="item-des"><p>'.$row[6].'</p></td>
        <td class="item-des"><center><p>'.$row[3].' %</p></center></td>
        
        <td class="item-des"><center><p>$ '.number_format($costo_tmp,2,".",",").'</p></center></td>
        <td class="item-des"><center><p>$ '.number_format($row[5] - $costo_tmp,2,".",",").'</p></center></td>
        <td class="item-des"><center><p>$ '.number_format($row[5],2,".",",").'</p></center></td>

        <td class="item-des uppercase"><center><p>'.strtoupper($row[8]).'</p></center></td>
        </tr>
        ';
        $total = $total + $row[5];
    }
    
    $codigoHTML='
    <h1><center>'.$_SESSION['empresa_nombre'].'</center></h1>
    <h3><center>'.$_SESSION['empresa_direccion'].'</center></h3>
    <h3><center>MAIL: '.$_SESSION['empresa_correo'].' | TEL: '.$_SESSION['empresa_telefono'].'</center></h3>
    <h4><center>LISTADO DE VENTAS : DESDE:'.$inicio.' | HASTA:'.$finaliza.'</center></h4>
    <hr>
    <br><br>
    <table style="width:100%">
        <tr>
        <th class="table-head th-name uppercase">FOLIO</th>
        <th class="table-head th-name uppercase">VENDEDOR</th>
        <th class="table-head th-name uppercase">CLIENTE</th>
        <th class="table-head th-name uppercase">SUCURSAL</th>
        <th class="table-head th-name uppercase">F.VENTA</th>
        <th class="table-head th-name uppercase">DESCUENTO</th>
        <th class="table-head th-name uppercase">COSTO</th>
        <th class="table-head th-name uppercase">UTILIDAD</th>
        <th class="table-head th-name uppercase">COBRADO</th>
        <th class="table-head th-name uppercase">M. PAGO</th>
        </tr>
        '.$body.'
    </table>
    
    <br><br>
    <br>
    <div align="right">';
    
    if ($efectivo > 0)
    {
        $codigoHTML .= '
        <h5>Efectivo: $ '.number_format($efectivo,2,".",",").' MXN</h5>
        ';
    }

    if ($transferencia > 0)
    {
        $codigoHTML .= '
        <h5>Tranferencia: $ '.number_format($transferencia,2,".",",").' MXN</h5>
        ';
    }

    if ($tarjeta > 0)
    {
        $codigoHTML .=  '
        <h5>Tarjeta: $ '.number_format($tarjeta,2,".",",").' MXN</h5>
        ';
    }

    if ($deposito > 0)
    {
        $codigoHTML .= '
        <h5>Depositos: $ '.number_format($deposito,2,".",",").' MXN</h5>
        ';
    }
    
    $codigoHTML .= '<table style="width: 100%;">
		<tbody>
		<tr>
		<td style="width: 52px; text-align: center;"><strong>TOTAL COSTO</strong></td>
		<td style="width: 65px; text-align: center;"><strong>TOTAL UTILIDAD</strong></td>
		<td style="width: 83.4667px; text-align: center;"><strong>TOTAL COBRADO</strong></td>
		</tr>
		<tr>
		<td style="width: 52px; text-align: right;">$ '.number_format($total_costo,2,".",",").' MXN</td>
		<td style="width: 65px; text-align: right;">$ '.number_format($total - $total_costo,2,".",",").' MXN</td>
		<td style="width: 83.4667px; text-align: right;">$ '.number_format($total,2,".",",").' MXN</td>
		</tr>
		</tbody>
		</table>
		<br>

		<table style="width: 100%;">
		<tbody>
		<tr>
		<td style="width: 52px; text-align: center;"><strong>TOTAL COSTO SIN IVA</strong></td>
		<td style="width: 65px; text-align: center;"><strong>TOTAL UTILIDAD SIN IVA</strong></td>
		<td style="width: 83.4667px; text-align: center;"><strong>TOTAL COBRADO SIN IVA</strong></td>
		</tr>
		<tr>
		<td style="width: 52px; text-align: right;">$ '.number_format($total_costo / 1.160000,2,".",",").' MXN</td>
		<td style="width: 65px; text-align: right;">$ '.number_format(($total - $total_costo) / 1.160000,2,".",",").' MXN</td>
		<td style="width: 83.4667px; text-align: right;">$ '.number_format($total / 1.160000,2,".",",").' MXN</td>
		</tr>
		</tbody>
		</table>
		<br>
	</div>
    <br>
    <footer>
      <center><p>CLTA DESARROLLO & DISTRIBUCION DE SOFTWARE<br><a href="http://www.cyberchoapas.com"> www.cyberchoapas.com</a></p></center>
    </footer>
    ';
    
    $codigoHTML = mb_convert_encoding($codigoHTML, 'HTML-ENTITIES', 'UTF-8');
    $dompdf=new DOMPDF();
    $dompdf->set_paper('letter', 'landscape');
    $dompdf->load_html($codigoHTML);
    ini_set("memory_limit","128M");
    $dompdf->render();
    $dompdf->stream("venta_ini".$_GET["inicio"]."_fin".$_GET["finaliza"].".pdf");
?>