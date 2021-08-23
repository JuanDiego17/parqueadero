    <!-- Title Page-->
    <title>Modelos</title>

    <!-- Contenido -->
    <div class="main-content">
        <div class="section__content section__content--p30">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="overview-wrap">
                            <h2 class="title-1"><?php echo $alm->id_modelo != null ? $alm->n_modelo : 'Nuevo Registro'; ?></h2>
                        </div>
                    </div>
                </div>

                <div class="row m-t-25">
                    <div class="col-sm-6 col-lg-3"></div>

                        <div class="col-sm-12">
                            <ol class="breadcrumb">
                              <li><a href="?c=Modelo">Modelos</a> <span> /</span></li>&nbsp
                              <li class="active"><?php echo $alm->id_modelo != null ? $alm->n_modelo : 'Nuevo Registro'; ?></li>
                            </ol>

                            <form action="?c=Modelo&a=Guardar" method="post" enctype="multipart/form-data">
                                <input type="hidden" name="id_modelo" value="<?php echo $alm->id_modelo; ?>" />
                                
                                <div class="form-group">
                                    <select name="marca" class="form-control">
                                        <option value="0">-- Seleccione Marca --</option>
                                        <?php foreach($this->model2->Listar_Marca() as $r): ?>
                                        <option value="<?php echo $r->id_marca; ?>"><?php echo $r->n_marca; ?></option>
                                        <?php endforeach ?>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label>Nombre Modelo</label>
                                    <input type="text" name="nmodelo" autocomplete="off" value="<?php echo $alm->n_modelo; ?>" class="form-control" placeholder="Nombre Modelo" data-validacion-tipo="requerido|min:3" />
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