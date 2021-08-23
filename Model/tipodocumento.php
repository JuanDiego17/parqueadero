<?php

	class TipoDocumento
	{
		private $pdo;

		public $id_tipodocumento;
		public $n_tipodocumento;
		public $descripcion;

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
		
		//  Función Listar TIPO DOCUMENTO
		public function Listar_TipoDocumento()
		{
			try
			{
				$result = array();

				$stm = $this->pdo->prepare("SELECT * FROM tipo_documento WHERE estado_tipodocumento = 'Activo'");
				$stm->execute();

				return $stm->fetchAll(PDO::FETCH_OBJ);
			}
			catch(Exception $e)
			{
				die($e->getMessage());
			}
		}

		// Función Obtener TIPO DOCUMENTO por id
		public function getting($id_tipodocumento)
		{
			try 
			{
				$stm = $this->pdo
				          ->prepare("SELECT * FROM tipo_documento WHERE id_tipodocumento = ?");
				          

				$stm->execute(array($id_tipodocumento));
				return $stm->fetch(PDO::FETCH_OBJ);
			} 
			catch (Exception $e) 
			{
				die($e->getMessage());
			}
		}

		// Función Eliminar TIPO DOCUMENTO
		public function Eliminar($id_tipodocumento)
		{
			try 
			{
				$stm = $this->pdo
				            ->prepare("UPDATE tipo_documento SET estado_tipodocumento = 'Inactivo' WHERE id_tipodocumento = ?");			          

				$stm->execute(array($id_tipodocumento));
			} 
			catch (Exception $e) 
			{
				die($e->getMessage());
			}
		}

		// Función Actualizar TIPO DOCUMENTO
		public function Actualizar($data)
		{
			try 
			{
				$sql = "UPDATE tipo_documento SET 
							n_tipodocumento = ?, 
							descripcion = ?
					    WHERE id_tipodocumento = ?";

				$this->pdo->prepare($sql)
				     ->execute(
					    array(
	                        $data->n_tipodocumento, 
	                        $data->descripcion,
	                        $data->id_tipodocumento
						)
					);
			} 
			catch (Exception $e) 
			{
				die($e->getMessage());
			}
		}

		// Función Registrar TIPO DOCUMENTO
		public function Registrar($data)
		{
			try 
			{
			$sql = "INSERT INTO `tipo_documento` (n_tipodocumento,descripcion) 
			        VALUES (?, ?)";

			$this->pdo->prepare($sql)
			     ->execute(
					array(
	                    $data->n_tipodocumento, 
	                    $data->descripcion                   
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