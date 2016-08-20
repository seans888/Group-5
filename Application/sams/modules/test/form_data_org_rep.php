<?php
require 'components/get_listview_referrer.php';

require 'subclasses/org_rep.php';
$dbh_org_rep = new org_rep;
$dbh_org_rep->set_where("Org_Rep_Id='" . quote_smart($Org_Rep_Id) . "' AND Org_Org_Id='" . quote_smart($Org_Org_Id) . "'");
if($result = $dbh_org_rep->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

