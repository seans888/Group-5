<?php
require_once 'org_dd.php';
class org_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'ORG_REPORT_CUSTOM';
    var $report_title = 'Org: Custom Reporting Tool';
    var $html_subclass = 'org_html';
    var $data_subclass = 'org';
    var $result_page = 'reporter_result_org.php';
    var $cancel_page = 'listview_org.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_org.php';

    function __construct()
    {
        $this->fields        = org_dd::load_dictionary();
        $this->relations     = org_dd::load_relationships();
        $this->subclasses    = org_dd::load_subclass_info();
        $this->table_name    = org_dd::$table_name;
        $this->tables        = org_dd::$table_name;
        $this->readable_name = org_dd::$readable_name;
        $this->get_report_fields();
    }
}
