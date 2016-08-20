<?php
require_once 'adviser_dd.php';
class adviser_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'ADVISER_REPORT_CUSTOM';
    var $report_title = 'Adviser: Custom Reporting Tool';
    var $html_subclass = 'adviser_html';
    var $data_subclass = 'adviser';
    var $result_page = 'reporter_result_adviser.php';
    var $cancel_page = 'listview_adviser.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_adviser.php';

    function __construct()
    {
        $this->fields        = adviser_dd::load_dictionary();
        $this->relations     = adviser_dd::load_relationships();
        $this->subclasses    = adviser_dd::load_subclass_info();
        $this->table_name    = adviser_dd::$table_name;
        $this->tables        = adviser_dd::$table_name;
        $this->readable_name = adviser_dd::$readable_name;
        $this->get_report_fields();
    }
}
