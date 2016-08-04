<?php
require 'subclasses/calevent_has_org_sst.php';
$sst = new calevent_has_org_sst;
$sst->auto_test();
$sst_script = $sst->script;