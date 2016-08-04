<?php
require 'components/get_listview_referrer.php';

require 'subclasses/org_rep.php';
$dbh_org_rep = new org_rep;
$dbh_org_rep->set_where("id='" . quote_smart($id) . "' AND Org_Org_Id='" . quote_smart($Org_Org_Id) . "' AND Org_SAO_SAO_Id='" . quote_smart($Org_SAO_SAO_Id) . "'");
if($result = $dbh_org_rep->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

