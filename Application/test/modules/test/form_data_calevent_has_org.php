<?php
require 'components/get_listview_referrer.php';

require 'subclasses/calevent_has_org.php';
$dbh_calevent_has_org = new calevent_has_org;
$dbh_calevent_has_org->set_where("calEvent_calEvent_Id='" . quote_smart($calEvent_calEvent_Id) . "' AND calEvent_SAO_SAO_Id='" . quote_smart($calEvent_SAO_SAO_Id) . "' AND Org_Org_Id='" . quote_smart($Org_Org_Id) . "' AND Org_SAO_SAO_Id='" . quote_smart($Org_SAO_SAO_Id) . "'");
if($result = $dbh_calevent_has_org->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

