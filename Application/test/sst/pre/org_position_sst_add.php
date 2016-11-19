<?php
require 'subclasses/org_position_sst.php';
$sst = new org_position_sst;
$sst->auto_test();
$sst_script = $sst->script;