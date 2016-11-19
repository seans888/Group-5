<?php
require_once 'organization_dd.php';
class organization_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'ORGANIZATION_REPORT_CUSTOM';
    var $report_title = '%%: Custom Reporting Tool';
    var $html_subclass = 'organization_html';
    var $data_subclass = 'organization';
    var $result_page = 'reporter_result_organization.php';
    var $cancel_page = 'listview_organization.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_organization.php';

    function __construct()
    {
        $this->fields        = organization_dd::load_dictionary();
        $this->relations     = organization_dd::load_relationships();
        $this->subclasses    = organization_dd::load_subclass_info();
        $this->table_name    = organization_dd::$table_name;
        $this->tables        = organization_dd::$table_name;
        $this->readable_name = organization_dd::$readable_name;
        $this->get_report_fields();
    }
}
