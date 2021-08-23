    <!-- Title Page-->
    <title>Marcas</title>

    <!-- Contenido -->
    <div class="main-content">
        <div class="section__content section__content--p30">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="overview-wrap">
                            <h2 class="title-1"><?php echo $alm->id_marca != null ? $alm->n_marca : 'Nuevo Registro'; ?></h2>
                        </div>
                    </div>
                </div>

                <div class="row m-t-25">
                    <div class="col-sm-6 col-lg-3"></div>

                        <div class="col-sm-12">
                            <ol class="breadcrumb">
                              <li><a href="?c=Marca">Marcas</a> <span> /</span></li>&nbsp
                              <li class="active"><?php echo $alm->id_marca != null ? $alm->n_marca : 'Nuevo Registro'; ?></li>
                            </ol>

                            <form action="?c=Marca&a=Guardar" method="post" enctype="multipart/form-data">
                                <input type="hidden" name="id_marca" value="<?php echo $alm->id_marca; ?>" />
                                
                                <div class="form-group">
                                    <label>Nombre Marca</label>
                                    <input type="text" name="nmarca" autocomplete="off" value="<?php echo $alm->n_marca; ?>" class="form-control" placeholder="Nombre Marca" data-validacion-tipo="requerido|min:3" />
                                </div>
                                
                                <div class="form-group">
                                    <select name="tipovehiculo" class="form-control">
                                        <option value="0">-- Seleccione Tipo Vehiculo --</option>
                                        <?php foreach($this->model2->Listar_TipoVehiculo() as $r): ?>
                                        <option value="<?php echo $r->id_tipovehiculo; ?>"><?php echo $r->n_tipovehiculo; ?></option>
                                        <?php endforeach ?>
                                    </select>
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