<?php

require_once 'Model/modelo.php';
require_once 'Model/marca.php';

	class ModeloController
	{
		private $model;
		private $model2;

		// Función Constructor
		public function __CONSTRUCT()
		{
			$this->model = new Modelo();
			$this->model2 = new Marca();
		}

		// Función Index
		public function Index()
		{	
			require_once 'View/layouts/aside.php';
	        require_once 'View/layouts/header.php';
	        require_once 'View/layouts/aside2.php';
	        require_once 'View/Modelo/modelo.php';
	        require_once 'View/layouts/footer.php';
	    }

	    // Función para inicializar el CRUD
		public function Crud()
		{
	        $alm = new Modelo();
	        
	        if(isset($_REQUEST['id_modelo'])){
	            $alm = $this->model->getting($_REQUEST['id_modelo']);
	        }
	        
	        require_once 'View/layouts/aside.php';
	        require_once 'View/layouts/header.php';
	        require_once 'View/Modelo/modelo-editar.php';
	        require_once 'View/layouts/footer.php';
	    }
    
    	// Función para Guardar los cambios echos a la tabla
    	public function Guardar()
	    {
	        $alm = new Modelo();
	        
	        $alm->id_modelo = $_REQUEST['id_modelo'];
	        $alm->n_modelo = $_REQUEST['nmodelo'];
	        $alm->id_marca = $_REQUEST['marca'];
	        

	        // SI ID PERSONA ES MAYOR QUE CERO (0) INDICA QUE ES UNA ACTUALIZACIÓN DE ESA TUPLA EN LA TABLA PERSONA, SINO SIGNIFICA QUE ES UN NUEVO REGISTRO

	        $alm->id_modelo > 0 
	           ? $this->model->Actualizar($alm)
	           : $this->model->Registrar($alm);

	        header('Location: ?c=Modelo');
	    }
    	
    	// Función para Desactivar un campo
	    public function Eliminar()
	    {
	        $this->model->Eliminar($_REQUEST['id_modelo']);
	        header('Location: ?c=Modelo');
	    }
	}
?>