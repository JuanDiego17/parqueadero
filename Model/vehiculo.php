<?php

	class Vehiculo
	{
		private $pdo;

		public $id_vehiculo;
		public $placa;
		public $id_tipovehiculo;
		public $id_marca;
		public $id_modelo;
		public $id_color;
		public $id_sede;

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
		
		//  Función Listar VEHICULO
		public function Listar_Vehiculo()
		{
			try
			{
				$result = array();

				$stm = $this->pdo->prepare("SELECT vehiculo.`placa`, tipo_vehiculo.`n_tipovehiculo`, marca.`n_marca`, modelo.`n_modelo`, color.`n_color`, sede.`n_sede` FROM vehiculo 
											INNER JOIN marca
											ON vehiculo.`id_marca` = marca.`id_marca`
											INNER JOIN modelo
											ON vehiculo.`id_modelo` = modelo.`id_modelo`
											INNER JOIN color
											ON vehiculo.`id_color` = color.`id_color`
											INNER JOIN tipo_vehiculo
											ON vehiculo.`id_tipovehiculo` = tipo_vehiculo.`id_tipovehiculo`
											INNER JOIN sede
											ON vehiculo.`id_sede` = sede.`id_sede`
											WHERE estado_vehiculo = 'Activo'");
				$stm->execute();

				return $stm->fetchAll(PDO::FETCH_OBJ);
			}
			catch(Exception $e)
			{
				die($e->getMessage());
			}
		}

		// Función Obtener VEHICULO por id
		public function getting($id_vehiculo)
		{
			try 
			{
				$stm = $this->pdo
				          ->prepare("SELECT * FROM vehiculo WHERE id_vehiculo = ?");
				          

				$stm->execute(array($id_vehiculo));
				return $stm->fetch(PDO::FETCH_OBJ);
			} 
			catch (Exception $e) 
			{
				die($e->getMessage());
			}
		}

		// Función Eliminar VEHICULO
		public function Eliminar($id_vehiculo)
		{
			try 
			{
				$stm = $this->pdo
				            ->prepare("UPDATE vehiculo SET estado_vehiculo = 'Inactivo' WHERE id_vehiculo = ?");			          

				$stm->execute(array($id_vehiculo));
			} 
			catch (Exception $e) 
			{
				die($e->getMessage());
			}
		}

		// Función Actualizar VEHICULO
		public function Actualizar($data)
		{
			try 
			{
				$sql = "UPDATE vehiculo SET 
							placa = ?, 
							id_tipovehiculo = ?,
	                        id_marca = ?,
	                        id_modelo = ?,
	                        id_color = ?,
	                        id_sede = ?
					    WHERE id_vehiculo = ?";

				$this->pdo->prepare($sql)
				     ->execute(
					    array(
	                        $data->placa, 
	                        $data->id_tipovehiculo,
	                        $data->id_marca,
	                        $data->id_modelo,
	                        $data->id_color,
	                        $data->id_sede,
	                        $data->id_vehiculo
						)
					);
			} 
			catch (Exception $e) 
			{
				die($e->getMessage());
			}
		}

		// Función Registrar VEHICULO
		public function Registrar($data)
		{
			try 
			{
			$sql = "INSERT INTO `vehiculo` (placa,id_tipovehiculo,id_marca,id_modelo,id_color,id_sede) 
			        VALUES (?, ?, ?, ?, ?, ?)";

			$this->pdo->prepare($sql)
			     ->execute(
					array(
	                    $data->placa, 
	                    $data->id_tipovehiculo,
	                    $data->id_marca,
	                    $data->id_modelo,
	                    $data->id_color,
	                    $data->id_sede                   
	                )
				);
			} 
			catch (Exception $e) 
			{
				die($e->getMessage());
			}
		}

		// Función Contar VEHICULO
		public function Contar()
		{
			$stm = $this->pdo->prepare("SELECT COUNT(*) FROM vehiculo");
			$stm->execute();
			
			return $stm->fetchAll(PDO::FETCH_OBJ);
		}

		/*public function count_vehiculos()
		{
			$consulta=$this->db->query("SELECT COUNT(*) FROM vehiculo");
			
			while($filas=$consulta->fetch(PDO::FETCH_ASSOC))
			{
				$resultado = $filas['COUNT(*)'];
			}

			return $resultado;
		}*/

	}
?>