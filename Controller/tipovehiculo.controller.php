<?php

require_once 'Model/tipovehiculo.php';

	class TipoVehiculoController
	{
		private $model;

		// Función Constructor
		public function __CONSTRUCT()
		{
			$this->model = new TipoVehiculo();
		}

		// Función Index
		public function Index()
		{	
			require_once 'View/layouts/aside.php';
	        require_once 'View/layouts/header.php';
	        require_once 'View/layouts/aside2.php';
	        require_once 'View/TipoVehiculo/tipovehiculo.php';
	        require_once 'View/layouts/footer.php';
	    }

	    // Función para inicializar el CRUD
		public function Crud()
		{
	        $alm = new TipoVehiculo();
	        
	        if(isset($_REQUEST['id_tipovehiculo'])){
	            $alm = $this->model->getting($_REQUEST['id_tipovehiculo']);
	        }
	        
	        require_once 'View/layouts/aside.php';
	        require_once 'View/layouts/header.php';
	        require_once 'View/TipoVehiculo/tipovehiculo-editar.php';
	        require_once 'View/layouts/footer.php';
	    }
    
    	// Función para Guardar los cambios echos a la tabla
    	public function Guardar()
	    {
	        $alm = new TipoVehiculo();
	        
	        $alm->id_tipovehiculo = $_REQUEST['id_tipovehiculo'];
	        $alm->n_tipovehiculo = $_REQUEST['ntipovehiculo'];

	        // SI ID PERSONA ES MAYOR QUE CERO (0) INDICA QUE ES UNA ACTUALIZACIÓN DE ESA TUPLA EN LA TABLA PERSONA, SINO SIGNIFICA QUE ES UN NUEVO REGISTRO

	        $alm->id_tipovehiculo > 0 
	           ? $this->model->Actualizar($alm)
	           : $this->model->Registrar($alm);

	        header('Location: ?c=TipoVehiculo');
	    }
    	
    	// Función para Desactivar un campo
	    public function Eliminar()
	    {
	        $this->model->Eliminar($_REQUEST['id_tipovehiculo']);
	        header('Location: ?c=TipoVehiculo');
	    }
	}
?>