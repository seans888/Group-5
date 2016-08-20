<?php
require_once 'user_has_document_dd.php';
class user_has_document_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'USER_HAS_DOCUMENT_REPORT_CUSTOM';
    var $report_title = 'User Has Document: Custom Reporting Tool';
    var $html_subclass = 'user_has_document_html';
    var $data_subclass = 'user_has_document';
    var $result_page = 'reporter_result_user_has_document.php';
    var $cancel_page = 'listview_user_has_document.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_user_has_document.php';

    function __construct()
    {
        $this->fields        = user_has_document_dd::load_dictionary();
        $this->relations     = user_has_document_dd::load_relationships();
        $this->subclasses    = user_has_document_dd::load_subclass_info();
        $this->table_name    = user_has_document_dd::$table_name;
        $this->tables        = user_has_document_dd::$table_name;
        $this->readable_name = user_has_document_dd::$readable_name;
        $this->get_report_fields();
    }
}
