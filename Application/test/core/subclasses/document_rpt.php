<?php
require_once 'document_dd.php';
class document_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'DOCUMENT_REPORT_CUSTOM';
    var $report_title = '%%: Custom Reporting Tool';
    var $html_subclass = 'document_html';
    var $data_subclass = 'document';
    var $result_page = 'reporter_result_document.php';
    var $cancel_page = 'listview_document.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_document.php';

    function __construct()
    {
        $this->fields        = document_dd::load_dictionary();
        $this->relations     = document_dd::load_relationships();
        $this->subclasses    = document_dd::load_subclass_info();
        $this->table_name    = document_dd::$table_name;
        $this->tables        = document_dd::$table_name;
        $this->readable_name = document_dd::$readable_name;
        $this->get_report_fields();
    }
}
