    <!-- Title Page-->
    <title>Reporte</title>
    
    <!-- Contenido -->
    <div class="main-content">
        <div class="section__content section__content--p30">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="overview-wrap">
                            <h2 class="title-1">Reportes</h2>
                            <a class="au-btn au-btn-icon au-btn--blue2" href="?c=Pdf">
                                <i class="far fa-file-pdf"></i>PDF
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
                                        <th>Tabla</th>
                                        <th>Acción</th>
                                        <th>N. Registro</th>
                                        <th>Usr. C.</th>
                                        <th>Fecha C.</th>
                                        <th>R. Anterior</th>
                                        <th>Usr. M.</th>
                                        <th>Fecha M.</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach($this->model->Listar_Reporte() as $r): ?>
                                        <tr>
                                            <td><?php echo $r->tabla; ?></td>
                                            <td><?php echo $r->accion; ?></td>
                                            <td><?php echo $r->registro_nuevo; ?></td>
                                            <td><?php echo $r->usuario_creacion; ?></td>
                                            <td><?php echo $r->fecha_creacion; ?></td>
                                            <td><?php echo $r->registro_anterior; ?></td>
                                            <td><?php echo $r->usuario_modificacion; ?></td>
                                            <td><?php echo $r->fecha_modificacion; ?></td>
                                        </tr>
                                    <?php endforeach; ?>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>Tabla</th>
                                        <th>Acción</th>
                                        <th>N. Registro</th>
                                        <th>Usr. C.</th>
                                        <th>Fecha C.</th>
                                        <th>R. Anterior</th>
                                        <th>Usr. M.</th>
                                        <th>Fecha M.</th>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>

                    <div class="col-sm-6 col-lg-3"></div>

                </div> 
            </div>
        </div>
    </div>