<?php
require 'subclasses/document_sst.php';
$sst = new document_sst;
$sst->auto_test('delete');
$sst_script = $sst->script;