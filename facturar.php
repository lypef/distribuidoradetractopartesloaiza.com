<?php
    include 'func/header.php';
?>
<!-- Start Accordion Area -->
<div class="">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingOne">
                                <h4 class="panel-title">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    PRODUCTOS AGREGADOS A SU VENTA
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                <?php
                                    if ($_GET["folio"] && $_GET["stocck"] == 1)
                                    {
                                        echo table_sale_products_finaly_cfdi($_GET["folio"]); 
                                    }else
                                    {
                                        echo table_sale_products_finaly_order_cfdi($_GET["folio"]); 
                                    }
                                ?> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            
            <form id="contact-form" action="func/timbrar.php" method="post" autocomplete="off" target="_blank">
            
            <input type="hidden" id="folio" name="folio" value="<?php echo $_GET["folio"] ?>">
            <input type="hidden" id="stock" name="stock" value="<?php echo $_GET["stocck"] ?>">
                
            
                
                <div class="country-select shop-select col-md-3">
                    <label> Tipo de comprobante <span class="required">*</span></label>
                    <select id="cfdi_tipo" name = "cfdi_tipo">
                        <option value='I'>Ingreso</option>
                        <option value='E'>Egreso</option>
                        <option value='T'>Traslado</option>
                    </select>                                       
                </div>
                
                <div class="country-select shop-select col-md-3">
                    <label> Metodo de pago <span class="required">*</span></label>
                    <select id="cfdi_m_pago" name = "cfdi_m_pago">
                        <option value='PUE'>Pago en una sola exhibici��n</option>
                        <option value='PPD'>Pago en parcialidades o diferido</option>
                    </select>                                       
                </div>
                
                <div class="country-select shop-select col-md-3">
                    <label> Moneda <span class="required">*</span></label>
                    <select id="cfdi_moneda" name = "cfdi_moneda">
                        <option value='MXN'>Pesos mexicano</option>
                        <option value='USD'>Dolar americano</option>
                        <option value='EUR'>Euro</option>
                        <option value='CAD'>Dolas canadiense</option>
                    </select>                                       
                </div>
                
                <?php 
                    echo ReturnSerieSelect($_GET["folio"]);
                ?>
                
                <?php 
                    echo ReturnSerieT_pago($_GET["folio"]);
                ?>
                
                <div class="country-select shop-select col-md-6">
                    <label> Uso cfdi 4.0 <span class="required">*</span></label>
                    <select id="cfdi_uso" name = "cfdi_uso">
                        <?php echo select_uso_cfdi($_GET["folio"]); ?>
                    </select>                                       
                </div>

                <?php echo isPublicGeneral($_GET["folio"]) ?>

                <div class="col-md-2" align="left">
                <br>
                    <label class="containeruser">Afectar inventario (Remisionar)
                        <input type="checkbox" id="remisionar" name="remisionar" >
                        <span class="checkmark"></span>
                    </label>
                </div>    
                
                <div class="col-md-10" align="left"><br>
                <button type="submit" style="
                    background-color: #99e6ff;
                    border: none;
                    color: white;
                    padding: 18px 10px;
                    text-align: center;
                    text-decoration: none;
                    display: inline-block;
                    font-size: 20px;
                    margin: 4px 2px;
                    cursor: pointer;
                    ">Emitir factura</button>
                </div>
                
                </form>
            
            </div>
        </div>
    </div>            
    <!-- End Of Accordion Area -->

<?php
    include 'func/footer.php';
?>
