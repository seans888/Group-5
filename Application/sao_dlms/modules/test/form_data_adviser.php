<?php
require 'components/get_listview_referrer.php';

require 'subclasses/adviser.php';
$dbh_adviser = new adviser;
$dbh_adviser->set_where("id='" . quote_smart($id) . "' AND Org_Org_Id='" . quote_smart($Org_Org_Id) . "' AND Org_SAO_SAO_Id='" . quote_smart($Org_SAO_SAO_Id) . "'");
if($result = $dbh_adviser->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

