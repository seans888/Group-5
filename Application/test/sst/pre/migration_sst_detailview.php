<?php
require 'subclasses/migration_sst.php';
$sst = new migration_sst;
$sst->auto_test('detail_view');
$sst_script = $sst->script;