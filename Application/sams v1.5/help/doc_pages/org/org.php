<?php
require 'path.php';
init_cobalt();
require 'subclasses/org_doc.php';
$obj_doc = new org_doc;
$obj_doc->auto_doc();