<?php
require 'subclasses/adviser_sst.php';
$sst = new adviser_sst;
$sst->auto_test('delete');
$sst_script = $sst->script;