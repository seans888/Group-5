<?php
require_once 'student affair head_dd.php';
class student affair head_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'STUDENT AFFAIR HEAD_REPORT_CUSTOM';
    var $report_title = 'Student Affair Head: Custom Reporting Tool';
    var $html_subclass = 'student affair head_html';
    var $data_subclass = 'student affair head';
    var $result_page = 'reporter_result_student affair head.php';
    var $cancel_page = 'listview_student affair head.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_student affair head.php';

    function __construct()
    {
        $this->fields        = student affair head_dd::load_dictionary();
        $this->relations     = student affair head_dd::load_relationships();
        $this->subclasses    = student affair head_dd::load_subclass_info();
        $this->table_name    = student affair head_dd::$table_name;
        $this->tables        = student affair head_dd::$table_name;
        $this->readable_name = student affair head_dd::$readable_name;
        $this->get_report_fields();
    }
}
