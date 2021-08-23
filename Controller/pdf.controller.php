<?php

	require_once 'Model/reporte.php';

	class PdfController
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
			require_once 'View/Reporte/pdf.php';
	    }
	}
?>