<?php
require_once 'sao_dd.php';
class sao_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'SAO_REPORT_CUSTOM';
    var $report_title = 'Sao: Custom Reporting Tool';
    var $html_subclass = 'sao_html';
    var $data_subclass = 'sao';
    var $result_page = 'reporter_result_sao.php';
    var $cancel_page = 'listview_sao.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_sao.php';

    function __construct()
    {
        $this->fields        = sao_dd::load_dictionary();
        $this->relations     = sao_dd::load_relationships();
        $this->subclasses    = sao_dd::load_subclass_info();
        $this->table_name    = sao_dd::$table_name;
        $this->tables        = sao_dd::$table_name;
        $this->readable_name = sao_dd::$readable_name;
        $this->get_report_fields();
    }
}
