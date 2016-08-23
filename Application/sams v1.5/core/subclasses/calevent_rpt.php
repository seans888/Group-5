<?php
require_once 'calevent_dd.php';
class calevent_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'CALEVENT_REPORT_CUSTOM';
    var $report_title = 'Calevent: Custom Reporting Tool';
    var $html_subclass = 'calevent_html';
    var $data_subclass = 'calevent';
    var $result_page = 'reporter_result_calevent.php';
    var $cancel_page = 'listview_calevent.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_calevent.php';

    function __construct()
    {
        $this->fields        = calevent_dd::load_dictionary();
        $this->relations     = calevent_dd::load_relationships();
        $this->subclasses    = calevent_dd::load_subclass_info();
        $this->table_name    = calevent_dd::$table_name;
        $this->tables        = calevent_dd::$table_name;
        $this->readable_name = calevent_dd::$readable_name;
        $this->get_report_fields();
    }
}
