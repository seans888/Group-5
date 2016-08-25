<?php
require 'subclasses/docrequirement_sst.php';
$sst = new docrequirement_sst;
$sst->auto_test();
$sst_script = $sst->script;