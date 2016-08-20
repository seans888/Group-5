<?php
require 'path.php';
init_cobalt();
require 'subclasses/sao_doc.php';
$obj_doc = new sao_doc;
$obj_doc->auto_doc();