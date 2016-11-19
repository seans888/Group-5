<?php
require 'path.php';
init_cobalt();
require 'subclasses/share_option_doc.php';
$obj_doc = new share_option_doc;
$obj_doc->auto_doc();