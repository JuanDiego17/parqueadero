<?php

require_once 'Model/marca.php';
require_once 'Model/tipovehiculo.php';

	class MarcaController
	{
		private $model;
		private $model2;

		// Función Constructor
		public function __CONSTRUCT()
		{
			$this->model = new Marca();
			$this->model2 = new TipoVehiculo();
		}

		// Función Index
		public function Index()
		{	
			require_once 'View/layouts/aside.php';
	        require_once 'View/layouts/header.php';
	        require_once 'View/layouts/aside2.php';
	        require_once 'View/Marca/marca.php';
	        require_once 'View/layouts/footer.php';
	    }

	    // Función para inicializar el CRUD
		public function Crud()
		{
	        $alm = new Marca();
	        
	        if(isset($_REQUEST['id_marca'])){
	            $alm = $this->model->getting($_REQUEST['id_marca']);
	        }
	        
	        require_once 'View/layouts/aside.php';
	        require_once 'View/layouts/header.php';
	        require_once 'View/Marca/marca-editar.php';
	        require_once 'View/layouts/footer.php';
	    }
    
    	// Función para Guardar los cambios echos a la tabla
    	public function Guardar()
	    {
	        $alm = new Marca();
	        
	        $alm->id_marca = $_REQUEST['id_marca'];
	        $alm->n_marca = $_REQUEST['nmarca'];
	        $alm->id_tipovehiculo = $_REQUEST['tipovehiculo'];

	        // SI ID PERSONA ES MAYOR QUE CERO (0) INDICA QUE ES UNA ACTUALIZACIÓN DE ESA TUPLA EN LA TABLA PERSONA, SINO SIGNIFICA QUE ES UN NUEVO REGISTRO

	        $alm->id_marca > 0 
	           ? $this->model->Actualizar($alm)
	           : $this->model->Registrar($alm);

	        header('Location: ?c=Marca');
	    }
    	
    	// Función para Desactivar un campo
	    public function Eliminar()
	    {
	        $this->model->Eliminar($_REQUEST['id_marca']);
	        header('Location: ?c=Marca');
	    }
	}
?>