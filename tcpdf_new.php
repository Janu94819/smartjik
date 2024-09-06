<?php 
@include('library/tcpdf.php');

$pdf =new TCPDF('P','mm','A4');


$pdf->setPrintHeader(false);
$pdf->setPrintFooter(false);

$pdf->AddPage();

$pdf->Cell(190,10,"this is cell",1,1,'C');
$pdf->WriteHTMLCell(0,0,'','',"<table>
	<tr>
	<td>text</td>
	<td>text ghgghghgghgg</td>
	</tr>
	<tr>
	<td>text</td>
	<td>text ghgghghgghgg</td>
	</tr>
	</table>",1,0);
// $pdf->Cell(20,10,"cell",1);


$pdf->Output();

 ?>