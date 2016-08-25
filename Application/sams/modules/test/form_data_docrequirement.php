<?php
require 'components/get_listview_referrer.php';

require 'subclasses/docrequirement.php';
$dbh_docrequirement = new docrequirement;
$dbh_docrequirement->set_where("id='" . quote_smart($id) . "'");
if($result = $dbh_docrequirement->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

