<?php
require_once 'sst_class.php';
require_once 'org_rep_dd.php';
class org_rep_sst extends sst
{
    function __construct()
    {
        $this->fields        = org_rep_dd::load_dictionary();
        $this->relations     = org_rep_dd::load_relationships();
        $this->subclasses    = org_rep_dd::load_subclass_info();
        $this->table_name    = org_rep_dd::$table_name;
        $this->readable_name = org_rep_dd::$readable_name;
        parent::__construct();
    }
}
