<?php
require 'subclasses/org_position_sst.php';
$sst = new org_position_sst;
$sst->auto_test('detail_view');
$sst_script = $sst->script;