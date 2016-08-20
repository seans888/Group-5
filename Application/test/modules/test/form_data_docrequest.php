<?php
require 'components/get_listview_referrer.php';

require 'subclasses/docrequest.php';
$dbh_docrequest = new docrequest;
$dbh_docrequest->set_where("docRequest_Id='" . quote_smart($docRequest_Id) . "' AND SAO_SAO_Id='" . quote_smart($SAO_SAO_Id) . "'");
if($result = $dbh_docrequest->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

