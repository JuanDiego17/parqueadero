    <!-- Title Page-->
    <title>Vehiculos</title>

    <!-- Contenido -->
    <div class="main-content">
        <div class="section__content section__content--p30">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="overview-wrap">
                            <h2 class="title-1"><?php echo $alm->id_vehiculo != null ? $alm->placa : 'Nuevo Registro'; ?></h2>
                        </div>
                    </div>
                </div>

                <div class="row m-t-25">
                    <div class="col-sm-6 col-lg-3"></div>

                        <div class="col-sm-12">
                            <ol class="breadcrumb">
                              <li><a href="?c=Vehiculo">Vehiculos</a> <span> /</span></li>&nbsp
                              <li class="active"><?php echo $alm->id_vehiculo != null ? $alm->placa : 'Nuevo Registro'; ?></li>
                            </ol>

                            <form action="?c=Vehiculo&a=Guardar" method="post" enctype="multipart/form-data">
                                <input type="hidden" name="id_vehiculo" value="<?php echo $alm->id_vehiculo; ?>" />
                                
                                <div class="form-group">
                                    <label>Placa</label>
                                    <input type="text" name="placa" autocomplete="off" value="<?php echo $alm->placa; ?>" class="form-control" placeholder="Placa" data-validacion-tipo="requerido|min:3" />
                                </div>

                                <div class="form-group">
                                    <select name="tipovehiculo" class="form-control">
                                        <option value="0">-- Seleccione Tipo Vehiculo --</option>
                                        <?php foreach($this->model5->Listar_TipoVehiculo() as $r): ?>
                                        <option value="<?php echo $r->id_tipovehiculo; ?>"><?php echo $r->n_tipovehiculo; ?></option>
                                        <?php endforeach ?>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <select name="marca" class="form-control">
                                        <option value="0">-- Seleccione Marca --</option>
                                        <?php foreach($this->model2->Listar_Marca() as $r): ?>
                                        <option value="<?php echo $r->id_marca; ?>"><?php echo $r->n_marca; ?></option>
                                        <?php endforeach ?>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <select name="modelo" class="form-control">
                                        <option value="0">-- Seleccione Modelo --</option>
                                        <?php foreach($this->model3->Listar_Modelo() as $r): ?>
                                        <option value="<?php echo $r->id_modelo; ?>"><?php echo $r->n_modelo; ?></option>
                                        <?php endforeach ?>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <select name="color" class="form-control">
                                        <option value="0">-- Seleccione Color --</option>
                                        <?php foreach($this->model4->Listar_Color() as $r): ?>
                                        <option value="<?php echo $r->id_color; ?>"><?php echo $r->n_color; ?></option>
                                        <?php endforeach ?>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <select name="sede" class="form-control">
                                        <option value="0">-- Seleccione Sede --</option>
                                        <?php foreach($this->model6->Listar_Sede() as $r): ?>
                                        <option value="<?php echo $r->id_sede; ?>"><?php echo $r->n_sede; ?></option>
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