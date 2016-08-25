<?php
require_once 'docrequest_dd.php';
class docrequest_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'DOCREQUEST_REPORT_CUSTOM';
    var $report_title = 'Docrequest: Custom Reporting Tool';
    var $html_subclass = 'docrequest_html';
    var $data_subclass = 'docrequest';
    var $result_page = 'reporter_result_docrequest.php';
    var $cancel_page = 'listview_docrequest.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_docrequest.php';

    function __construct()
    {
        $this->fields        = docrequest_dd::load_dictionary();
        $this->relations     = docrequest_dd::load_relationships();
        $this->subclasses    = docrequest_dd::load_subclass_info();
        $this->table_name    = docrequest_dd::$table_name;
        $this->tables        = docrequest_dd::$table_name;
        $this->readable_name = docrequest_dd::$readable_name;
        $this->get_report_fields();
    }
}
