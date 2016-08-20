<?php
require_once 'documentation_class.php';
require_once 'adviser_dd.php';
class adviser_doc extends documentation
{
    function __construct()
    {
        $this->fields        = adviser_dd::load_dictionary();
        $this->relations     = adviser_dd::load_relationships();
        $this->subclasses    = adviser_dd::load_subclass_info();
        $this->table_name    = adviser_dd::$table_name;
        $this->readable_name = adviser_dd::$readable_name;
        parent::__construct();
    }
}
