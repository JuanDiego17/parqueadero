<?php

	class TipoPago
	{
		private $pdo;

		public $id_tipopago;
		public $n_tipopago;

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
		
		//  Función Listar TIPO PAGO
		public function Listar_TipoPago()
		{
			try
			{
				$result = array();

				$stm = $this->pdo->prepare("SELECT * FROM tipo_pago WHERE estado_tipopago = 'Activo'");
				$stm->execute();

				return $stm->fetchAll(PDO::FETCH_OBJ);
			}
			catch(Exception $e)
			{
				die($e->getMessage());
			}
		}

		// Función Obtener TIPO PAGO por id
		public function getting($id_tipopago)
		{
			try 
			{
				$stm = $this->pdo
				          ->prepare("SELECT * FROM tipo_pago WHERE id_tipopago = ?");
				          

				$stm->execute(array($id_tipopago));
				return $stm->fetch(PDO::FETCH_OBJ);
			} 
			catch (Exception $e) 
			{
				die($e->getMessage());
			}
		}

		// Función Eliminar TIPO PAGO
		public function Eliminar($id_tipopago)
		{
			try 
			{
				$stm = $this->pdo
				            ->prepare("UPDATE tipo_pago SET estado_tipopago = 'Inactivo' WHERE id_tipopago = ?");			          

				$stm->execute(array($id_tipopago));
			} 
			catch (Exception $e) 
			{
				die($e->getMessage());
			}
		}

		// Función Actualizar TIPO PAGO
		public function Actualizar($data)
		{
			try 
			{
				$sql = "UPDATE tipo_pago SET 
							n_tipopago = ?
					    WHERE id_tipopago = ?";

				$this->pdo->prepare($sql)
				     ->execute(
					    array(
	                        $data->n_tipopago,
	                        $data->id_tipopago
						)
					);
			} 
			catch (Exception $e) 
			{
				die($e->getMessage());
			}
		}

		// Función Registrar TIPO PAGO
		public function Registrar($data)
		{
			try 
			{
			$sql = "INSERT INTO `tipo_pago` (n_tipopago) 
			        VALUES (?)";

			$this->pdo->prepare($sql)
			     ->execute(
					array(
	                    $data->n_tipopago                    
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