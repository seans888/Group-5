<?php
require 'subclasses/docrequest_sst.php';
$sst = new docrequest_sst;
$sst->auto_test('detail_view');
$sst_script = $sst->script;