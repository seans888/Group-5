<?php
require 'path.php';
init_cobalt();
require 'subclasses/migration_doc.php';
$obj_doc = new migration_doc;
$obj_doc->auto_doc();