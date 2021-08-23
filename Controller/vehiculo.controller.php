<?php

require_once 'Model/vehiculo.php';
require_once 'Model/marca.php';
require_once 'Model/modelo.php';
require_once 'Model/color.php';
require_once 'Model/tipovehiculo.php';
require_once 'Model/sede.php';
	
	class VehiculoController
	{
		private $model;
		private $model2;
		private $model3;
		private $model4;
		private $model5;
		private $model6;

		// Función Constructor
		public function __CONSTRUCT()
		{
			$this->model = new Vehiculo();
			$this->model2 = new Marca();
			$this->model3 = new Modelo();
			$this->model4 = new Color();
			$this->model5 = new TipoVehiculo();
			$this->model6 = new Sede();
		}

		// Función Index
		public function Index()
		{	
			require_once 'View/layouts/aside.php';
	        require_once 'View/layouts/header.php';
	        require_once 'View/layouts/aside2.php';
	        require_once 'View/Vehiculo/vehiculo.php';
	        require_once 'View/layouts/footer.php';
	    }

	    // Función para inicializar el CRUD
		public function Crud()
		{
	        $alm = new Vehiculo();
	        
	        if(isset($_REQUEST['id_vehiculo'])){
	            $alm = $this->model->getting($_REQUEST['id_vehiculo']);
	        }
	        
	        require_once 'View/layouts/aside.php';
	        require_once 'View/layouts/header.php';
	        require_once 'View/Vehiculo/vehiculo-editar.php';
	        require_once 'View/layouts/footer.php';
	    }
    
    	// Función para Guardar los cambios echos a la tabla
    	public function Guardar()
	    {
	        $alm = new Vehiculo();
	        
	        $alm->id_vehiculo = $_REQUEST['id_vehiculo'];
	        $alm->placa = $_REQUEST['placa'];
	        $alm->id_tipovehiculo = $_REQUEST['tipovehiculo'];
	        $alm->id_marca = $_REQUEST['marca'];
	        $alm->id_modelo = $_REQUEST['modelo'];
	        $alm->id_color = $_REQUEST['color'];
	        $alm->id_sede = $_REQUEST['sede'];

	        // SI ID PERSONA ES MAYOR QUE CERO (0) INDICA QUE ES UNA ACTUALIZACIÓN DE ESA TUPLA EN LA TABLA PERSONA, SINO SIGNIFICA QUE ES UN NUEVO REGISTRO

	        $alm->id_vehiculo > 0 
	           ? $this->model->Actualizar($alm)
	           : $this->model->Registrar($alm);

	        header('Location: ?c=Vehiculo');
	    }
    	
    	// Función para Desactivar un campo
	    public function Eliminar()
	    {
	        $this->model->Eliminar($_REQUEST['id_vehiculo']);
	        header('Location: ?c=Vehiculo');
	    }
	}

?>