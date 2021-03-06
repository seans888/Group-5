<?php
//****************************************************************************************
//Generated by Cobalt, a rapid application development framework. http://cobalt.jvroig.com
//Cobalt developed by JV Roig (jvroig@jvroig.com)
//****************************************************************************************
require 'path.php';
init_cobalt('Edit document');

if(isset($_GET['id']) && isset($_GET['docRequest_docRequest_Id']) && isset($_GET['docRequest_SAO_SAO_Id']) && isset($_GET['Adviser_Adv_Id']) && isset($_GET['Adviser_Org_Org_Id']) && isset($_GET['Adviser_Org_SAO_SAO_Id']) && isset($_GET['Student Affair Head_SAH_Id']) && isset($_GET['SAO_SAO_Id']))
{
    $id = urldecode($_GET['id']);
    $docRequest_docRequest_Id = urldecode($_GET['docRequest_docRequest_Id']);
    $docRequest_SAO_SAO_Id = urldecode($_GET['docRequest_SAO_SAO_Id']);
    $Adviser_Adv_Id = urldecode($_GET['Adviser_Adv_Id']);
    $Adviser_Org_Org_Id = urldecode($_GET['Adviser_Org_Org_Id']);
    $Adviser_Org_SAO_SAO_Id = urldecode($_GET['Adviser_Org_SAO_SAO_Id']);
    $Student Affair Head_SAH_Id = urldecode($_GET['Student Affair Head_SAH_Id']);
    $SAO_SAO_Id = urldecode($_GET['SAO_SAO_Id']);
    require 'form_data_document.php';
    $orig_docRequest_docRequest_Id = $docRequest_docRequest_Id;
    $orig_docRequest_SAO_SAO_Id = $docRequest_SAO_SAO_Id;
    $orig_Adviser_Adv_Id = $Adviser_Adv_Id;
    $orig_Adviser_Org_Org_Id = $Adviser_Org_Org_Id;
    $orig_Adviser_Org_SAO_SAO_Id = $Adviser_Org_SAO_SAO_Id;
    $orig_Student Affair Head_SAH_Id = $Student Affair Head_SAH_Id;
    $orig_SAO_SAO_Id = $SAO_SAO_Id;
}

if(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_submit']);
    require 'components/query_string_standard.php';
    require 'subclasses/document.php';
    $dbh_document = new document;

    $object_name = 'dbh_document';
    require 'components/create_form_data.php';
    $arr_form_data['orig_docRequest_docRequest_Id'] = $_POST['orig_docRequest_docRequest_Id'];
    $arr_form_data['orig_docRequest_SAO_SAO_Id'] = $_POST['orig_docRequest_SAO_SAO_Id'];
    $arr_form_data['orig_Adviser_Adv_Id'] = $_POST['orig_Adviser_Adv_Id'];
    $arr_form_data['orig_Adviser_Org_Org_Id'] = $_POST['orig_Adviser_Org_Org_Id'];
    $arr_form_data['orig_Adviser_Org_SAO_SAO_Id'] = $_POST['orig_Adviser_Org_SAO_SAO_Id'];
    $arr_form_data['orig_Student Affair Head_SAH_Id'] = $_POST['orig_Student Affair Head_SAH_Id'];
    $arr_form_data['orig_SAO_SAO_Id'] = $_POST['orig_SAO_SAO_Id'];
    extract($arr_form_data);

    if($_POST['btn_cancel'])
    {
        log_action('Pressed cancel button');
        redirect("listview_document.php?$query_string");
    }


    if($_POST['btn_submit'])
    {
        log_action('Pressed submit button');

        $message .= $dbh_document->sanitize($arr_form_data)->lst_error;
        extract($arr_form_data);

        if($dbh_document->check_uniqueness_for_editing($arr_form_data)->is_unique)
        {
            //Good, no duplicate in database
        }
        else
        {
            $message = "Record already exists with the same primary identifiers!";
        }

        if($message=="")
        {
            $dbh_document->edit($arr_form_data);


            redirect("listview_document.php?$query_string");
        }
    }
}
require 'subclasses/document_html.php';
$html = new document_html;
$html->draw_header('Edit Document', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);
$html->draw_hidden('id');
$html->draw_hidden('orig_docRequest_docRequest_Id');
$html->draw_hidden('orig_docRequest_SAO_SAO_Id');
$html->draw_hidden('orig_Adviser_Adv_Id');
$html->draw_hidden('orig_Adviser_Org_Org_Id');
$html->draw_hidden('orig_Adviser_Org_SAO_SAO_Id');
$html->draw_hidden('orig_Student Affair Head_SAH_Id');
$html->draw_hidden('orig_SAO_SAO_Id');
$html->draw_controls('edit');

$html->draw_footer();