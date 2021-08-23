    <!-- Title Page-->
    <title>Usuarios</title>

    <!-- Contenido -->
    <div class="main-content">
        <div class="section__content section__content--p30">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="overview-wrap">
                            <h2 class="title-1">Usuarios</h2>
                            <a class="au-btn au-btn-icon au-btn--blue2" href="?c=Persona&a=Crud">
                                <i class="fas fa-plus"></i>Usuario
                            </a>
                        </div>
                    </div>
                </div>

                <div class="row m-t-25">
                    <div class="col-sm-6 col-lg-3"></div>

                        <div class="col-sm-12">
                            <table id="data" class="table table-striped table-bordered" style="width:100%">
                                <thead>
                                    <tr>
                                        <th><i class="fas fa-address-card" title="Tipo Documento"></i></th>
                                        <th><i class="fas fa-address-card" title="N° Documento"></i></th>
                                        <th><i class="fas fa-user" title="Nombre(s)"></i></th>
                                        <th><i class="fas fa-user" title="Apellido(s)"></i></th>
                                        <th><i class="fas fa-envelope" title="Correo Electrónico"></i></th>
                                        <th><i class="fas fa-phone" title="Teléfono"></i></th>
                                        <th>Acción</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach($this->model->Listar_Persona() as $r): ?>
                                        <tr>
                                            <td><?php echo $r->n_tipodocumento; ?></td>
                                            <td><?php echo $r->n_documento; ?></td>
                                            <td><?php echo $r->nombre; ?></td>
                                            <td><?php echo $r->apellido; ?></td>
                                            <td><?php echo $r->correo; ?></td>
                                            <td><?php echo $r->telefono; ?></td>
                                            <td>
                                                <a href="?c=Persona&a=Crud&id_persona=<?php echo $r->id_persona; ?>">
                                                    <button class="au-btn au-btn-icon au-btn--green au-btn--small" title="Editar">
                                                        <i class="zmdi zmdi-edit"></i>
                                                    </button>
                                                </a>
                                                &nbsp
                                                <a href="?c=Persona&a=Eliminar&id_persona=<?php echo $r->id_persona; ?>">
                                                    <button class="au-btn au-btn-icon au-btn--red au-btn--small" title="Eliminar">
                                                        <i class="zmdi zmdi-delete"></i>
                                                    </button>
                                                </a>
                                            </td>
                                        </tr>
                                    <?php endforeach; ?>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th><i class="fas fa-address-card" title="Tipo Documento"></i></th>
                                        <th><i class="fas fa-address-card" title="N° Documento"></i></th>
                                        <th><i class="fas fa-user" title="Nombre(s)"></i></th>
                                        <th><i class="fas fa-user" title="Apellido(s)"></i></th>
                                        <th><i class="fas fa-envelope" title="Correo Electrónico"></i></th>
                                        <th><i class="fas fa-phone" title="Teléfono"></i></th>
                                        <th>Acción</th>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>

                    <div class="col-sm-6 col-lg-3"></div>

                </div> 
            </div>
        </div>
    </div>