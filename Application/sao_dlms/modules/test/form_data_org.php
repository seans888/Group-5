<?php
require 'components/get_listview_referrer.php';

require 'subclasses/org.php';
$dbh_org = new org;
$dbh_org->set_where("id='" . quote_smart($id) . "' AND SAO_SAO_Id='" . quote_smart($SAO_SAO_Id) . "'");
if($result = $dbh_org->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

