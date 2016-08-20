<?php
require_once 'org_dd.php';
class org_html extends html
{
    function __construct()
    {
        $this->fields        = org_dd::load_dictionary();
        $this->relations     = org_dd::load_relationships();
        $this->subclasses    = org_dd::load_subclass_info();
        $this->table_name    = org_dd::$table_name;
        $this->readable_name = org_dd::$readable_name;
    }
}
