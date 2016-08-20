<?php
require_once 'calevent_dd.php';
class calevent_html extends html
{
    function __construct()
    {
        $this->fields        = calevent_dd::load_dictionary();
        $this->relations     = calevent_dd::load_relationships();
        $this->subclasses    = calevent_dd::load_subclass_info();
        $this->table_name    = calevent_dd::$table_name;
        $this->readable_name = calevent_dd::$readable_name;
    }
}
