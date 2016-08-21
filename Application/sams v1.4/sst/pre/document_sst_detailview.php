<?php
require 'subclasses/document_sst.php';
$sst = new document_sst;
$sst->auto_test('detail_view');
$sst_script = $sst->script;