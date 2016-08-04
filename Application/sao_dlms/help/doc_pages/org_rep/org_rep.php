<?php
require 'path.php';
init_cobalt();
require 'subclasses/org_rep_doc.php';
$obj_doc = new org_rep_doc;
$obj_doc->auto_doc();