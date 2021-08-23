    <!-- Title Page-->
    <title>Sedes</title>

    <!-- Contenido -->
    <div class="main-content">
        <div class="section__content section__content--p30">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="overview-wrap">
                            <h2 class="title-1"><?php echo $alm->id_sede != null ? $alm->n_sede : 'Nuevo Registro'; ?></h2>
                        </div>
                    </div>
                </div>

                <div class="row m-t-25">
                    <div class="col-sm-6 col-lg-3"></div>

                        <div class="col-sm-12">
                            <ol class="breadcrumb">
                              <li><a href="?c=Sede">Sedes</a> <span> /</span></li>&nbsp
                              <li class="active"><?php echo $alm->id_sede != null ? $alm->n_sede : 'Nuevo Registro'; ?></li>
                            </ol>

                            <form action="?c=Sede&a=Guardar" method="post" enctype="multipart/form-data">
                                <input type="hidden" name="id_sede" value="<?php echo $alm->id_sede; ?>" />
                                
                                <div class="form-group">
                                    <label>Nombre Sede</label>
                                    <input type="text" name="nsede" autocomplete="off" value="<?php echo $alm->n_sede; ?>" class="form-control" placeholder="Nombre Sede" data-validacion-tipo="requerido|min:3" />
                                </div>
                                
                                <div class="form-group">
                                    <label>Teléfono</label>
                                    <input type="text" name="tsede" autocomplete="off" value="<?php echo $alm->telefono; ?>" class="form-control" placeholder="Teléfono" data-validacion-tipo="requerido|min:7" />
                                </div>
                                
                                
                                <div class="form-group">
                                    <label>Dirección</label>
                                    <input type="text" name="dsede" autocomplete="off" value="<?php echo $alm->direccion; ?>" class="form-control" placeholder="Dirección" data-validacion-tipo="requerido|min:8" />
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