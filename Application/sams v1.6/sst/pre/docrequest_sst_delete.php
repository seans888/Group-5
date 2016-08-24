<?php
require 'subclasses/docrequest_sst.php';
$sst = new docrequest_sst;
$sst->auto_test('delete');
$sst_script = $sst->script;