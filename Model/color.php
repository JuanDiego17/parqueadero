<?php

	class Color
	{
		private $pdo;

		public $id_color;
		public $n_color;

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
		public function Listar_Color()
		{
			try
			{
				$result = array();

				$stm = $this->pdo->prepare("SELECT * FROM color WHERE estado_color = 'Activo'");
				$stm->execute();

				return $stm->fetchAll(PDO::FETCH_OBJ);
			}
			catch(Exception $e)
			{
				die($e->getMessage());
			}
		}

		// Función Obtener COLOR por id
		public function getting($id_color)
		{
			try 
			{
				$stm = $this->pdo
				          ->prepare("SELECT * FROM color WHERE id_color = ?");
				          

				$stm->execute(array($id_color));
				return $stm->fetch(PDO::FETCH_OBJ);
			} 
			catch (Exception $e) 
			{
				die($e->getMessage());
			}
		}

		// Función Eliminar COLOR
		public function Eliminar($id_color)
		{
			try 
			{
				$stm = $this->pdo
				            ->prepare("UPDATE color SET estado_color = 'Inactivo' WHERE id_color = ?");			          

				$stm->execute(array($id_color));
			} 
			catch (Exception $e) 
			{
				die($e->getMessage());
			}
		}

		// Función Actualizar COLOR
		public function Actualizar($data)
		{
			try 
			{
				$sql = "UPDATE color SET 
							n_color = ?
					    WHERE id_color = ?";

				$this->pdo->prepare($sql)
				     ->execute(
					    array(
	                        $data->n_color,
	                        $data->id_color
						)
					);
			} 
			catch (Exception $e) 
			{
				die($e->getMessage());
			}
		}

		// Función Registrar COLOR
		public function Registrar($data)
		{
			try 
			{
			$sql = "INSERT INTO `color` (n_color) 
			        VALUES (?)";

			$this->pdo->prepare($sql)
			     ->execute(
					array(
	                    $data->n_color                    
	                )
				);
			} 
			catch (Exception $e) 
			{
				die($e->getMessage());
			}
		}
	}
?>