<?php

	class Login
	{
		private $pdo;

		public $id_persona;
		public $correo;
		public $password;
		public $nombre;
		public $apellido;
		public $id_rol;

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

		// Función Validar CORREO
		public function ValidarCorreo($data)
		{
			try
			{
				$stm = $this->pdo->prepare("SELECT COUNT(*) conta FROM persona WHERE correo = ?");
				$stm->execute(array($data->correo));

				return $stm->fetch(PDO::FETCH_OBJ);
			}
			catch(Exception $e)
			{
				die($e->getMessage());
			}
		}

		// Función Validar CONTRASEÑA
		public function ValidarPass($data)
		{
			try
			{
				$stm = $this->pdo->prepare("SELECT COUNT(*) conta FROM persona WHERE password = ?");
				$stm->execute(array($data->password));

				return $stm->fetch(PDO::FETCH_OBJ);
			}
			catch(Exception $e)
			{
				die($e->getMessage());
			}
		}

		// Función Validar USUARIO
		public function ValidarPersona($data)
		{
			try
			{
				$stm = $this->pdo->prepare("SELECT COUNT(*) conta FROM persona WHERE correo = ? AND password = ?");
				$stm->execute(array($data->correo, $data->password));

				return $stm->fetch(PDO::FETCH_OBJ);
			}
			catch(Exception $e)
			{
				die($e->getMessage());
			}
		}

		// Función Cargar Datos USUARIO
		public function CargarPersona($data)
		{
			try
			{
				$stm = $this->pdo->prepare("SELECT nombre, apellido, id_rol FROM persona WHERE correo = ? AND password = ?");
				$stm->execute(array($data->correo, $data->password));

				return $stm->fetch(PDO::FETCH_OBJ);
			}
			catch(Exception $e)
			{
				die($e->getMessage());
			}
		}
	}
?>