<?php
require 'subclasses/calendar_event_sst.php';
$sst = new calendar_event_sst;
$sst->auto_test('delete');
$sst_script = $sst->script;