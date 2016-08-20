<?php
//****************************************************************************************
//Generated by Cobalt, a rapid application development framework. http://cobalt.jvroig.com
//Cobalt developed by JV Roig (jvroig@jvroig.com)
//****************************************************************************************
require 'path.php';
init_cobalt('View org');

if(isset($_GET['id']) && isset($_GET['SAO_SAO_Id']))
{
    $id = urldecode($_GET['id']);
    $SAO_SAO_Id = urldecode($_GET['SAO_SAO_Id']);
    require 'form_data_org.php';
}

if(xsrf_guard())
{
    init_var($_POST['btn_back']);

    if($_POST['btn_back'])
    {
        log_action('Pressed cancel button');
        require 'components/query_string_standard.php';
        redirect("listview_org.php?$query_string");
    }
}
require 'subclasses/org_html.php';
$html = new org_html;
$html->draw_header('Detail View: Org', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);
$html->detail_view = TRUE;
$html->draw_controls('view');

$html->draw_footer();