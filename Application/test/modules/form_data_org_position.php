<?php
require 'components/get_listview_referrer.php';

require 'subclasses/org_position.php';
$dbh_org_position = new org_position;
$dbh_org_position->set_where("id='" . quote_smart($id) . "'");
if($result = $dbh_org_position->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

