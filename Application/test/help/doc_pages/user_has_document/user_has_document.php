<?php
require 'path.php';
init_cobalt();
require 'subclasses/user_has_document_doc.php';
$obj_doc = new user_has_document_doc;
$obj_doc->auto_doc();