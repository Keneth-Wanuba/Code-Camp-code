<?php

// include composer packages
include "vendor/autoload.php";
use setasign\Fpdi\Fpdi;


// Check if the form is submitted
if (isset($_GET['student_name'])) {
    // Retrieve the student name from the POST data
    $studentName = $_GET['student_name'];

    


// Create new Landscape PDF
$pdf = new FPDI();

// Reference the PDF you want to use (use relative path)
$pagecount = $pdf->setSourceFile( 'SCRATCH ADVANCED CERTIFICATE.pdf' );

// Import the first page from the PDF and add to dynamic PDF
$tpl = $pdf->importPage(1);
$pdf->AddPage();

// Use the imported page as the template
$pdf->useTemplate($tpl);

// Set the default font to use
$pdf->SetFont('Arial');

// adding a Cell using:
// $pdf->Cell( $width, $height, $text, $border, $fill, $align);

// First box - the user's Name
$pdf->SetFontSize('35'); // set font size
$pdf->SetTextColor(11, 83, 148);
$pdf->SetXY(10, 158); // set the position of the box
$pdf->Cell(0, 10, $studentName, 0, 0, 'C'); // add the text, align to Center of cell


// render PDF to browser
$pdf->Output();
} else{
    echo "failed";
}