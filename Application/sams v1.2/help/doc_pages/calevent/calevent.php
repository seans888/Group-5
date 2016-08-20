<?php
require 'path.php';
init_cobalt();
require 'subclasses/calevent_doc.php';
$obj_doc = new calevent_doc;
$obj_doc->auto_doc();