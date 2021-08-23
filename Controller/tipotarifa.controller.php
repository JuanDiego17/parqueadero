<?php

require_once 'Model/tipotarifa.php';

	class TipoTarifaController
	{
		private $model;

		// Función Constructor
		public function __CONSTRUCT()
		{
			$this->model = new TipoTarifa();
		}

		// Función Index
		public function Index()
		{	
			require_once 'View/layouts/aside.php';
	        require_once 'View/layouts/header.php';
	        require_once 'View/layouts/aside2.php';
	        require_once 'View/TipoTarifa/tipotarifa.php';
	        require_once 'View/layouts/footer.php';
	    }

	    // Función para inicializar el CRUD
		public function Crud()
		{
	        $alm = new TipoTarifa();
	        
	        if(isset($_REQUEST['id_tipotarifa'])){
	            $alm = $this->model->getting($_REQUEST['id_tipotarifa']);
	        }
	        
	        require_once 'View/layouts/aside.php';
	        require_once 'View/layouts/header.php';
	        require_once 'View/TipoTarifa/tipotarifa-editar.php';
	        require_once 'View/layouts/footer.php';
	    }
    
    	// Función para Guardar los cambios echos a la tabla
    	public function Guardar()
	    {
	        $alm = new TipoTarifa();
	        
	        $alm->id_tipotarifa = $_REQUEST['id_tipotarifa'];
	        $alm->n_tipotarifa = $_REQUEST['ntipotarifa'];

	        // SI ID PERSONA ES MAYOR QUE CERO (0) INDICA QUE ES UNA ACTUALIZACIÓN DE ESA TUPLA EN LA TABLA PERSONA, SINO SIGNIFICA QUE ES UN NUEVO REGISTRO

	        $alm->id_tipotarifa > 0 
	           ? $this->model->Actualizar($alm)
	           : $this->model->Registrar($alm);

	        header('Location: ?c=TipoTarifa');
	    }
    	
    	// Función para Desactivar un campo
	    public function Eliminar()
	    {
	        $this->model->Eliminar($_REQUEST['id_tipotarifa']);
	        header('Location: ?c=TipoTarifa');
	    }
	}
?>