<?php
require 'components/get_listview_referrer.php';

require 'subclasses/document.php';
$dbh_document = new document;
$dbh_document->set_where("id='" . quote_smart($id) . "' AND docRequest_docRequest_Id='" . quote_smart($docRequest_docRequest_Id) . "' AND docRequest_SAO_SAO_Id='" . quote_smart($docRequest_SAO_SAO_Id) . "' AND Adviser_Adv_Id='" . quote_smart($Adviser_Adv_Id) . "' AND Adviser_Org_Org_Id='" . quote_smart($Adviser_Org_Org_Id) . "' AND Adviser_Org_SAO_SAO_Id='" . quote_smart($Adviser_Org_SAO_SAO_Id) . "' AND Student Affair Head_SAH_Id='" . quote_smart($Student Affair Head_SAH_Id) . "' AND SAO_SAO_Id='" . quote_smart($SAO_SAO_Id) . "'");
if($result = $dbh_document->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

