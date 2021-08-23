<?php

	class Modelo
	{
		private $pdo;

		public $id_modelo;
		public $id_marca;
		public $n_modelo;

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
		
		//  Función Listar MODELO
		public function Listar_Modelo()
		{
			try
			{
				$result = array();

				$stm = $this->pdo->prepare("SELECT marca.`n_marca`, modelo.`n_modelo` FROM modelo 
											INNER JOIN marca
											ON modelo.`id_marca` = marca.`id_marca`
											WHERE estado_modelo = 'Activo'");
				$stm->execute();

				return $stm->fetchAll(PDO::FETCH_OBJ);
			}
			catch(Exception $e)
			{
				die($e->getMessage());
			}
		}

		// Función Obtener MODELO por id
		public function getting($id_modelo)
		{
			try 
			{
				$stm = $this->pdo
				          ->prepare("SELECT * FROM modelo WHERE id_modelo = ?");
				          

				$stm->execute(array($id_modelo));
				return $stm->fetch(PDO::FETCH_OBJ);
			} 
			catch (Exception $e) 
			{
				die($e->getMessage());
			}
		}

		// Función Eliminar MODELO
		public function Eliminar($id_modelo)
		{
			try 
			{
				$stm = $this->pdo
				            ->prepare("UPDATE modelo SET estado_modelo = 'Inactivo' WHERE id_modelo = ?");			          

				$stm->execute(array($id_modelo));
			} 
			catch (Exception $e) 
			{
				die($e->getMessage());
			}
		}

		// Función Actualizar MODELO
		public function Actualizar($data)
		{
			try 
			{
				$sql = "UPDATE modelo SET 
							id_marca = ?,
							n_modelo = ?
					    WHERE id_modelo = ?";

				$this->pdo->prepare($sql)
				     ->execute(
					    array(
	                        $data->id_marca,
	                        $data->n_modelo,
	                        $data->id_modelo
						)
					);
			} 
			catch (Exception $e) 
			{
				die($e->getMessage());
			}
		}

		// Función Registrar MODELO
		public function Registrar($data)
		{
			try 
			{
			$sql = "INSERT INTO `modelo` (id_marca,n_modelo) 
			        VALUES (?,?)";

			$this->pdo->prepare($sql)
			     ->execute(
					array(
	                    $data->id_marca,
	                    $data->n_modelo                   
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