<?php
function formato_rfc_sdk($rfc)
{
    
    
	$rfc=trim($rfc);
	$rfc=str_replace('-','',$rfc);
	$rfc=str_replace(' ','',$rfc);
	$rfc=strtoupper($rfc);
 
    //$rfc=utf8_decode($rfc);

   // echo $rfc=utf8_encode($rfc);
    
	return $rfc;
}
function elimina_ampersand($texto)
{
	// Se corrigen los ampersand
	$matches = array();
	$rr = preg_match('/&[^amp;]/', $texto, $matches, PREG_OFFSET_CAPTURE);
	
	// Si se encontraron incidencias
	if($rr !== false)
	{
		foreach($matches as $match)
		{
			$pos = $match[1];
			$aux = '';
			for($i = 0; $i < strlen($texto); $i++)
			{
				if($i == $pos)
				{
					$aux .= '&amp;';
				}
				else
				{
					$aux .= $texto[$i];
				}
			}
			return $aux;
		}
	}
	return $texto;
}

function mf_default(&$datos)
{

if(count($datos['rFE'])>0)
{
	date_default_timezone_set('America/Panama');
}	
if(count($datos['retencion'])>0)
{
	date_default_timezone_set('America/Mexico_City');
}	
if(count($datos['emisor']['rfc'])>0)
{
	date_default_timezone_set('America/Mexico_City');
}	
	
    // Retencion por defecto en NO
    if(!isset($datos['retencion']))
    {
        $datos['retencion']='NO';
    }else{
      
        // $datos['emisor']['RfcE'] = formato_rfc_sdk($datos['emisor']['RfcE']);;
    }

    // Modo externo por defecto en SI
    if(!isset($datos['modo_externo']))
    {
        $datos['modo_externo'] = 'SI';
    }
	
	// Se eliminan ampersand
	if(isset($datos['emisor']['rfc']))
	{
		$datos['emisor']['rfc'] = formato_rfc_sdk($datos['emisor']['rfc']);
	}
	if(isset($datos['receptor']['rfc']))
	{
		$datos['receptor']['rfc'] = formato_rfc_sdk($datos['receptor']['rfc']);
	}
    
    if(isset($datos['factura']['descuento']))
    {
        if($datos['factura']['descuento']<=0)
        {
            unset($datos['factura']['descuento']);
        }
        
    }
/// PANAMA    
    $fecha=date("c",time()-1);
	if($datos['rFE']['gDGen']['dFechaEm']=='AUTO')
		$datos['rFE']['gDGen']['dFechaEm']=$fecha;
	
	for($i=0;$i<10;$i++)
	{
		if($datos['rFE']['gTot']['gPagPlazo'][$i]['dFecItPlazo']=='AUTO')
			$datos['rFE']['gTot']['gPagPlazo'][$i]['dFecItPlazo']=$fecha;
	}
//MEXICO
	$fechamx=date('Y-m-d\TH:i:s', time() - 10);
	if($datos['factura']['fecha_expedicion']=='AUTO')
	{
		$datos['factura']['fecha_expedicion']=$fechamx;
	}

    return $datos;
}