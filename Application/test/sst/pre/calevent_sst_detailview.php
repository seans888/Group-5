<?php
require 'subclasses/calevent_sst.php';
$sst = new calevent_sst;
$sst->auto_test('detail_view');
$sst_script = $sst->script;