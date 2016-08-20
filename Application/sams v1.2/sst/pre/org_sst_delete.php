<?php
require 'subclasses/org_sst.php';
$sst = new org_sst;
$sst->auto_test('delete');
$sst_script = $sst->script;