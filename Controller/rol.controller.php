<?php

require_once 'Model/rol.php';

	class RolController
	{
		private $model;

		// Función Constructor
		public function __CONSTRUCT()
		{
			$this->model = new Rol();
		}

		// Función Index
		public function Index()
		{	
			require_once 'View/layouts/aside.php';
	        require_once 'View/layouts/header.php';
	        require_once 'View/layouts/aside2.php';
	        require_once 'View/Rol/rol.php';
	        require_once 'View/layouts/footer.php';
	    }

	    // Función para inicializar el CRUD
		public function Crud()
		{
	        $alm = new Rol();
	        
	        if(isset($_REQUEST['id_rol'])){
	            $alm = $this->model->getting($_REQUEST['id_rol']);
	        }
	        
	        require_once 'View/layouts/aside.php';
	        require_once 'View/layouts/header.php';
	        require_once 'View/Rol/rol-editar.php';
	        require_once 'View/layouts/footer.php';
	    }
    
    	// Función para Guardar los cambios echos a la tabla
    	public function Guardar()
	    {
	        $alm = new Rol();
	        
	        $alm->id_rol = $_REQUEST['id_rol'];
	        $alm->n_rol = $_REQUEST['nrol'];

	        // SI ID PERSONA ES MAYOR QUE CERO (0) INDICA QUE ES UNA ACTUALIZACIÓN DE ESA TUPLA EN LA TABLA PERSONA, SINO SIGNIFICA QUE ES UN NUEVO REGISTRO

	        $alm->id_rol > 0 
	           ? $this->model->Actualizar($alm)
	           : $this->model->Registrar($alm);

	        header('Location: ?c=Rol');
	    }
    	
    	// Función para Desactivar un campo
	    public function Eliminar()
	    {
	        $this->model->Eliminar($_REQUEST['id_rol']);
	        header('Location: ?c=Rol');
	    }
	}
?>