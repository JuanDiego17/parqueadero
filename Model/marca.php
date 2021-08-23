<?php

	class Marca
	{
		private $pdo;

		public $id_marca;
		public $n_marca;
		public $id_tipovehiculo;

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
		
		//  Función Listar MARCA
		public function Listar_Marca()
		{
			try
			{
				$result = array();

				$stm = $this->pdo->prepare("SELECT * FROM marca WHERE estado_marca = 'Activo'");
				$stm->execute();

				return $stm->fetchAll(PDO::FETCH_OBJ);
			}
			catch(Exception $e)
			{
				die($e->getMessage());
			}
		}

		// Función Obtener MARCA por id
		public function getting($id_marca)
		{
			try 
			{
				$stm = $this->pdo
				          ->prepare("SELECT * FROM marca WHERE id_marca = ?");
				          

				$stm->execute(array($id_marca));
				return $stm->fetch(PDO::FETCH_OBJ);
			} 
			catch (Exception $e) 
			{
				die($e->getMessage());
			}
		}

		// Función Eliminar MARCA
		public function Eliminar($id_marca)
		{
			try 
			{
				$stm = $this->pdo
				            ->prepare("UPDATE marca SET estado_marca = 'Inactivo' WHERE id_marca = ?");			          

				$stm->execute(array($id_marca));
			} 
			catch (Exception $e) 
			{
				die($e->getMessage());
			}
		}

		// Función Actualizar MARCA
		public function Actualizar($data)
		{
			try 
			{
				$sql = "UPDATE marca SET 
							n_marca = ?,
							id_tipovehiculo = ?
					    WHERE id_marca = ?";

				$this->pdo->prepare($sql)
				     ->execute(
					    array(
	                        $data->n_marca,
	                        $data->id_tipovehiculo,
	                        $data->id_marca
						)
					);
			} 
			catch (Exception $e) 
			{
				die($e->getMessage());
			}
		}

		// Función Registrar MARCA
		public function Registrar($data)
		{
			try 
			{
			$sql = "INSERT INTO `marca` (n_marca, id_tipovehiculo) 
			        VALUES (?, ?)";

			$this->pdo->prepare($sql)
			     ->execute(
					array(
	                    $data->n_marca,
	                    $data->id_tipovehiculo                    
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