    <!-- Title Page-->
    <title>Usuarios</title>

    <!-- Contenido -->
    <div class="main-content">
        <div class="section__content section__content--p30">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="overview-wrap">
                            <h2 class="title-1"><?php echo $alm->id_persona != null ? $alm->nombre : 'Nuevo Registro'; ?></h2>
                        </div>
                    </div>
                </div>

                <div class="row m-t-25">
                    <div class="col-sm-6 col-lg-3"></div>

                        <div class="col-sm-12">
                            <ol class="breadcrumb">
                              <li><a href="?c=Persona">Usuarios</a> <span> /</span></li>&nbsp
                              <li class="active"><?php echo $alm->id_persona != null ? $alm->nombre : 'Nuevo Registro'; ?></li>
                            </ol>

                            <form action="?c=Persona&a=Guardar" method="post" enctype="multipart/form-data">
                                <input type="hidden" name="id_persona" value="<?php echo $alm->id_persona; ?>" />
                                
                                <div class="form-group">
                                    <label>Tipo Documento</label>
                                    <select name="tipodocumento" class="form-control">
                                        <option value="0">-- Seleccione Tipo Documento --</option>
                                        <?php foreach($this->model2->Listar_TipoDocumento() as $r): ?>
                                        <option value="<?php echo $r->id_tipodocumento; ?>"><?php echo $r->n_tipodocumento; ?></option>
                                        <?php endforeach ?>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label>N° Documento</label>
                                    <input type="text" name="ndocumento" autocomplete="off" value="<?php echo $alm->n_documento; ?>" class="form-control" placeholder="N° Documento" data-validacion-tipo="requerido|min:3" />
                                </div>

                                <div class="form-group">
                                    <label>Nombre(s)</label>
                                    <input type="text" name="nombres" autocomplete="off" value="<?php echo $alm->nombre; ?>" class="form-control" placeholder="Nombre(s)" data-validacion-tipo="requerido|min:3" />
                                </div>

                                <div class="form-group">
                                    <label>Apellido(s)</label>
                                    <input type="text" name="apellidos" autocomplete="off" value="<?php echo $alm->apellido; ?>" class="form-control" placeholder="Apellido(s)" data-validacion-tipo="requerido|min:3" />
                                </div>

                                <div class="form-group">
                                    <label>Correo</label>
                                    <input type="text" name="email" autocomplete="off" value="<?php echo $alm->correo; ?>" class="form-control" placeholder="Correo" data-validacion-tipo="requerido|min:3" />
                                </div>

                                <div class="form-group">
                                    <label>Teléfono</label>
                                    <input type="text" name="ntelefono" autocomplete="off" value="<?php echo $alm->telefono; ?>" class="form-control" placeholder="Teléfono" data-validacion-tipo="requerido|min:3" />
                                </div>

                                <div class="form-group">
                                    <label>Rol</label>
                                    <select name="rol" class="form-control">
                                        <option value="0">-- Seleccione Rol --</option>
                                        <?php foreach($this->model3->Listar_Rol() as $r): ?>
                                        <option value="<?php echo $r->id_rol; ?>"><?php echo $r->n_rol; ?></option>
                                        <?php endforeach ?>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label>Sede</label>
                                    <select name="sede" class="form-control">
                                        <option value="0">-- Seleccione Sede --</option>
                                        <?php foreach($this->model4->Listar_Sede() as $r): ?>
                                        <option value="<?php echo $r->id_sede; ?>"><?php echo $r->n_sede; ?></option>
                                        <?php endforeach ?>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label>Contraseña</label>
                                    <input type="text" name="password" autocomplete="off" value="<?php echo $alm->password; ?>" class="form-control" placeholder="Contraseña" data-validacion-tipo="requerido|min:3" />
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