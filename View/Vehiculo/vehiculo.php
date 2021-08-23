    <!-- Title Page-->
    <title>Vehiculos</title>

    <!-- Contenido -->
    <div class="main-content">
        <div class="section__content section__content--p30">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="overview-wrap">
                            <h2 class="title-1">Vehiculos</h2>
                            <a class="au-btn au-btn-icon au-btn--blue2" href="?c=Vehiculo&a=Crud">
                                <i class="fas fa-plus"></i>Vehiculo
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
                                        <th>Placa</th>
                                        <th>Tipo Vehículo</th>
                                        <th>Marca</th>
                                        <th>Modelo</th>
                                        <th>Color</th>
                                        <th>Sede</th>
                                        <th>Acción</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach($this->model->Listar_Vehiculo() as $r): ?>
                                        <tr>
                                            <td><?php echo $r->placa; ?></td>
                                            <td><?php echo $r->n_tipovehiculo; ?></td>
                                            <td><?php echo $r->n_marca; ?></td>
                                            <td><?php echo $r->n_modelo; ?></td>
                                            <td><?php echo $r->n_color; ?></td>
                                            <td><?php echo $r->n_sede; ?></td>
                                            <td>
                                                <a href="?c=Vehiculo&a=Crud&id_vehiculo=<?php echo $r->id_vehiculo; ?>">
                                                    <button class="au-btn au-btn-icon au-btn--green au-btn--small" title="Editar">
                                                        <i class="zmdi zmdi-edit"></i>
                                                    </button>
                                                </a>
                                                &nbsp
                                                <a href="?c=Vehiculo&a=Eliminar&id_vehiculo=<?php echo $r->id_vehiculo; ?>">
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
                                        <th>Placa</th>
                                        <th>Tipo Vehículo</th>
                                        <th>Marca</th>
                                        <th>Modelo</th>
                                        <th>Color</th>
                                        <th>Sede</th>
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