<?php
require 'path.php';
init_cobalt();
require 'subclasses/calevent_has_org_doc.php';
$obj_doc = new calevent_has_org_doc;
$obj_doc->auto_doc();