<?php
require 'subclasses/share_option_sst.php';
$sst = new share_option_sst;
$sst->auto_test('delete');
$sst_script = $sst->script;