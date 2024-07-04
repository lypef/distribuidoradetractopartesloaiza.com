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
                  
                  <div class="col-md-6 text-center">
                      <label>DESDE</label><br>
                      <input type="date" id="inicio" name="inicio" value="<?php echo $_GET["desde"]; ?>" style="text-align: center; height:40px; border: 2px solid #D9D7D7;" onchange="change_date();">
                  </div>
        
                  <div class="col-md-6 text-center">
                      <label>HASTA</label><br>
                      <input type="date" id="finaliza" name="finaliza" value="<?php echo $_GET["hasta"]; ?>" style="text-align: center; height:40px; border: 2px solid #D9D7D7;" onchange="change_date();">
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
              <?php echo producto_vendidos($_GET["desde"], $_GET["hasta"], $_GET["id"]); ?>
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
    var id = <?php echo $_GET["id"]; ?>;

    window.location.href = "/products_vendidos.php?desde="+inicio+"&hasta="+finaliza+"&id="+id;


  }
</script>

<?php
    include 'func/footer.php';
?>
        
