<?php

require_once 'Model/tipovalor.php';

	class TipoValorController
	{
		private $model;

		// Función Constructor
		public function __CONSTRUCT()
		{
			$this->model = new TipoValor();
		}

		// Función Index
		public function Index()
		{	
			require_once 'View/layouts/aside.php';
	        require_once 'View/layouts/header.php';
	        require_once 'View/layouts/aside2.php';
	        require_once 'View/TipoValor/tipovalor.php';
	        require_once 'View/layouts/footer.php';
	    }

	    // Función para inicializar el CRUD
		public function Crud()
		{
	        $alm = new TipoValor();
	        
	        if(isset($_REQUEST['id_tipovalor'])){
	            $alm = $this->model->getting($_REQUEST['id_tipovalor']);
	        }
	        
	        require_once 'View/layouts/aside.php';
	        require_once 'View/layouts/header.php';
	        require_once 'View/TipoValor/tipovalor-editar.php';
	        require_once 'View/layouts/footer.php';
	    }
    
    	// Función para Guardar los cambios echos a la tabla
    	public function Guardar()
	    {
	        $alm = new TipoValor();
	        
	        $alm->id_tipovalor = $_REQUEST['id_tipovalor'];
	        $alm->n_tipovalor = $_REQUEST['ntipovalor'];

	        // SI ID PERSONA ES MAYOR QUE CERO (0) INDICA QUE ES UNA ACTUALIZACIÓN DE ESA TUPLA EN LA TABLA PERSONA, SINO SIGNIFICA QUE ES UN NUEVO REGISTRO

	        $alm->id_tipovalor > 0 
	           ? $this->model->Actualizar($alm)
	           : $this->model->Registrar($alm);

	        header('Location: ?c=TipoValor');
	    }
    	
    	// Función para Desactivar un campo
	    public function Eliminar()
	    {
	        $this->model->Eliminar($_REQUEST['id_tipovalor']);
	        header('Location: ?c=TipoValor');
	    }
	}
?>