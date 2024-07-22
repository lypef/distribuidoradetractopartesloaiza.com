<?php

function mf_complemento_cartaporte20(array $datos)
{
    // Variable para los namespaces xml
    global $__mf_namespaces__;
    $__mf_namespaces__['cartaporte']['uri'] = 'http://www.sat.gob.mx/CartaPorte20';
    $__mf_namespaces__['cartaporte']['xsd'] = 'http://www.sat.gob.mx/sitio_internet/cfd/CartaPorte/CartaPorte20.xsd';

    $atr_opcionales = ['aaa', 'bbbb', 'ccccc'];
    $atrs = mf_atributos_cartaporte($datos, $atr_opcionales, 'CartaPorte'); 
    

    $xml = "<cartaporte20:CartaPorte Version='2.0' $atrs>";

//// Ubicaciones
	$xml .= "<cartaporte20:Ubicaciones>";
	foreach($datos['Ubicacion'] as $idx => $ubicacion)
	{
		
		
		
		$atrs = mf_atributos_cartaporte($datos['Ubicacion'][$idx]['atrs'], $atr_opcionales, 'xxx');
		$xml .= "<cartaporte20:Ubicacion $atrs>";
		if(count($datos['Ubicacion'][$idx]['atrs'])>1)
		{
			$atrs = mf_atributos_cartaporte($datos['Ubicacion'][$idx]['domicilio'], $atr_opcionales, 'xxx');
			$xml .= "<cartaporte20:Domicilio $atrs />";	
		}
		$xml .= "</cartaporte20:Ubicacion>";
		

	}
	$xml .= "</cartaporte20:Ubicaciones>";


//// Mercancias/mercancia
	$atrs = mf_atributos_cartaporte($datos['Mercancias']['atrs'], $atr_opcionales, 'xxx');
	$xml .= "<cartaporte20:Mercancias $atrs>";
	unset($datos['Mercancias']['atrs']);	
	foreach($datos['Mercancias'] as $idmercancia => $mercancia)
	{
		if("$idmercancia"!='atrs')
		{
			$atrs = mf_atributos_cartaporte($datos['Mercancias'][$idmercancia]['Mercancia']['atrs'], $atr_opcionales, 'xxx');


			$xml.="<cartaporte20:Mercancia $atrs>"; 
			//Pedimentos
			if(count($datos['Mercancias'][$idmercancia]['Mercancia']['Pedimentos'])>0)
			{

				foreach($datos['Mercancias'][$idmercancia]['Mercancia']['Pedimentos'] AS $idtmp=>$Pedimento)
				{

					$atrs = mf_atributos_cartaporte($Pedimento, $atr_opcionales, 'xxx');
					$xml.="<cartaporte20:Pedimentos $atrs />";
				}
			}
			
			//GuiasIdentificacion
			if(count($datos['Mercancias'][$idmercancia]['Mercancia']['GuiasIdentificacion'])>0)
			{
				foreach($datos['Mercancias'][$idmercancia]['Mercancia']['GuiasIdentificacion'] AS $idtmp=>$GuiasIdentificacion)
				{
					
					$atrs = mf_atributos_cartaporte($GuiasIdentificacion, $atr_opcionales, 'xxx');
					$xml.="<cartaporte20:GuiasIdentificacion $atrs />";
				}
			}
			//CantidadTransporta
			
			if(count($datos['Mercancias'][$idmercancia]['Mercancia']['CantidadTransporta'])>0)
			{
				foreach($datos['Mercancias'][$idmercancia]['Mercancia']['CantidadTransporta'] AS $idtmp=>$CantidadTransporta)
				{
					$atrs = mf_atributos_cartaporte($CantidadTransporta, $atr_opcionales, 'xxx');
					$xml.="<cartaporte20:CantidadTransporta $atrs />";
				}
			}

			//DetalleMercancia
			if(count($datos['Mercancias'][$idmercancia]['Mercancia']['DetalleMercancia'])>0)
			{
				foreach($datos['Mercancias'][$idmercancia]['Mercancia']['DetalleMercancia'] AS $idtmp=>$DetalleMercancia)
				{
					$atrs = mf_atributos_cartaporte($DetalleMercancia, $atr_opcionales, 'xxx');
					$xml.="<cartaporte20:DetalleMercancia $atrs />";
				}
			}			
			
			$xml.="</cartaporte20:Mercancia>";
			
		}





	//// Mercancias/Autotransporte

		if(count($datos['Mercancias'][$idmercancia]['Autotransporte'])>0)
		{
	
			$atrs = mf_atributos_cartaporte($datos['Mercancias'][$idmercancia]['Autotransporte']['atrs'], $atr_opcionales, 'xxx');
			$xml .= "<cartaporte20:Autotransporte $atrs>";

			foreach($datos['Mercancias'][$idmercancia]['Autotransporte'] as $idx => $datosAutotransporte)
			{

				
				{

	//echo "<pre>"; print_r($Autotransporte); echo "</pre>";
		//IdentificacionVehicular			
					if("$idx"=='IdentificacionVehicular')
					{
							$atrs = mf_atributos_cartaporte($datosAutotransporte, $atr_opcionales, 'xxx');
							$xml.="<cartaporte20:IdentificacionVehicular $atrs />";
					}
		//Seguros			
					if("$idx"=='Seguros')
					{
							$atrs = mf_atributos_cartaporte($datosAutotransporte, $atr_opcionales, 'xxx');
							$xml.="<cartaporte20:Seguros $atrs />";
					}
		//Remolque			
					if("$idx"=='Remolque')
					{
						$xml.="<cartaporte20:Remolques>";
							foreach($datosAutotransporte AS $datoRemolque)
							{
								$atrs = mf_atributos_cartaporte($datoRemolque, $atr_opcionales, 'xxx');
								$xml.="<cartaporte20:Remolque $atrs />";
								
							}
						$xml.="</cartaporte20:Remolques>";
					}				
				}
			}
			$xml .= "</cartaporte20:Autotransporte>";
		}


	//// Mercancias/TransporteMaritimo
		if(count($datos['Mercancias'][$idmercancia]['TransporteMaritimo'])>0)
		{

			$atrs = mf_atributos_cartaporte($datos['Mercancias'][$idmercancia]['TransporteMaritimo']['atrs'], $atr_opcionales, 'xxx');
			$xml .= "<cartaporte20:TransporteMaritimo $atrs>";
			
			
			$xml .= "</cartaporte20:TransporteMaritimo>";
		}
	//// Mercancias/TransporteFerroviario

echo htmlentities($xml);
		

		$xml .= "</cartaporte20:Mercancias >";
//echo htmlentities($xml);die();

			$atr_opcionales = ['PesoBrutoTotal', 'UnidadPeso', 'PesoNetoTotal', 'CargoPorTasacion'];
			$atrs = mf_atributos_cartaporte($datos['Mercancias'], $atr_opcionales, 'CartaPorte.Mercancias');
			// $atrs = mf_atributos_nodo($datos['Mercancias'], 'CartaPorte.Mercancias');

			$xml .= "<cartaporte20:Mercancias $atrs>";
			foreach($datos['Mercancias'] as $idx => $entidad)
			{
				if(is_array($datos['Mercancias'][$idx]) && is_int($idx))
				{
					$atr_opcionales = ['PesoBrutoTotal', 'UnidadPeso', 'PesoNetoTotal', 'CargoPorTasacion'];
					$atrs = mf_atributos_cartaporte($datos['Mercancias'][$idx], $atr_opcionales, 'CartaPorte.Mercancia');
					// $atrs = mf_atributos_nodo($datos['Mercancias'][$idx], 'CartaPorte.Mercancia');

					$xml .= "<cartaporte20:Mercancia $atrs >";
					if(isset($datos['Mercancias'][$idx]['CantidadTransporta']))
					{
						foreach($datos['Mercancias'][$idx]['CantidadTransporta']  as $idx2 => $entidad2)
						{
							$atrs = mf_atributos_nodo($entidad2);
							// $atrs = mf_atributos_nodo($entidad2, 'CartaPorte.Mercancia.CantidadTransporta');
							$xml .= "<cartaporte20:CantidadTransporta $atrs>";
							$xml .= "</cartaporte20:CantidadTransporta>";
						}
					}
					if(isset($datos['Mercancias'][$idx]['DetalleMercancia']))
					{
						$atrs = mf_atributos_nodo($datos['Mercancias'][$idx]['DetalleMercancia']);
						// $atrs = mf_atributos_nodo($datos['Mercancias'][$idx]['DetalleMercancia'], 'CartaPorte.Mercancia.DetalleMercancia');
						$xml .= "<cartaporte20:DetalleMercancia $atrs>";
						$xml .= "</cartaporte20:DetalleMercancia>";
					}
					$xml .= "</cartaporte20:Mercancia>";
				}
			}
			if(isset($datos['Mercancias']['AutotransporteFederal']))
			{
				$atrs = mf_atributos_nodo($datos['Mercancias']['AutotransporteFederal']);
				// $atrs = mf_atributos_nodo($datos['Mercancias']['AutotransporteFederal'], 'CartaPorte.Mercancia.AutotransporteFederal');
				$xml .= "<cartaporte20:AutotransporteFederal $atrs>";
				if(isset($datos['Mercancias']['AutotransporteFederal']['IdentificacionVehicular']))
				{
					$atrs = mf_atributos_nodo($datos['Mercancias']['AutotransporteFederal']['IdentificacionVehicular']);
					// $atrs = mf_atributos_nodo($datos['Mercancias']['AutotransporteFederal']['IdentificacionVehicular']);
					$xml .= "<cartaporte20:IdentificacionVehicular $atrs>";
					$xml .= "</cartaporte20:IdentificacionVehicular>";
				}
				if(isset($datos['Mercancias']['AutotransporteFederal']['Remolques']))
				{
					$atrs = mf_atributos_nodo($datos['Mercancias']['AutotransporteFederal']['Remolques']);
					// $atrs = mf_atributos_nodo($datos['Mercancias']['AutotransporteFederal']['Remolques']);
					$xml .= "<cartaporte20:Remolques $atrs>";

					if(isset($datos['Mercancias']['AutotransporteFederal']['Remolques']['Remolque']))
					{
						foreach($datos['Mercancias']['AutotransporteFederal']['Remolques']['Remolque']  as $idx2 => $entidad2)
						{
							$atrs2 = mf_atributos_nodo($entidad2);
							// $atrs2 = mf_atributos_nodo($entidad2, 'CartaPorte.Remolque');
							$xml .= "<cartaporte20:Remolque $atrs2>";
							$xml .= "</cartaporte20:Remolque>";
						}
					}
					$xml .= "</cartaporte20:Remolques>";
				}
				$xml .= "</cartaporte20:AutotransporteFederal>";
			}
			if(isset($datos['Mercancias']['TransporteMaritimo']))
			{
				$atrs = mf_atributos_nodo($datos['Mercancias']['TransporteMaritimo']);
				// $atrs = mf_atributos_nodo($datos['Mercancias']['TransporteMaritimo']);
				$xml .= "<cartaporte20:TransporteMaritimo $atrs>";
				if(isset($datos['Mercancias']['TransporteMaritimo']['Contenedor']))
				{
					//$atrs = mf_atributos_nodo($datos['Mercancias']['TransporteMaritimo']['Contenedor']);
					//$xml .= "<cartaporte20:Contenedor $atrs>";
					foreach($datos['Mercancias']['TransporteMaritimo']['Contenedor'] as $idx3 => $entidad3)
					{
						$atrs = mf_atributos_nodo($entidad3);
						// $atrs = mf_atributos_nodo($entidad3);
						$xml .= "<cartaporte20:Contenedor $atrs>";
						$xml .= "</cartaporte20:Contenedor>";
					}
					//$xml .= "</cartaporte20:Contenedor>";
				}
				$xml .= "</cartaporte20:TransporteMaritimo>";
			}  
			if(isset($datos['Mercancias']['TransporteAereo']))
			{
				$atrs = mf_atributos_nodo($datos['Mercancias']['TransporteAereo']);
				// $atrs = mf_atributos_nodo($datos['Mercancias']['TransporteAereo']);
				$xml .= "<cartaporte20:TransporteAereo $atrs>";
				$xml .= "</cartaporte20:TransporteAereo>";
			}
			if(isset($datos['Mercancias']['TransporteFerroviario']))
			{
				$atrs = mf_atributos_nodo($datos['Mercancias']['TransporteFerroviario']);
				// $atrs = mf_atributos_nodo($datos['Mercancias']['TransporteFerroviario']);
				$xml .= "<cartaporte20:TransporteFerroviario $atrs>";
				if(isset($datos['Mercancias']['TransporteFerroviario']['DerechosDePaso']))
				{
					//$atrs = mf_atributos_nodo($datos['Mercancias']['TransporteMaritimo']['Contenedor']);
					//$xml .= "<cartaporte20:Contenedor $atrs>";
					foreach($datos['Mercancias']['TransporteFerroviario']['DerechosDePaso'] as $idx3 => $entidad3)
					{
						$atrs = mf_atributos_nodo($entidad3);
						// $atrs = mf_atributos_nodo($entidad3);
						$xml .= "<cartaporte20:DerechosDePaso $atrs>";
						$xml .= "</cartaporte20:DerechosDePaso>";
					}
					//$xml .= "</cartaporte20:Contenedor>";
				}
				if(isset($datos['Mercancias']['TransporteFerroviario']['Carro']))
				{
					//$atrs = mf_atributos_nodo($datos['Mercancias']['TransporteFerroviario']['Carro']);
					//$xml .= "<cartaporte20:Carro $atrs>";
					foreach($datos['Mercancias']['TransporteFerroviario']['Carro'] as $idx4 => $entidad4)
					{
						$atrs = mf_atributos_nodo($entidad4);
						// $atrs = mf_atributos_nodo($entidad4);
						$xml .= "<cartaporte20:Carro $atrs>";
						foreach($datos['Mercancias']['TransporteFerroviario']['Carro'][$idx4]['Contenedor'] as $idx5 => $entidad5)
						{
							$atrs = mf_atributos_nodo($entidad5);
							// $atrs = mf_atributos_nodo($entidad5);
							$xml .= "<cartaporte20:Contenedor $atrs>";
							$xml .= "</cartaporte20:Contenedor>";
						}
						$xml .= "</cartaporte20:Carro>";
					}
					//$xml .= "</cartaporte20:Carro>";
				}
				$xml .= "</cartaporte20:TransporteFerroviario>";
			}
		
		}//fin ciclo mercancia
		
        $xml .= "</cartaporte20:Mercancias>";

    if(isset($datos['FiguraTransporte']))
    {
        $atrs = mf_atributos_nodo($datos['FiguraTransporte']);
        // $atrs = mf_atributos_nodo($datos['FiguraTransporte'], 'CartaPorte.FiguraTransporte');
        $xml .= "<cartaporte20:FiguraTransporte $atrs>";
        if(isset($datos['FiguraTransporte']['Operadores']))
		{
			$atrs = mf_atributos_nodo($datos['FiguraTransporte']['Operadores']);
            // $atrs = mf_atributos_nodo($datos['FiguraTransporte']['Operadores']);
			$xml .= "<cartaporte20:Operadores $atrs>";
            foreach($datos['FiguraTransporte']['Operadores'] as $idx6 => $entidad6)
            {
                $atrs = mf_atributos_nodo($entidad6);
                // $atrs = mf_atributos_nodo($entidad6);
                $xml .= "<cartaporte20:Operador $atrs>";
                if(isset($datos['FiguraTransporte']['Operadores'][$idx6]['Domicilio']))
                {
                    $atrs = mf_atributos_nodo($datos['FiguraTransporte']['Operadores'][$idx6]['Domicilio']);
                    // $atrs = mf_atributos_nodo($datos['FiguraTransporte']['Operadores'][$idx6]['Domicilio']);
                    $xml .= "<cartaporte20:Domicilio $atrs>";
                    $xml .= "</cartaporte20:Domicilio>";
                }
                $xml .= "</cartaporte20:Operador>";
            }
            $xml .= "</cartaporte20:Operadores>";
        }
        if(isset($datos['FiguraTransporte']['Propietario']))
		{
            foreach($datos['FiguraTransporte']['Propietario'] as $idx7 => $entidad7)
            {
                $atrs = mf_atributos_nodo($datos['FiguraTransporte']['Propietario'][$idx7]);
                // $atrs = mf_atributos_nodo($datos['FiguraTransporte']['Propietario'][$idx7]);
                $xml .= "<cartaporte20:Propietario $atrs>";

                if(isset($datos['FiguraTransporte']['Propietario'][$idx7]['Domicilio']))
                {
                    $atrs = mf_atributos_nodo($datos['FiguraTransporte']['Propietario'][$idx7]['Domicilio']);
                    // $atrs = mf_atributos_nodo($datos['FiguraTransporte']['Propietario'][$idx7]['Domicilio']);
                    $xml .= "<cartaporte20:Domicilio $atrs>";
                    $xml .= "</cartaporte20:Domicilio>";
                }
                $xml .= "</cartaporte20:Propietario>";
            }
        }
        if(isset($datos['FiguraTransporte']['Arrendatario']))
		{
            foreach($datos['FiguraTransporte']['Arrendatario'] as $idx7 => $entidad7)
            {
                $atrs = mf_atributos_nodo($datos['FiguraTransporte']['Arrendatario'][$idx7]);
                // $atrs = mf_atributos_nodo($datos['FiguraTransporte']['Arrendatario'][$idx7]);
	            $xml .= "<cartaporte20:Arrendatario $atrs>";

                if(isset($datos['FiguraTransporte']['Arrendatario'][$idx7]['Domicilio']))
                {
                    $atrs = mf_atributos_nodo($datos['FiguraTransporte']['Arrendatario'][$idx7]['Domicilio']);
                    // $atrs = mf_atributos_nodo($datos['FiguraTransporte']['Arrendatario'][$idx7]['Domicilio']);
                    $xml .= "<cartaporte20:Domicilio $atrs>";
                    $xml .= "</cartaporte20:Domicilio>";
                }
                $xml .= "</cartaporte20:Arrendatario>";
            }
        }
        if(isset($datos['FiguraTransporte']['Notificado']))
		{
            foreach($datos['FiguraTransporte']['Notificado'] as $idx7 => $entidad7)
            {
                $atrs = mf_atributos_nodo($datos['FiguraTransporte']['Notificado'][$idx7]);
                // $atrs = mf_atributos_nodo($datos['FiguraTransporte']['Notificado'][$idx7]);
			    $xml .= "<cartaporte20:Notificado $atrs>";

                if(isset($datos['FiguraTransporte']['Notificado'][$idx7]['Domicilio']))
                {
                    $atrs = mf_atributos_nodo($datos['FiguraTransporte']['Notificado'][$idx7]['Domicilio']);
                    // $atrs = mf_atributos_nodo($datos['FiguraTransporte']['Notificado'][$idx7]['Domicilio']);
                    $xml .= "<cartaporte20:Domicilio $atrs>";
                    $xml .= "</cartaporte20:Domicilio>";
                }
                $xml .= "</cartaporte20:Notificado>";
            }
        }
        $xml .= "</cartaporte20:FiguraTransporte>";
    }
    $xml .= "</cartaporte20:CartaPorte>";


    echo $xml;
    return $xml;
}

function mf_atributos_cartaporte(array $datos, array $atr_opcionales, $ruta='')
{
    $atributos = mf_atributos_nodo($datos, $ruta);

    foreach ($atr_opcionales as $key => $atributo)
    {
        if(!isset($datos[$atributo]))
        {
            $atributos = str_replace($atributo, '', $atributos);
        }
    }

    return $atributos;
}
