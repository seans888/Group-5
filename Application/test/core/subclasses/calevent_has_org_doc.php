<?php
require_once 'documentation_class.php';
require_once 'calevent_has_org_dd.php';
class calevent_has_org_doc extends documentation
{
    function __construct()
    {
        $this->fields        = calevent_has_org_dd::load_dictionary();
        $this->relations     = calevent_has_org_dd::load_relationships();
        $this->subclasses    = calevent_has_org_dd::load_subclass_info();
        $this->table_name    = calevent_has_org_dd::$table_name;
        $this->readable_name = calevent_has_org_dd::$readable_name;
        parent::__construct();
    }
}
