<?php
require 'components/get_listview_referrer.php';

require 'subclasses/committee.php';
$dbh_committee = new committee;
$dbh_committee->set_where("id='" . quote_smart($id) . "'");
if($result = $dbh_committee->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

