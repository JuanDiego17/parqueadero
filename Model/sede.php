<?php

	class Sede
	{
		private $pdo;

		public $id_sede;
		public $n_sede;
		public $telefono;
		public $direccion;

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
		
		//  Función Listar SEDE
		public function Listar_Sede()
		{
			try
			{
				$result = array();

				$stm = $this->pdo->prepare("SELECT * FROM sede WHERE estado_sede = 'Activo'");
				$stm->execute();

				return $stm->fetchAll(PDO::FETCH_OBJ);
			}
			catch(Exception $e)
			{
				die($e->getMessage());
			}
		}

		// Función Obtener SEDE por id
		public function getting($id_sede)
		{
			try 
			{
				$stm = $this->pdo
				          ->prepare("SELECT * FROM sede WHERE id_sede = ?");
				          

				$stm->execute(array($id_sede));
				return $stm->fetch(PDO::FETCH_OBJ);
			} 
			catch (Exception $e) 
			{
				die($e->getMessage());
			}
		}

		// Función Eliminar SEDE
		public function Eliminar($id_sede)
		{
			try 
			{
				$stm = $this->pdo
				            ->prepare("UPDATE sede SET estado_sede = 'Inactivo' WHERE id_sede = ?");			          

				$stm->execute(array($id_sede));
			} 
			catch (Exception $e) 
			{
				die($e->getMessage());
			}
		}

		// Función Actualizar SEDE
		public function Actualizar($data)
		{
			try 
			{
				$sql = "UPDATE sede SET 
							n_sede = ?, 
							telefono = ?,
	                        direccion = ?
					    WHERE id_sede = ?";

				$this->pdo->prepare($sql)
				     ->execute(
					    array(
	                        $data->n_sede, 
	                        $data->telefono,
	                        $data->direccion,
	                        $data->id_sede
						)
					);
			} 
			catch (Exception $e) 
			{
				die($e->getMessage());
			}
		}

		// Función Registrar SEDE
		public function Registrar($data)
		{
			try 
			{
			$sql = "INSERT INTO `sede` (n_sede,telefono,direccion) 
			        VALUES (?, ?, ?)";

			$this->pdo->prepare($sql)
			     ->execute(
					array(
	                    $data->n_sede, 
	                    $data->telefono,
	                    $data->direccion                    
	                )
				);
			} 
			catch (Exception $e) 
			{
				die($e->getMessage());
			}
		}

		// Función Contar SEDES
		public function Contar()
		{
			$stm = $this->pdo->prepare("SELECT COUNT(*) FROM sede");
			$stm->execute();
			
			return $stm->fetchAll(PDO::FETCH_OBJ);
		}
	}
?>