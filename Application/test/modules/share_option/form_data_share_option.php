<?php
require 'components/get_listview_referrer.php';

require 'subclasses/share_option.php';
$dbh_share_option = new share_option;
$dbh_share_option->set_where("id='" . quote_smart($id) . "'");
if($result = $dbh_share_option->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

