<?php

	class TipoVehiculo
	{
		private $pdo;

		public $id_tipovehiculo;
		public $n_tipovehiculo;

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
		
		//  Función Listar TIPO VEHICULO
		public function Listar_TipoVehiculo()
		{
			try
			{
				$result = array();

				$stm = $this->pdo->prepare("SELECT * FROM tipo_vehiculo WHERE estado_tipovehiculo = 'Activo'");
				$stm->execute();

				return $stm->fetchAll(PDO::FETCH_OBJ);
			}
			catch(Exception $e)
			{
				die($e->getMessage());
			}
		}

		// Función Obtener TIPO VEHICULO por id
		public function getting($id_tipovehiculo)
		{
			try 
			{
				$stm = $this->pdo
				          ->prepare("SELECT * FROM tipo_vehiculo WHERE id_tipovehiculo = ?");
				          

				$stm->execute(array($id_tipovehiculo));
				return $stm->fetch(PDO::FETCH_OBJ);
			} 
			catch (Exception $e) 
			{
				die($e->getMessage());
			}
		}

		// Función Eliminar TIPO VEHICULO
		public function Eliminar($id_tipovehiculo)
		{
			try 
			{
				$stm = $this->pdo
				            ->prepare("UPDATE tipo_vehiculo SET estado_tipovehiculo = 'Inactivo' WHERE id_tipovehiculo = ?");			          

				$stm->execute(array($id_tipovehiculo));
			} 
			catch (Exception $e) 
			{
				die($e->getMessage());
			}
		}

		// Función Actualizar TIPO VEHICULO
		public function Actualizar($data)
		{
			try 
			{
				$sql = "UPDATE tipo_vehiculo SET 
							n_tipovehiculo = ?
					    WHERE id_tipovehiculo = ?";

				$this->pdo->prepare($sql)
				     ->execute(
					    array(
	                        $data->n_tipovehiculo,
	                        $data->id_tipovehiculo
						)
					);
			} 
			catch (Exception $e) 
			{
				die($e->getMessage());
			}
		}

		// Función Registrar TIPO VEHICULO
		public function Registrar($data)
		{
			try 
			{
			$sql = "INSERT INTO `tipo_vehiculo` (n_tipovehiculo) 
			        VALUES (?)";

			$this->pdo->prepare($sql)
			     ->execute(
					array(
	                    $data->n_tipovehiculo                    
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