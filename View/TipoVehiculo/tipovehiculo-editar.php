        <!-- Title Page-->
    <title>Tipo de Vehiculo</title>

    <!-- Contenido -->
    <div class="main-content">
        <div class="section__content section__content--p30">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="overview-wrap">
                            <h2 class="title-1"><?php echo $alm->id_tipovehiculo != null ? $alm->n_tipovehiculo : 'Nuevo Registro'; ?></h2>
                        </div>
                    </div>
                </div>

                <div class="row m-t-25">
                    <div class="col-sm-6 col-lg-3"></div>

                        <div class="col-sm-12">
                            <ol class="breadcrumb">
                              <li><a href="?c=TipoVehiculo">Tipo Vehículo</a> <span> /</span></li>&nbsp
                              <li class="active"><?php echo $alm->id_tipovehiculo != null ? $alm->n_tipovehiculo : 'Nuevo Registro'; ?></li>
                            </ol>

                            <form action="?c=TipoVehiculo&a=Guardar" method="post" enctype="multipart/form-data">
                                <input type="hidden" name="id_tipovehiculo" value="<?php echo $alm->id_tipovehiculo; ?>" />
                                
                                <div class="form-group">
                                    <label>Nombre Tipo Vehículo</label>
                                    <input type="text" name="ntipovehiculo" autocomplete="off" value="<?php echo $alm->n_tipovehiculo; ?>" class="form-control" placeholder="Nombre Tipo Vehículo" data-validacion-tipo="requerido|min:3" />
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