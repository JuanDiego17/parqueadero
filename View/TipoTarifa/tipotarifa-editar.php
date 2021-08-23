    <!-- Title Page-->
    <title>Tipo de Tarifa</title>

    <!-- Contenido -->
    <div class="main-content">
        <div class="section__content section__content--p30">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="overview-wrap">
                            <h2 class="title-1"><?php echo $alm->id_tipotarifa != null ? $alm->n_tipotarifa : 'Nuevo Registro'; ?></h2>
                        </div>
                    </div>
                </div>

                <div class="row m-t-25">
                    <div class="col-sm-6 col-lg-3"></div>

                        <div class="col-sm-12">
                            <ol class="breadcrumb">
                              <li><a href="?c=TipoTarifa">Tipo Tarifa</a> <span> /</span></li>&nbsp
                              <li class="active"><?php echo $alm->id_tipotarifa != null ? $alm->n_tipotarifa : 'Nuevo Registro'; ?></li>
                            </ol>

                            <form action="?c=TipoTarifa&a=Guardar" method="post" enctype="multipart/form-data">
                                <input type="hidden" name="id_tipotarifa" value="<?php echo $alm->id_tipotarifa; ?>" />
                                
                                <div class="form-group">
                                    <label>Nombre Tipo Tarifa</label>
                                    <input type="text" name="ntipotarifa" autocomplete="off" value="<?php echo $alm->n_tipotarifa; ?>" class="form-control" placeholder="Nombre Tipo Tarifa" data-validacion-tipo="requerido|min:3" />
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