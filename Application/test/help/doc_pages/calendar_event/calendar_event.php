<?php
require 'path.php';
init_cobalt();
require 'subclasses/calendar_event_doc.php';
$obj_doc = new calendar_event_doc;
$obj_doc->auto_doc();