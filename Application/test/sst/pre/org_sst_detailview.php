<?php
require 'subclasses/org_sst.php';
$sst = new org_sst;
$sst->auto_test('detail_view');
$sst_script = $sst->script;