<?php
require 'subclasses/sao_sst.php';
$sst = new sao_sst;
$sst->auto_test('detail_view');
$sst_script = $sst->script;