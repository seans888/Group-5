<?php
require 'subclasses/docrequirement_sst.php';
$sst = new docrequirement_sst;
$sst->auto_test('detail_view');
$sst_script = $sst->script;