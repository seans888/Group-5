<?php
require 'components/get_listview_referrer.php';

require 'subclasses/migration.php';
$dbh_migration = new migration;
$dbh_migration->set_where("version='" . quote_smart($version) . "'");
if($result = $dbh_migration->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

