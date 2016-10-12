<?php
require 'components/get_listview_referrer.php';

require 'subclasses/organization.php';
$dbh_organization = new organization;
$dbh_organization->set_where("id='" . quote_smart($id) . "'");
if($result = $dbh_organization->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

