<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'Phpmailer/Exception.php';
require 'Phpmailer/PHPMailer.php';
require 'Phpmailer/SMTP.php';

require_once 'Model/persona.php';
require_once 'Model/tipodocumento.php';
require_once 'Model/rol.php';
require_once 'Model/sede.php';

	class PersonaController
	{
		private $model;

		// Función Constructor
		public function __CONSTRUCT()
		{
			$this->model = new Persona();
			$this->model2 = new TipoDocumento();
			$this->model3 = new Rol();
			$this->model4 = new Sede();
		}

		// Función Index
		public function Index()
		{	
			require_once 'View/layouts/aside.php';
	        require_once 'View/layouts/header.php';
	        require_once 'View/layouts/aside2.php';
	        require_once 'View/Persona/persona.php';
	        require_once 'View/layouts/footer.php';
	    }

	    // Función para inicializar el CRUD
		public function Crud()
		{
	        $alm = new Persona();
	        
	        if(isset($_REQUEST['id_persona'])){
	            $alm = $this->model->getting($_REQUEST['id_persona']);
	        }
	        
	        require_once 'View/layouts/aside.php';
	        require_once 'View/layouts/header.php';
	        require_once 'View/Persona/persona-editar.php';
	        require_once 'View/layouts/footer.php';
	    }
    
    	// Función para Guardar los cambios echos a la tabla
    	public function Guardar()
	    {
	        $alm = new Persona();
	        
	        $alm->id_persona = $_REQUEST['id_persona'];
	        $alm->id_tipodocumento = $_REQUEST['tipodocumento'];
	        $alm->n_documento = $_REQUEST['ndocumento'];
	        $alm->nombre = $_REQUEST['nombres'];
	        $alm->apellido = $_REQUEST['apellidos'];
			$alm->correo = $_REQUEST['email'];
			$alm->telefono = $_REQUEST['ntelefono'];
			$alm->id_rol = $_REQUEST['rol'];
			$alm->id_sede = $_REQUEST['sede'];
			$alm->password = password_hash($_REQUEST['password'], PASSWORD_DEFAULT);

			$body = "Se ha creado usuario para <b>". $alm->nombre . " ". $alm->apellido . "</b> para poder utilizar el aplicativo de parqueadero.<br> Estos son los datos para ingresar:<br> <b>Correo:</b>". $alm->correo . "<br><b>Contraseña:</b>" . $alm->password;
			        
			$mail = new PHPMailer(true);

			try 
			{
				//Server settings
				$mail->SMTPDebug = 0; 
				$mail->isSMTP();
				$mail->Host       = 'smtp.gmail.com';
				$mail->SMTPAuth   = true;
				$mail->Username   = 'apliparqueadero@gmail.com';
				$mail->Password   = 'Parqueadero20';
				$mail->SMTPSecure = 'tls';
				$mail->Port       = 587;

				//Recipients
				$mail->setFrom('apliparqueadero@gmail.com', 'Aplicación Parqueadero');
				$mail->addAddress($alm->correo);

				// Content
				$mail->isHTML(true);
				$mail->Subject = 'Creación de usuario';
				$mail->Body    = $body;
				
				$mail->CharSet = 'UTF-8';

				$mail->send();
				echo '<script>
						alert("Mensaje enviado correctamente");
						window.history.go(-1);
					</script>';
			} 
			catch (Exception $e) 
			{
				echo "Hubo un error:", $mail->ErrorInfo;
			}

	        // SI ID PERSONA ES MAYOR QUE CERO (0) INDICA QUE ES UNA ACTUALIZACIÓN DE ESA TUPLA EN LA TABLA PERSONA, SINO SIGNIFICA QUE ES UN NUEVO REGISTRO

	        $alm->id_persona > 0 
	           ? $this->model->Actualizar($alm)
	           : $this->model->Registrar($alm);
	    }
    	
    	// Función para Desactivar un campo
	    public function Eliminar()
	    {
	        $this->model->Eliminar($_REQUEST['id_persona']);
	        header('Location: ?c=Persona');
	    }
	}
?>