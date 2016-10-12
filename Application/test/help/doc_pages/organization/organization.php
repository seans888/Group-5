<?php
require 'path.php';
init_cobalt();
require 'subclasses/organization_doc.php';
$obj_doc = new organization_doc;
$obj_doc->auto_doc();