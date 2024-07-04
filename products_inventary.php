<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.0.1/css/toastr.css" rel="stylesheet"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.0.1/js/toastr.js"></script>

<style>
.w3-spin{animation:w3-spin 2s infinite linear}@keyframes w3-spin{0%{transform:rotate(0deg)}100%{transform:rotate(359deg)}}
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<?php
    include 'func/header.php';

    if ($_SESSION['product_gest'] != 1)
    {
      echo '<script>location.href = "/"</script>';
    }
?>

<!-- Start page content -->
<section id="page-content" class="page-wrapper">
<!-- Start Product List -->
<div class="product-list-tab">
    <div class="panel panel-primary"></div>
        
        <div class="row">
        
        <div class="col-md-12">
          <div class="panel-group" id="accordion0" role="tablist" aria-multiselectable="true">
            <div class="panel panel-primary " style="width: 2960px;">
              <?php echo producto_inventary($_GET["pagina"],$_GET["txt"],$_GET["almacen"]); ?>
              </div>
            </div>
          </div>
        </div>

    </div>
</section>
<!-- End page content -->


<script type="text/javascript">

  function agregar (id)
  {
    // ocultar inputs
    document.getElementById(id+"-agregar").style.display = "none";
    document.getElementById(id+"-no. De parte").style.display = "none";
    document.getElementById(id+"-nombre").style.display = "none";
    document.getElementById(id+"-descripcion").style.display = "none";
    document.getElementById(id+"-almacen").style.display = "none";
    document.getElementById(id+"-departamento").style.display = "none";
    document.getElementById(id+"-loc_almacen").style.display = "none";
    document.getElementById(id+"-marca").style.display = "none";
    document.getElementById(id+"-proveedor").style.display = "none";
    document.getElementById(id+"-precio_normal").style.display = "none";
    document.getElementById(id+"-precio_oferta").style.display = "none";
    document.getElementById(id+"-precio_costo").style.display = "none";
    document.getElementById(id+"-stock").style.display = "none";
    document.getElementById(id+"-tiempo de entrega").style.display = "none";
    document.getElementById(id+"-stock_min").style.display = "none";
    document.getElementById(id+"-stock_max").style.display = "none";
    document.getElementById(id+"-cv").style.display = "none";
    document.getElementById(id+"-um").style.display = "none";
    document.getElementById(id+"-um_des").style.display = "none";

    // Mostrtar loaders
    document.getElementById(id+"-agregar-spiner").style.display = "block";
    document.getElementById(id+"-no. De parte-spiner").style.display = "block";
    document.getElementById(id+"-nombre-spiner").style.display = "block";
    document.getElementById(id+"-descripcion-spiner").style.display = "block";
    document.getElementById(id+"-almacen-spiner").style.display = "block";
    document.getElementById(id+"-departamento-spiner").style.display = "block";
    document.getElementById(id+"-loc_almacen-spiner").style.display = "block";
    document.getElementById(id+"-marca-spiner").style.display = "block";
    document.getElementById(id+"-proveedor-spiner").style.display = "block";
    document.getElementById(id+"-precio_normal-spiner").style.display = "block";
    document.getElementById(id+"-precio_oferta-spiner").style.display = "block";
    document.getElementById(id+"-precio_costo-spiner").style.display = "block";
    document.getElementById(id+"-stock-spiner").style.display = "block";
    document.getElementById(id+"-tiempo de entrega-spiner").style.display = "block";
    document.getElementById(id+"-stock_min-spiner").style.display = "block";
    document.getElementById(id+"-stock_max-spiner").style.display = "block";
    document.getElementById(id+"-cv-spiner").style.display = "block";
    document.getElementById(id+"-um-spiner").style.display = "block";
    document.getElementById(id+"-um_des-spiner").style.display = "block";
    
    // Se registra en base de datos

    //Asignar variables
    parte = document.getElementById(id+"-no. De parte").value;
    nombre = document.getElementById(id+"-nombre").value;
    descripcion = document.getElementById(id+"-descripcion").value;
    almacen = document.getElementById(id+"-almacen").value;
    departamento = document.getElementById(id+"-departamento").value;
    loc_almacen = document.getElementById(id+"-loc_almacen").value;
    marca = document.getElementById(id+"-marca").value;
    proveedor = document.getElementById(id+"-proveedor").value;
    precio_normal = document.getElementById(id+"-precio_normal").value;
    precio_oferta = document.getElementById(id+"-precio_oferta").value;
    precio_costo = document.getElementById(id+"-precio_costo").value;
    stock = document.getElementById(id+"-stock").value;
    t_entrega = document.getElementById(id+"-tiempo de entrega").value;
    stock_min = document.getElementById(id+"-stock_min").value;
    stock_max = document.getElementById(id+"-stock_max").value;
    cv = document.getElementById(id+"-cv").value;
    um = document.getElementById(id+"-um").value;
    um_des = document.getElementById(id+"-um_des").value;

    const url =  '<?php echo static_empresa_url(); ?>';

    fetch(url+'func/product_inventary_add.php?parte='+parte+"&nombre="+nombre+"&descripcion="+descripcion+"&almacen="+almacen+"&departamento="+departamento+"&loc_almacen="+loc_almacen+"&marca="+marca+"&proveedor="+proveedor+"&precio_normal="+precio_normal+"&precio_oferta="+precio_oferta+"&precio_costo="+precio_costo+"&stock="+stock+"&t_entrega="+t_entrega+"&stock_min="+stock_min+"&stock_max="+stock_max+"&cv="+cv+"&um="+um+"&um_des="+um_des).then(res => res.json())
      .then
      (
          data => 
          {
              var e = document.getElementById(id+"-almacen");
              almacen0 = e.options[e.selectedIndex].text;

              var o = document.getElementById(id+"-departamento");
              departamento0 = o.options[o.selectedIndex].text;
              
              document.getElementById('table').insertRow(2).innerHTML = "<tr><td style='text-align: center; vertical-align: middle;'>"+parte+"</td><td style='text-align: center; vertical-align: middle;'>"+nombre+"</td><td style='text-align: center; vertical-align: middle;'>"+descripcion+"</td><td style='text-align: center; vertical-align: middle;'>"+almacen0+"</td><td style='text-align: center; vertical-align: middle;'>"+departamento0+"</td><td style='text-align: center; vertical-align: middle;'>"+loc_almacen+"</td><td style='text-align: center; vertical-align: middle;'>"+marca+"</td><td style='text-align: center; vertical-align: middle;'>"+proveedor+"</td><td style='text-align: center; vertical-align: middle;'>"+precio_normal+"</td><td style='text-align: center; vertical-align: middle;'>"+precio_oferta+"</td><td style='text-align: center; vertical-align: middle;'>"+precio_costo+"</td><td style='text-align: center; vertical-align: middle;'>"+stock+"</td><td style='text-align: center; vertical-align: middle;'>"+t_entrega+"</td><td style='text-align: center; vertical-align: middle;'>"+stock_min+"</td><td style='text-align: center; vertical-align: middle;'>"+stock_max+"</td><td style='text-align: center; vertical-align: middle;'>"+cv+"</td><td style='text-align: center; vertical-align: middle;'>"+um+"</td><td style='text-align: center; vertical-align: middle;'>"+um_des+"</td><td style='text-align: center; vertical-align: middle;'>F5</td></tr>";
              
              document.getElementById(id+"-no. De parte").value = "";
              document.getElementById(id+"-nombre").value = "";
              document.getElementById(id+"-descripcion").value = "";
              document.getElementById(id+"-loc_almacen").value = "";
              document.getElementById(id+"-marca").value = "";
              document.getElementById(id+"-proveedor").value = "";
              document.getElementById(id+"-precio_normal").value = "";
              document.getElementById(id+"-precio_oferta").value = "";
              document.getElementById(id+"-precio_costo").value = "";
              document.getElementById(id+"-stock").value = "";
              document.getElementById(id+"-tiempo de entrega").value = "";
              document.getElementById(id+"-stock_min").value = "";
              document.getElementById(id+"-stock_max").value = "";
              document.getElementById(id+"-cv").value = "";
              document.getElementById(id+"-um").value = "";
              document.getElementById(id+"-um_des").value = "";

              // ocultar inputs
              document.getElementById(id+"-agregar").style.display = "block";
              document.getElementById(id+"-no. De parte").style.display = "block";
              document.getElementById(id+"-nombre").style.display = "block";
              document.getElementById(id+"-descripcion").style.display = "block";
              document.getElementById(id+"-almacen").style.display = "block";
              document.getElementById(id+"-departamento").style.display = "block";
              document.getElementById(id+"-loc_almacen").style.display = "block";
              document.getElementById(id+"-marca").style.display = "block";
              document.getElementById(id+"-proveedor").style.display = "block";
              document.getElementById(id+"-precio_normal").style.display = "block";
              document.getElementById(id+"-precio_oferta").style.display = "block";
              document.getElementById(id+"-precio_costo").style.display = "block";
              document.getElementById(id+"-stock").style.display = "block";
              document.getElementById(id+"-tiempo de entrega").style.display = "block";
              document.getElementById(id+"-stock_min").style.display = "block";
              document.getElementById(id+"-stock_max").style.display = "block";
              document.getElementById(id+"-cv").style.display = "block";
              document.getElementById(id+"-um").style.display = "block";
              document.getElementById(id+"-um_des").style.display = "block";

              // Mostrtar loaders
              document.getElementById(id+"-agregar-spiner").style.display = "none";
              document.getElementById(id+"-no. De parte-spiner").style.display = "none";
              document.getElementById(id+"-nombre-spiner").style.display = "none";
              document.getElementById(id+"-descripcion-spiner").style.display = "none";
              document.getElementById(id+"-almacen-spiner").style.display = "none";
              document.getElementById(id+"-departamento-spiner").style.display = "none";
              document.getElementById(id+"-loc_almacen-spiner").style.display = "none";
              document.getElementById(id+"-marca-spiner").style.display = "none";
              document.getElementById(id+"-proveedor-spiner").style.display = "none";
              document.getElementById(id+"-precio_normal-spiner").style.display = "none";
              document.getElementById(id+"-precio_oferta-spiner").style.display = "none";
              document.getElementById(id+"-precio_costo-spiner").style.display = "none";
              document.getElementById(id+"-stock-spiner").style.display = "none";
              document.getElementById(id+"-tiempo de entrega-spiner").style.display = "none";
              document.getElementById(id+"-stock_min-spiner").style.display = "none";
              document.getElementById(id+"-stock_max-spiner").style.display = "none";
              document.getElementById(id+"-cv-spiner").style.display = "none";
              document.getElementById(id+"-um-spiner").style.display = "none";
              document.getElementById(id+"-um_des-spiner").style.display = "none";


              document.getElementById("0-no. De parte").focus();
              toastr.success("Producto Agregado");
          }
      )
      .catch
      (
          error => {
            // ocultar inputs
            document.getElementById(id+"-agregar").style.display = "block";
              document.getElementById(id+"-no. De parte").style.display = "block";
              document.getElementById(id+"-nombre").style.display = "block";
              document.getElementById(id+"-descripcion").style.display = "block";
              document.getElementById(id+"-almacen").style.display = "block";
              document.getElementById(id+"-departamento").style.display = "block";
              document.getElementById(id+"-loc_almacen").style.display = "block";
              document.getElementById(id+"-marca").style.display = "block";
              document.getElementById(id+"-proveedor").style.display = "block";
              document.getElementById(id+"-precio_normal").style.display = "block";
              document.getElementById(id+"-precio_oferta").style.display = "block";
              document.getElementById(id+"-precio_costo").style.display = "block";
              document.getElementById(id+"-stock").style.display = "block";
              document.getElementById(id+"-tiempo de entrega").style.display = "block";
              document.getElementById(id+"-stock_min").style.display = "block";
              document.getElementById(id+"-stock_max").style.display = "block";
              document.getElementById(id+"-cv").style.display = "block";
              document.getElementById(id+"-um").style.display = "block";
              document.getElementById(id+"-um_des").style.display = "block";

              // Mostrtar loaders
              document.getElementById(id+"-agregar-spiner").style.display = "none";
              document.getElementById(id+"-no. De parte-spiner").style.display = "none";
              document.getElementById(id+"-nombre-spiner").style.display = "none";
              document.getElementById(id+"-descripcion-spiner").style.display = "none";
              document.getElementById(id+"-almacen-spiner").style.display = "none";
              document.getElementById(id+"-departamento-spiner").style.display = "none";
              document.getElementById(id+"-loc_almacen-spiner").style.display = "none";
              document.getElementById(id+"-marca-spiner").style.display = "none";
              document.getElementById(id+"-proveedor-spiner").style.display = "none";
              document.getElementById(id+"-precio_normal-spiner").style.display = "none";
              document.getElementById(id+"-precio_oferta-spiner").style.display = "none";
              document.getElementById(id+"-precio_costo-spiner").style.display = "none";
              document.getElementById(id+"-stock-spiner").style.display = "none";
              document.getElementById(id+"-tiempo de entrega-spiner").style.display = "none";
              document.getElementById(id+"-stock_min-spiner").style.display = "none";
              document.getElementById(id+"-stock_max-spiner").style.display = "none";
              document.getElementById(id+"-cv-spiner").style.display = "none";
              document.getElementById(id+"-um-spiner").style.display = "none";
              document.getElementById(id+"-um_des-spiner").style.display = "none";

              toastr.error("No se puede agregar el producto");
            
          }
      );

  }

  function quitar (id)
  {
      document.getElementById(id+"-quitar-spiner").style.display = "block";
      document.getElementById(id).style.display = "none";

      const url =  '<?php echo static_empresa_url(); ?>';

      id = document.getElementById(id).id;

      fetch(url+'/func/product_update_inventary_delete.php?id='+id).then(res => res.json())
      .then
      (
          data => 
          {
            $("#"+id+"tr").remove();
          }
      )
      .catch
      (
          error => {
            document.getElementById(id+"-quitar-spiner").style.display = "none";
            document.getElementById(id).style.display = "block";
            toastr.error("La celda no se pudo eliminar");
          }
      );
  }

  function update (id)
  {
      document.getElementById(id+"-spiner").style.display = "block";
      document.getElementById(id).style.display = "none";

      const url =  '<?php echo static_empresa_url(); ?>';

      value = document.getElementById(id).value;
      
      const arr = id.split('-');
      product = arr[0];
      celda = arr[1];
    
      fetch(url+'/func/product_update_inventary.php?product='+product+'&celda='+celda+'&value='+value).then(res => res.json())
      .then
      (
          data => 
          {
            console.log("Actualizado");
            document.getElementById(id+"-spiner").style.display = "none";
            document.getElementById(id).style.display = "block";
            document.getElementById(id).focus();
          }
      )
      .catch
      (
          error => {
            document.getElementById(id+"-spiner").style.display = "none";
            document.getElementById(id).style.display = "block";
            //document.getElementById(id).focus();
            toastr.error("Celda que se intenta actualizar: " + celda + ". Nuevo valor: " + value + ". Resultado: No fue posible la actualizacion del producto. Actualice la pagina e intente de nuevo.");
          }
      );
  }
</script>

<?php
    include 'func/footer.php';
?>
        
