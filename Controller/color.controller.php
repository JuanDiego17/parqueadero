<?php

require_once 'Model/color.php';

	class ColorController
	{
		private $model;

		// Función Constructor
		public function __CONSTRUCT()
		{
			$this->model = new Color();
		}

		// Función Index
		public function Index()
		{	
			require_once 'View/layouts/aside.php';
	        require_once 'View/layouts/header.php';
	        require_once 'View/layouts/aside2.php';
	        require_once 'View/Color/color.php';
	        require_once 'View/layouts/footer.php';
	    }

	    // Función para inicializar el CRUD
		public function Crud()
		{
	        $alm = new Color();
	        
	        if(isset($_REQUEST['id_color'])){
	            $alm = $this->model->getting($_REQUEST['id_color']);
	        }
	        
	        require_once 'View/layouts/aside.php';
	        require_once 'View/layouts/header.php';
	        require_once 'View/Color/color-editar.php';
	        require_once 'View/layouts/footer.php';
	    }
    
    	// Función para Guardar los cambios echos a la tabla
    	public function Guardar()
	    {
	        $alm = new Color();
	        
	        $alm->id_color = $_REQUEST['id_color'];
	        $alm->n_color = $_REQUEST['ncolor'];

	        // SI ID PERSONA ES MAYOR QUE CERO (0) INDICA QUE ES UNA ACTUALIZACIÓN DE ESA TUPLA EN LA TABLA PERSONA, SINO SIGNIFICA QUE ES UN NUEVO REGISTRO

	        $alm->id_color > 0 
	           ? $this->model->Actualizar($alm)
	           : $this->model->Registrar($alm);

	        header('Location: ?c=Color');
	    }
    	
    	// Función para Desactivar un campo
	    public function Eliminar()
	    {
	        $this->model->Eliminar($_REQUEST['id_color']);
	        header('Location: ?c=Color');
	    }
	}
?>