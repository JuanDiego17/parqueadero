<?php
	
	$matrizReportes = $this->model->Listar_Reporte();

	require_once 'plantilla.php';

	$pdf = new PDF('L', 'mm', array(314,200));
	$pdf->AliasNbPages();
	$pdf->AddPage();
	
	$pdf->SetFillColor(255,8,1);
	$pdf->SetFont('Arial','B',12);
	$pdf->Cell(33,6,'Tabla',1,0,'C',1);
	$pdf->Cell(20,6,utf8_decode('Acción'),1,0,'C',1);
	$pdf->Cell(60,6,'N.Registro',1,0,'C',1);
	$pdf->Cell(32,6,utf8_decode('U.Creación'),1,0,'C',1);
	$pdf->Cell(25,6,utf8_decode('F.Creación'),1,0,'C',1);
	$pdf->Cell(60,6,'A.Registro',1,0,'C',1);
	$pdf->Cell(32,6,utf8_decode('U.Modificación'),1,0,'C',1);
	$pdf->Cell(32,6,utf8_decode('F.Modificación'),1,1,'C',1);
	
	$pdf->SetFont('Arial','',12);
	
	foreach($this->model->Listar_Reporte() as $row)
	{
		$pdf->Cell(33,6,utf8_decode($row->tabla),1,0,'C');
		$pdf->Cell(20,6,utf8_decode($row->accion),1,0,'C');
		$pdf->Cell(60,6,utf8_decode($row->registro_nuevo),1,0,'');
		$pdf->Cell(32,6,utf8_decode($row->usuario_creacion),1,0,'');
		$pdf->Cell(25,6,utf8_decode($row->fecha_creacion),1,0,'');
		$pdf->Cell(60,6,utf8_decode($row->registro_anterior),1,0,'');
		$pdf->Cell(32,6,utf8_decode($row->usuario_modificacion),1,0,'');
		$pdf->Cell(32,6,utf8_decode($row->fecha_modificacion),1,1,'');
	}

	$pdf->Output();
?>