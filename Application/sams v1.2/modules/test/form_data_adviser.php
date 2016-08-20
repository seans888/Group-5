<?php
require 'components/get_listview_referrer.php';

require 'subclasses/adviser.php';
$dbh_adviser = new adviser;
$dbh_adviser->set_where("Adv_Id='" . quote_smart($Adv_Id) . "'");
if($result = $dbh_adviser->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

