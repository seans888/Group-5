<?php
require 'subclasses/user_has_document_sst.php';
$sst = new user_has_document_sst;
$sst->auto_test();
$sst_script = $sst->script;