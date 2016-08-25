<?php
require 'path.php';
init_cobalt();
require 'subclasses/docrequest_doc.php';
$obj_doc = new docrequest_doc;
$obj_doc->auto_doc();