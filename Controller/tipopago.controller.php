<?php

require_once 'Model/tipopago.php';

	class TipoPagoController
	{
		private $model;

		// Función Constructor
		public function __CONSTRUCT()
		{
			$this->model = new TipoPago();
		}

		// Función Index
		public function Index()
		{	
			require_once 'View/layouts/aside.php';
	        require_once 'View/layouts/header.php';
	        require_once 'View/layouts/aside2.php';
	        require_once 'View/TipoPago/tipopago.php';
	        require_once 'View/layouts/footer.php';
	    }

	    // Función para inicializar el CRUD
		public function Crud()
		{
	        $alm = new TipoPago();
	        
	        if(isset($_REQUEST['id_tipopago'])){
	            $alm = $this->model->getting($_REQUEST['id_tipopago']);
	        }
	        
	        require_once 'View/layouts/aside.php';
	        require_once 'View/layouts/header.php';
	        require_once 'View/TipoPago/tipopago-editar.php';
	        require_once 'View/layouts/footer.php';
	    }
    
    	// Función para Guardar los cambios echos a la tabla
    	public function Guardar()
	    {
	        $alm = new TipoPago();
	        
	        $alm->id_tipopago = $_REQUEST['id_tipopago'];
	        $alm->n_tipopago = $_REQUEST['ntipopago'];

	        // SI ID PERSONA ES MAYOR QUE CERO (0) INDICA QUE ES UNA ACTUALIZACIÓN DE ESA TUPLA EN LA TABLA PERSONA, SINO SIGNIFICA QUE ES UN NUEVO REGISTRO

	        $alm->id_tipopago > 0 
	           ? $this->model->Actualizar($alm)
	           : $this->model->Registrar($alm);

	        header('Location: ?c=TipoPago');
	    }
    	
    	// Función para Desactivar un campo
	    public function Eliminar()
	    {
	        $this->model->Eliminar($_REQUEST['id_tipopago']);
	        header('Location: ?c=TipoPago');
	    }
	}
?>