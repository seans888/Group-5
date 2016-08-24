<?php
require_once 'documentation_class.php';
require_once 'docrequirement_dd.php';
class docrequirement_doc extends documentation
{
    function __construct()
    {
        $this->fields        = docrequirement_dd::load_dictionary();
        $this->relations     = docrequirement_dd::load_relationships();
        $this->subclasses    = docrequirement_dd::load_subclass_info();
        $this->table_name    = docrequirement_dd::$table_name;
        $this->readable_name = docrequirement_dd::$readable_name;
        parent::__construct();
    }
}
