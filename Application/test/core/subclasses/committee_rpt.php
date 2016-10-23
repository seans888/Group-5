<?php
require_once 'committee_dd.php';
class committee_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'COMMITTEE_REPORT_CUSTOM';
    var $report_title = 'Committee: Custom Reporting Tool';
    var $html_subclass = 'committee_html';
    var $data_subclass = 'committee';
    var $result_page = 'reporter_result_committee.php';
    var $cancel_page = 'listview_committee.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_committee.php';

    function __construct()
    {
        $this->fields        = committee_dd::load_dictionary();
        $this->relations     = committee_dd::load_relationships();
        $this->subclasses    = committee_dd::load_subclass_info();
        $this->table_name    = committee_dd::$table_name;
        $this->tables        = committee_dd::$table_name;
        $this->readable_name = committee_dd::$readable_name;
        $this->get_report_fields();
    }
}
