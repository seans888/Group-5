<?php
require 'components/get_listview_referrer.php';

require 'subclasses/sao.php';
$dbh_sao = new sao;
$dbh_sao->set_where("SAO_Id='" . quote_smart($SAO_Id) . "'");
if($result = $dbh_sao->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

