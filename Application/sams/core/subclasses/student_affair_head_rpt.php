<?php
require_once 'student_affair_head_dd.php';
class student_affair_head_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'STUDENT_AFFAIR_HEAD_REPORT_CUSTOM';
    var $report_title = 'Student Affair Head: Custom Reporting Tool';
    var $html_subclass = 'student_affair_head_html';
    var $data_subclass = 'student_affair_head';
    var $result_page = 'reporter_result_student_affair_head.php';
    var $cancel_page = 'listview_student_affair_head.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_student_affair_head.php';

    function __construct()
    {
        $this->fields        = student_affair_head_dd::load_dictionary();
        $this->relations     = student_affair_head_dd::load_relationships();
        $this->subclasses    = student_affair_head_dd::load_subclass_info();
        $this->table_name    = student_affair_head_dd::$table_name;
        $this->tables        = student_affair_head_dd::$table_name;
        $this->readable_name = student_affair_head_dd::$readable_name;
        $this->get_report_fields();
    }
}
