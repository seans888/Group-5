<?php
require_once 'sst_class.php';
require_once 'migration_dd.php';
class migration_sst extends sst
{
    function __construct()
    {
        $this->fields        = migration_dd::load_dictionary();
        $this->relations     = migration_dd::load_relationships();
        $this->subclasses    = migration_dd::load_subclass_info();
        $this->table_name    = migration_dd::$table_name;
        $this->readable_name = migration_dd::$readable_name;
        parent::__construct();
    }
}
