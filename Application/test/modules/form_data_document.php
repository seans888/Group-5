<?php
require 'components/get_listview_referrer.php';

require 'subclasses/document.php';
$dbh_document = new document;
$dbh_document->set_where("id='" . quote_smart($id) . "'");
if($result = $dbh_document->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

