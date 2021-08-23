<?php

	class TipoValor
	{
		private $pdo;

		public $id_tipovalor;
		public $n_tipovalor;

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
		
		//  Función Listar TIPO VALOR
		public function Listar_TipoValor()
		{
			try
			{
				$result = array();

				$stm = $this->pdo->prepare("SELECT * FROM tipo_valor WHERE estado_tipovalor = 'Activo'");
				$stm->execute();

				return $stm->fetchAll(PDO::FETCH_OBJ);
			}
			catch(Exception $e)
			{
				die($e->getMessage());
			}
		}

		// Función Obtener TIPO VALOR por id
		public function getting($id_tipovalor)
		{
			try 
			{
				$stm = $this->pdo
				          ->prepare("SELECT * FROM tipo_valor WHERE id_tipovalor = ?");
				          

				$stm->execute(array($id_tipovalor));
				return $stm->fetch(PDO::FETCH_OBJ);
			} 
			catch (Exception $e) 
			{
				die($e->getMessage());
			}
		}

		// Función Eliminar TIPO VALOR
		public function Eliminar($id_tipovalor)
		{
			try 
			{
				$stm = $this->pdo
				            ->prepare("UPDATE tipo_valor SET estado_tipovalor = 'Inactivo' WHERE id_tipovalor = ?");			          

				$stm->execute(array($id_tipovalor));
			} 
			catch (Exception $e) 
			{
				die($e->getMessage());
			}
		}

		// Función Actualizar TIPO VALOR
		public function Actualizar($data)
		{
			try 
			{
				$sql = "UPDATE tipo_valor SET 
							n_tipovalor = ?
					    WHERE id_tipovalor = ?";

				$this->pdo->prepare($sql)
				     ->execute(
					    array(
	                        $data->n_tipovalor,
	                        $data->id_tipovalor
						)
					);
			} 
			catch (Exception $e) 
			{
				die($e->getMessage());
			}
		}

		// Función Registrar TIPO VALOR
		public function Registrar($data)
		{
			try 
			{
			$sql = "INSERT INTO `tipo_valor` (n_tipovalor) 
			        VALUES (?)";

			$this->pdo->prepare($sql)
			     ->execute(
					array(
	                    $data->n_tipovalor                    
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