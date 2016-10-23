<?php
require_once 'sst_class.php';
require_once 'committee_dd.php';
class committee_sst extends sst
{
    function __construct()
    {
        $this->fields        = committee_dd::load_dictionary();
        $this->relations     = committee_dd::load_relationships();
        $this->subclasses    = committee_dd::load_subclass_info();
        $this->table_name    = committee_dd::$table_name;
        $this->readable_name = committee_dd::$readable_name;
        parent::__construct();
    }
}
