    <!-- Title Page-->
    <title>Tipo de Pago</title>

    <!-- Contenido -->
    <div class="main-content">
        <div class="section__content section__content--p30">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="overview-wrap">
                            <h2 class="title-1"><?php echo $alm->id_tipopago != null ? $alm->n_tipopago : 'Nuevo Registro'; ?></h2>
                        </div>
                    </div>
                </div>

                <div class="row m-t-25">
                    <div class="col-sm-6 col-lg-3"></div>

                        <div class="col-sm-12">
                            <ol class="breadcrumb">
                              <li><a href="?c=TipoPago">Tipo Pago</a> <span> /</span></li>&nbsp
                              <li class="active"><?php echo $alm->id_tipopago != null ? $alm->n_tipopago : 'Nuevo Registro'; ?></li>
                            </ol>

                            <form action="?c=TipoPago&a=Guardar" method="post" enctype="multipart/form-data">
                                <input type="hidden" name="id_tipopago" value="<?php echo $alm->id_tipopago; ?>" />
                                
                                <div class="form-group">
                                    <label>Nombre Tipo Pago</label>
                                    <input type="text" name="ntipopago" autocomplete="off" value="<?php echo $alm->n_tipopago; ?>" class="form-control" placeholder="Nombre Tipo Pago" data-validacion-tipo="requerido|min:3" />
                                </div>
                                
                                <hr />
                                
                                <div class="text-right">
                                    <button class="btn btn-success">Guardar</button>
                                </div>
                            </form>
                        </div>

                    <div class="col-sm-6 col-lg-3"></div>

                </div> 
            </div>
        </div>
    </div>