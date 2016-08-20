<?php
require 'subclasses/migration_sst.php';
$sst = new migration_sst;
$sst->auto_test('delete');
$sst_script = $sst->script;