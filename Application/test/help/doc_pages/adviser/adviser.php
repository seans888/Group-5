<?php
require 'path.php';
init_cobalt();
require 'subclasses/adviser_doc.php';
$obj_doc = new adviser_doc;
$obj_doc->auto_doc();