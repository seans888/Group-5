<?php
require 'path.php';
init_cobalt();
require 'subclasses/docrequirement_doc.php';
$obj_doc = new docrequirement_doc;
$obj_doc->auto_doc();