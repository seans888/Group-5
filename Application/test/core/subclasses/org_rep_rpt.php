<?php
require_once 'org_rep_dd.php';
class org_rep_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'ORG_REP_REPORT_CUSTOM';
    var $report_title = 'Org Rep: Custom Reporting Tool';
    var $html_subclass = 'org_rep_html';
    var $data_subclass = 'org_rep';
    var $result_page = 'reporter_result_org_rep.php';
    var $cancel_page = 'listview_org_rep.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_org_rep.php';

    function __construct()
    {
        $this->fields        = org_rep_dd::load_dictionary();
        $this->relations     = org_rep_dd::load_relationships();
        $this->subclasses    = org_rep_dd::load_subclass_info();
        $this->table_name    = org_rep_dd::$table_name;
        $this->tables        = org_rep_dd::$table_name;
        $this->readable_name = org_rep_dd::$readable_name;
        $this->get_report_fields();
    }
}
