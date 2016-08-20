<?php
require_once 'migration_dd.php';
class migration_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'MIGRATION_REPORT_CUSTOM';
    var $report_title = 'Migration: Custom Reporting Tool';
    var $html_subclass = 'migration_html';
    var $data_subclass = 'migration';
    var $result_page = 'reporter_result_migration.php';
    var $cancel_page = 'listview_migration.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_migration.php';

    function __construct()
    {
        $this->fields        = migration_dd::load_dictionary();
        $this->relations     = migration_dd::load_relationships();
        $this->subclasses    = migration_dd::load_subclass_info();
        $this->table_name    = migration_dd::$table_name;
        $this->tables        = migration_dd::$table_name;
        $this->readable_name = migration_dd::$readable_name;
        $this->get_report_fields();
    }
}
