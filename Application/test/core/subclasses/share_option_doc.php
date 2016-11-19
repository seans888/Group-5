<?php
require_once 'documentation_class.php';
require_once 'share_option_dd.php';
class share_option_doc extends documentation
{
    function __construct()
    {
        $this->fields        = share_option_dd::load_dictionary();
        $this->relations     = share_option_dd::load_relationships();
        $this->subclasses    = share_option_dd::load_subclass_info();
        $this->table_name    = share_option_dd::$table_name;
        $this->readable_name = share_option_dd::$readable_name;
        parent::__construct();
    }
}
