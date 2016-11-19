<?php
require_once 'org_position_dd.php';
class org_position_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'ORG_POSITION_REPORT_CUSTOM';
    var $report_title = '%%: Custom Reporting Tool';
    var $html_subclass = 'org_position_html';
    var $data_subclass = 'org_position';
    var $result_page = 'reporter_result_org_position.php';
    var $cancel_page = 'listview_org_position.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_org_position.php';

    function __construct()
    {
        $this->fields        = org_position_dd::load_dictionary();
        $this->relations     = org_position_dd::load_relationships();
        $this->subclasses    = org_position_dd::load_subclass_info();
        $this->table_name    = org_position_dd::$table_name;
        $this->tables        = org_position_dd::$table_name;
        $this->readable_name = org_position_dd::$readable_name;
        $this->get_report_fields();
    }
}
