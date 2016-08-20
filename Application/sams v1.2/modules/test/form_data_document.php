<?php
require 'components/get_listview_referrer.php';

require 'subclasses/document.php';
$dbh_document = new document;
$dbh_document->set_where("Doc_Id='" . quote_smart($Doc_Id) . "' AND Adviser_Org_SAO_SAO_Id='" . quote_smart($Adviser_Org_SAO_SAO_Id) . "'");
if($result = $dbh_document->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

