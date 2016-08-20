<?php
require 'subclasses/org_rep_sst.php';
$sst = new org_rep_sst;
$sst->auto_test('detail_view');
$sst_script = $sst->script;