<?
header('Content-disposition: attachment; filename=Document Request.docx');
header('Content-type: application/msword');
readfile('Document Request.docx');

?>
