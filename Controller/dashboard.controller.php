<?php
	
require_once 'Model/persona.php';
require_once 'Model/vehiculo.php';
require_once 'Model/sede.php';
require_once 'Model/reporte.php';

	class DashboardController
	{
		private $model;
		private $model2;
		private $model3;
		private $model4;

		// Función Constructor
		public function __CONSTRUCT()
		{
			$this->model = new Persona();
			$this->model2 = new Vehiculo();
			$this->model3 = new Sede();
			$this->model4 = new Reporte();
		}

		// Función Index
		public function Index()
		{	
			require_once 'View/layouts/aside.php';
	        require_once 'View/layouts/header.php';
	        require_once 'View/layouts/aside2.php';
	        require_once 'View/Dashboard/dashboard.php';
	        require_once 'View/layouts/footer.php';
	    }
	}
?>