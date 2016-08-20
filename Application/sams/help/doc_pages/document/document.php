<?php
require 'path.php';
init_cobalt();
require 'subclasses/document_doc.php';
$obj_doc = new document_doc;
$obj_doc->auto_doc();