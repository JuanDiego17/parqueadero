<?php

	class TipoTarifa
	{
		private $pdo;

		public $id_tipotarifa;
		public $n_tipotarifa;

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
		
		//  Función Listar TIPO TARIFA
		public function Listar_TipoTarifa()
		{
			try
			{
				$result = array();

				$stm = $this->pdo->prepare("SELECT * FROM tipo_tarifa WHERE estado_tipotarifa = 'Activo'");
				$stm->execute();

				return $stm->fetchAll(PDO::FETCH_OBJ);
			}
			catch(Exception $e)
			{
				die($e->getMessage());
			}
		}

		// Función Obtener TIPO TARIFA por id
		public function getting($id_tipotarifa)
		{
			try 
			{
				$stm = $this->pdo
				          ->prepare("SELECT * FROM tipo_tarifa WHERE id_tipotarifa = ?");
				          

				$stm->execute(array($id_tipotarifa));
				return $stm->fetch(PDO::FETCH_OBJ);
			} 
			catch (Exception $e) 
			{
				die($e->getMessage());
			}
		}

		// Función Eliminar TIPO TARIFA
		public function Eliminar($id_tipotarifa)
		{
			try 
			{
				$stm = $this->pdo
				            ->prepare("UPDATE tipo_tarifa SET estado_tipotarifa = 'Inactivo' WHERE id_tipotarifa = ?");			          

				$stm->execute(array($id_tipotarifa));
			} 
			catch (Exception $e) 
			{
				die($e->getMessage());
			}
		}

		// Función Actualizar TIPO TARIFA
		public function Actualizar($data)
		{
			try 
			{
				$sql = "UPDATE tipo_tarifa SET 
							n_tipotarifa = ?
					    WHERE id_tipotarifa = ?";

				$this->pdo->prepare($sql)
				     ->execute(
					    array(
	                        $data->n_tipotarifa,
	                        $data->id_tipotarifa
						)
					);
			} 
			catch (Exception $e) 
			{
				die($e->getMessage());
			}
		}

		// Función Registrar TIPO TARIFA
		public function Registrar($data)
		{
			try 
			{
			$sql = "INSERT INTO `tipo_tarifa` (n_tipotarifa) 
			        VALUES (?)";

			$this->pdo->prepare($sql)
			     ->execute(
					array(
	                    $data->n_tipotarifa                    
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