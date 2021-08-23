<?php

	require 'fpdf/fpdf.php';
	
	class PDF extends FPDF
	{
		function Header()
		{

			$this->Image('assets/images/icon/parqueadero.png', 10, 5, 20 );
			$this->SetFont('Arial','B',15);
			$this->Cell(20);
			$this->Cell(250,10, 'Reporte General',0,0,'C');
			$this->Image('assets/images/icon/parqueadero.png', 284, 5, 20 );
			$this->Ln(20);
		}
		
		function Footer()
		{
			$this->SetY(-15);
			$this->SetFont('Arial','I', 8);
			$this->Cell(0,10, 'Pagina '.$this->PageNo().'/{nb}',0,0,'C');
		}		
	}
?>