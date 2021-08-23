<?php

require_once 'Model/reporte.php';

	class ReporteController
	{
		private $model;

		// Función Constructor
		public function __CONSTRUCT()
		{
			$this->model = new Reporte();
		}

		// Función Index
		public function Index()
		{	
			require_once 'View/layouts/aside.php';
	        require_once 'View/layouts/header.php';
	        require_once 'View/layouts/aside2.php';
	        require_once 'View/Reporte/reporte.php';
	        require_once 'View/layouts/footer.php';
	    }

	    // Función para inicializar el CRUD
		public function Crud()
		{
	        require_once 'View/Reporte/pdf.php';
	    }
	}
?>