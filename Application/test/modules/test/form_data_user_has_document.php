<?php
require 'components/get_listview_referrer.php';

require 'subclasses/user_has_document.php';
$dbh_user_has_document = new user_has_document;
$dbh_user_has_document->set_where("User_User_Id='" . quote_smart($User_User_Id) . "' AND User_Org_Rep_Org_Rep_Id='" . quote_smart($User_Org_Rep_Org_Rep_Id) . "' AND User_Org_Rep_Org_Org_Id='" . quote_smart($User_Org_Rep_Org_Org_Id) . "' AND User_Org_Rep_Org_SAO_SAO_Id='" . quote_smart($User_Org_Rep_Org_SAO_SAO_Id) . "' AND Document_Doc_Id='" . quote_smart($Document_Doc_Id) . "' AND Document_docRequest_docRequest_Id='" . quote_smart($Document_docRequest_docRequest_Id) . "' AND Document_docRequest_SAO_SAO_Id='" . quote_smart($Document_docRequest_SAO_SAO_Id) . "'");
if($result = $dbh_user_has_document->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

