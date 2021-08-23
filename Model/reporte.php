<?php

	class Reporte
	{
		private $pdo;

		public $id_reporte;

		// Función Constructor
		public function __CONSTRUCT()
		{
			try
			{
				$this->pdo = Conexion::StartUp();     
			}
			catch(Exception $e)
			{
				die($e->getMessage());
			}
		}
		
		//  Función Listar COLOR
		public function Listar_Reporte()
		{
			try
			{
				$result = array();

				$stm = $this->pdo->prepare("SELECT * FROM reporte");
				$stm->execute();

				return $stm->fetchAll(PDO::FETCH_OBJ);
			}
			catch(Exception $e)
			{
				die($e->getMessage());
			}
		}

		// Función Obtener COLOR por id
		public function getting($id_reporte)
		{
			try 
			{
				$stm = $this->pdo
				          ->prepare("SELECT * FROM reporte WHERE id_reporte = ?");
				          

				$stm->execute(array($id_reporte));
				return $stm->fetch(PDO::FETCH_OBJ);
			} 
			catch (Exception $e) 
			{
				die($e->getMessage());
			}
		}

		public function Contar()
		{
			$stm = $this->pdo->prepare("SELECT COUNT(*) FROM reporte");
			$stm->execute();
			
			return $stm->fetchAll(PDO::FETCH_OBJ);
		}

	}
?>