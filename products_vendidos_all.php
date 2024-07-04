<style>
	@media only screen and (max-width: 1024px) {
	
		#estadisticas td:nth-of-type(1):before {
			content: "IMAGEN";
      font-weight: bold;
      text-align: left;
		}

		
		#estadisticas td:nth-of-type(2):before {
			content: "VENDIDOS";
      font-weight: bold;
      text-align: left;
		}
		
		
		#estadisticas td:nth-of-type(3):before {
			content: "NOMBRE";
      font-weight: bold;
      text-align: left;
		}
		

		#estadisticas td:nth-of-type(4):before {
			content: "PARTE";
      font-weight: bold;
      text-align: left;
		}
		
		#estadisticas td:nth-of-type(5):before {
			content: "COSTO";
      font-weight: bold;
      text-align: left;
		}
		
		#estadisticas td:nth-of-type(6):before {
			content: "UNITARIO";
      font-weight: bold;
      text-align: left;
		}
		
		#estadisticas td:nth-of-type(7):before {
			content: "TOTAL";
      font-weight: bold;
      text-align: left;
		}
	}

</style>

<?php
    include 'func/header.php';
?>

<!-- Start page content -->
<section id="page-content" class="page-wrapper">
<!-- Start Product List -->
<div class="product-list-tab">
    <div class="container">
        

        <div class="row">
        <div class="col-md-12">
          <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
              <div class="panel panel-primary">
                  
                  <div class="col-md-4 text-center">
                      <label>DESDE</label><br>
                      <input type="date" id="inicio" name="inicio" value="<?php echo $_GET["desde"]; ?>" style="text-align: center; height:40px; border: 2px solid #D9D7D7;" onchange="change_date();">
                  </div>
        
                  <div class="col-md-4 text-center">
                      <label>HASTA</label><br>
                      <input type="date" id="finaliza" name="finaliza" value="<?php echo $_GET["hasta"]; ?>" style="text-align: center; height:40px; border: 2px solid #D9D7D7;" onchange="change_date();">
                  </div>
				  
				  <div class="col-md-4 text-center">
                        <label>Selecione proveedor</label><br>
						<select id="proveedor" name="proveedor" onchange="change_date();">
								<?php echo Select_Proveedorcont($_GET["proveedor"]) ?>
						</select>                                       
                  </div>
				  
				  <div class="col-md-6 text-center">
						<br>
						<a href="/func/pdf_productos_vendidos_all.php?proveedor=<?php echo $_GET["proveedor"]; ?>&desde=<?php echo $_GET["desde"]; ?>&hasta=<?php echo $_GET["hasta"]; ?>">
						  <button type="button" class="btn btn-primary btn-lg btn-block" style="height: 45px;"><b>GENERAR PDF</b></button>
						</a>
                  </div>
        
                  <div class="col-md-6 text-center">
						<br>
						<a href="/func/xls_productos_vendidos_all.php?proveedor=<?php echo $_GET["proveedor"]; ?>&desde=<?php echo $_GET["desde"]; ?>&hasta=<?php echo $_GET["hasta"]; ?>">
						  <button type="button" class="btn btn-primary btn-lg btn-block" style="height: 45px;"><b>GENERAR EXCEL</b></button>
						</a>
                  </div>
          
              </div>
            </div>
          </div>
        </div>
        
        
        <div class="row">
        <br>
        <div class="col-md-12">
          <div class="panel-group" id="accordion0" role="tablist" aria-multiselectable="true">
            <div class="panel panel-primary">
              <?php echo producto_vendidos_all($_GET["desde"], $_GET["hasta"],$_GET["proveedor"])?>
              </div>
            </div>
          </div>
        </div>

    </div>
</div>
</section>
<!-- End page content -->

<script type="text/javascript">

        
  function change_date ()
  {
    // inicio, finaliza
    var inicio = document.getElementById("inicio").value;
    var finaliza = document.getElementById("finaliza").value;
	var proveedor = document.getElementById("proveedor").value;
    
    window.location.href = "/products_vendidos_all.php?desde="+inicio+"&hasta="+finaliza+"&proveedor="+proveedor;


  }
</script>

<?php
    include 'func/footer.php';
?>
        
