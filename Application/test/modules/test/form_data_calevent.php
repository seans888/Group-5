<?php
require 'components/get_listview_referrer.php';

require 'subclasses/calevent.php';
$dbh_calevent = new calevent;
$dbh_calevent->set_where("calEvent_Id='" . quote_smart($calEvent_Id) . "' AND SAO_SAO_Id='" . quote_smart($SAO_SAO_Id) . "'");
if($result = $dbh_calevent->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

    $data = explode('-',$calEvent_Date);
    if(count($data) == 3)
    {
        $calEvent_Date_year = $data[0];
        $calEvent_Date_month = $data[1];
        $calEvent_Date_day = $data[2];
    }
}

