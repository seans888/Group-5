<?php
require 'components/get_listview_referrer.php';

require 'subclasses/student affair head.php';
$dbh_student affair head = new student affair head;
$dbh_student affair head->set_where("SAH_Id='" . quote_smart($SAH_Id) . "'");
if($result = $dbh_student affair head->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

