<?php
require_once 'documentation_class.php';
require_once 'sao_dd.php';
class sao_doc extends documentation
{
    function __construct()
    {
        $this->fields        = sao_dd::load_dictionary();
        $this->relations     = sao_dd::load_relationships();
        $this->subclasses    = sao_dd::load_subclass_info();
        $this->table_name    = sao_dd::$table_name;
        $this->readable_name = sao_dd::$readable_name;
        parent::__construct();
    }
}
