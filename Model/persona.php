<?php

	class Persona
	{
		private $pdo;

		public $id_persona;
		public $id_tipodocumento;
		public $n_documento;
		public $nombre;
		public $apellido;
		public $correo;
		public $telefono;
		public $id_rol;
		public $id_sede;
		public $password;

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
		
		//  Función Listar PERSONA
		public function Listar_Persona()
		{
			try
			{
				$result = array();

				$stm = $this->pdo->prepare("SELECT tipo_documento.`n_tipodocumento`, persona.`n_documento`, persona.`nombre`, persona.`apellido`, persona.`correo`, persona.`telefono`, rol.`n_rol`, sede.`n_sede` FROM persona
											INNER JOIN tipo_documento
											ON persona.`id_tipodocumento` = tipo_documento.`id_tipodocumento`
											INNER JOIN rol
											ON persona.`id_rol` = rol.`id_rol`
											INNER JOIN sede
											ON persona.`id_sede` = sede.`id_sede`
											WHERE estado = 'Activo'");
				$stm->execute();

				return $stm->fetchAll(PDO::FETCH_OBJ);
			}
			catch(Exception $e)
			{
				die($e->getMessage());
			}
		}

		// Función Obtener PERSONA por id
		public function getting($id_persona)
		{
			try 
			{
				$stm = $this->pdo
				          ->prepare("SELECT * FROM persona WHERE id_persona = ?");
				          

				$stm->execute(array($id_persona));
				return $stm->fetch(PDO::FETCH_OBJ);
			} 
			catch (Exception $e) 
			{
				die($e->getMessage());
			}
		}

		// Función Eliminar PERSONA
		public function Eliminar($id_persona)
		{
			try 
			{
				$stm = $this->pdo
				            ->prepare("UPDATE persona SET estado = 'Inactivo' WHERE id_persona = ?");			          

				$stm->execute(array($id_persona));
			} 
			catch (Exception $e) 
			{
				die($e->getMessage());
			}
		}

		// Función Actualizar PERSONA
		public function Actualizar($data)
		{
			try 
			{
				$sql = "UPDATE persona SET 
							id_tipodocumento = ?,
							n_documento = ?,
							nombre = ?,
							apellido = ?,
							correo = ?,
							telefono = ?,
							id_rol = ?,
							id_sede = ?,
							password = ?
					    WHERE id_persona = ?";

				$this->pdo->prepare($sql)
				     ->execute(
					    array(
	                        $data->id_tipodocumento,
	                        $data->n_documento,
	                        $data->nombre,
	                        $data->apellido,
	                        $data->correo,
	                        $data->telefono,
	                        $data->id_rol,
	                        $data->id_sede,
	                        $data->password,
	                        $data->id_persona
						)
					);
			} 
			catch (Exception $e) 
			{
				die($e->getMessage());
			}
		}

		// Función Registrar PERSONA
		public function Registrar($data)
		{
			try 
			{
			$sql = "INSERT INTO `persona` (id_tipodocumento,n_documento,nombre,apellido,correo,telefono,id_rol,id_sede,password) 
			        VALUES (?,?,?,?,?,?,?,?,?)";

			$this->pdo->prepare($sql)
			     ->execute(
					array(
	                    $data->id_tipodocumento,
	                    $data->n_documento,
	                    $data->nombre,
	                    $data->apellido,
	                    $data->correo,
	                    $data->telefono,
	                    $data->id_rol,
	                    $data->id_sede,
	                    $data->password                   
	                )
				);
			} 
			catch (Exception $e) 
			{
				die($e->getMessage());
			}
		}

		// Función Contar PERSONAS
		public function Contar_Persona($data)
		{
			try
			{
				$stm = $this->pdo->prepare("SELECT COUNT(*) FROM persona WHERE estado = 'Activo'");			          
				$stm->execute(array($data));

				return $stm->fetch(PDO::FETCH_OBJ);
			}

			catch(Exception $e)
			{
				die($e->getMessage());
			}
		}
	}
?>