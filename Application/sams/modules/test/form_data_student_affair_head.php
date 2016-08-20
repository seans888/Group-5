<?php
require 'components/get_listview_referrer.php';

require 'subclasses/student_affair_head.php';
$dbh_student_affair_head = new student_affair_head;
$dbh_student_affair_head->set_where("SAH_Id='" . quote_smart($SAH_Id) . "'");
if($result = $dbh_student_affair_head->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

