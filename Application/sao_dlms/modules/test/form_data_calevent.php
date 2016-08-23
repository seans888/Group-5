<?php
require 'components/get_listview_referrer.php';

require 'subclasses/calevent.php';
$dbh_calevent = new calevent;
$dbh_calevent->set_where("id='" . quote_smart($id) . "' AND SAO_SAO_Id='" . quote_smart($SAO_SAO_Id) . "'");
if($result = $dbh_calevent->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

    $data = explode('-',$date);
    if(count($data) == 3)
    {
        $date_year = $data[0];
        $date_month = $data[1];
        $date_day = $data[2];
    }
}

