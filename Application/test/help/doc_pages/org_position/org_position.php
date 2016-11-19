<?php
require 'path.php';
init_cobalt();
require 'subclasses/org_position_doc.php';
$obj_doc = new org_position_doc;
$obj_doc->auto_doc();