<?php
require_once 'sst_class.php';
require_once 'organization_dd.php';
class organization_sst extends sst
{
    function __construct()
    {
        $this->fields        = organization_dd::load_dictionary();
        $this->relations     = organization_dd::load_relationships();
        $this->subclasses    = organization_dd::load_subclass_info();
        $this->table_name    = organization_dd::$table_name;
        $this->readable_name = organization_dd::$readable_name;
        parent::__construct();
    }
}
