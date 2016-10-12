<?php
require_once 'calendar_event_dd.php';
class calendar_event_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'CALENDAR_EVENT_REPORT_CUSTOM';
    var $report_title = 'Calendar Event: Custom Reporting Tool';
    var $html_subclass = 'calendar_event_html';
    var $data_subclass = 'calendar_event';
    var $result_page = 'reporter_result_calendar_event.php';
    var $cancel_page = 'listview_calendar_event.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_calendar_event.php';

    function __construct()
    {
        $this->fields        = calendar_event_dd::load_dictionary();
        $this->relations     = calendar_event_dd::load_relationships();
        $this->subclasses    = calendar_event_dd::load_subclass_info();
        $this->table_name    = calendar_event_dd::$table_name;
        $this->tables        = calendar_event_dd::$table_name;
        $this->readable_name = calendar_event_dd::$readable_name;
        $this->get_report_fields();
    }
}
