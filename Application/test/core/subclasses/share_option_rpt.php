<?php
require_once 'share_option_dd.php';
class share_option_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'SHARE_OPTION_REPORT_CUSTOM';
    var $report_title = '%%: Custom Reporting Tool';
    var $html_subclass = 'share_option_html';
    var $data_subclass = 'share_option';
    var $result_page = 'reporter_result_share_option.php';
    var $cancel_page = 'listview_share_option.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_share_option.php';

    function __construct()
    {
        $this->fields        = share_option_dd::load_dictionary();
        $this->relations     = share_option_dd::load_relationships();
        $this->subclasses    = share_option_dd::load_subclass_info();
        $this->table_name    = share_option_dd::$table_name;
        $this->tables        = share_option_dd::$table_name;
        $this->readable_name = share_option_dd::$readable_name;
        $this->get_report_fields();
    }
}
