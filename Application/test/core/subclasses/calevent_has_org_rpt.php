<?php
require_once 'calevent_has_org_dd.php';
class calevent_has_org_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'CALEVENT_HAS_ORG_REPORT_CUSTOM';
    var $report_title = 'Calevent Has Org: Custom Reporting Tool';
    var $html_subclass = 'calevent_has_org_html';
    var $data_subclass = 'calevent_has_org';
    var $result_page = 'reporter_result_calevent_has_org.php';
    var $cancel_page = 'listview_calevent_has_org.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_calevent_has_org.php';

    function __construct()
    {
        $this->fields        = calevent_has_org_dd::load_dictionary();
        $this->relations     = calevent_has_org_dd::load_relationships();
        $this->subclasses    = calevent_has_org_dd::load_subclass_info();
        $this->table_name    = calevent_has_org_dd::$table_name;
        $this->tables        = calevent_has_org_dd::$table_name;
        $this->readable_name = calevent_has_org_dd::$readable_name;
        $this->get_report_fields();
    }
}
