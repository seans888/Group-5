<?php
require_once 'docrequirement_dd.php';
class docrequirement_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'DOCREQUIREMENT_REPORT_CUSTOM';
    var $report_title = 'Docrequirement: Custom Reporting Tool';
    var $html_subclass = 'docrequirement_html';
    var $data_subclass = 'docrequirement';
    var $result_page = 'reporter_result_docrequirement.php';
    var $cancel_page = 'listview_docrequirement.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_docrequirement.php';

    function __construct()
    {
        $this->fields        = docrequirement_dd::load_dictionary();
        $this->relations     = docrequirement_dd::load_relationships();
        $this->subclasses    = docrequirement_dd::load_subclass_info();
        $this->table_name    = docrequirement_dd::$table_name;
        $this->tables        = docrequirement_dd::$table_name;
        $this->readable_name = docrequirement_dd::$readable_name;
        $this->get_report_fields();
    }
}
