<?php
require 'path.php';
init_cobalt();
require 'subclasses/student_affair_head_doc.php';
$obj_doc = new student_affair_head_doc;
$obj_doc->auto_doc();