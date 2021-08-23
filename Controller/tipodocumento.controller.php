<?php

require_once 'Model/tipodocumento.php';
	
	class TipoDocumentoController
	{
		private $model;

		// Función Constructor
		public function __CONSTRUCT()
		{
			$this->model = new TipoDocumento();
		}

		// Función Index
		public function Index()
		{	
			require_once 'View/layouts/aside.php';
	        require_once 'View/layouts/header.php';
	        require_once 'View/layouts/aside2.php';
	        require_once 'View/TipoDocumento/tipodocumento.php';
	        require_once 'View/layouts/footer.php';
	    }

	    // Función para inicializar el CRUD
		public function Crud()
		{
	        $alm = new TipoDocumento();
	        
	        if(isset($_REQUEST['id_tipodocumento'])){
	            $alm = $this->model->getting($_REQUEST['id_tipodocumento']);
	        }
	        
	        require_once 'View/layouts/aside.php';
	        require_once 'View/layouts/header.php';
	        require_once 'View/TipoDocumento/tipodocumento-editar.php';
	        require_once 'View/layouts/footer.php';
	    }
    
    	// Función para Guardar los cambios echos a la tabla
    	public function Guardar()
	    {
	        $alm = new TipoDocumento();
	        
	        $alm->id_tipodocumento = $_REQUEST['id_tipodocumento'];
	        $alm->n_tipodocumento = $_REQUEST['ntipodocumento'];
	        $alm->descripcion = $_REQUEST['dtipodocumento'];

	        // SI ID PERSONA ES MAYOR QUE CERO (0) INDICA QUE ES UNA ACTUALIZACIÓN DE ESA TUPLA EN LA TABLA PERSONA, SINO SIGNIFICA QUE ES UN NUEVO REGISTRO

	        $alm->id_tipodocumento > 0 
	           ? $this->model->Actualizar($alm)
	           : $this->model->Registrar($alm);

	        header('Location: ?c=TipoDocumento');
	    }
    	
    	// Función para Desactivar un campo
	    public function Eliminar()
	    {
	        $this->model->Eliminar($_REQUEST['id_tipodocumento']);
	        header('Location: ?c=TipoDocumento');
	    }
	}

?>