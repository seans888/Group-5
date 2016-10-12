<?php
require 'components/get_listview_referrer.php';

require 'subclasses/calendar_event.php';
$dbh_calendar_event = new calendar_event;
$dbh_calendar_event->set_where("id='" . quote_smart($id) . "'");
if($result = $dbh_calendar_event->make_query()->result)
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

