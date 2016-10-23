<?php
require_once 'documentation_class.php';
require_once 'org_position_dd.php';
class org_position_doc extends documentation
{
    function __construct()
    {
        $this->fields        = org_position_dd::load_dictionary();
        $this->relations     = org_position_dd::load_relationships();
        $this->subclasses    = org_position_dd::load_subclass_info();
        $this->table_name    = org_position_dd::$table_name;
        $this->readable_name = org_position_dd::$readable_name;
        parent::__construct();
    }
}
