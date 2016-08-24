<?php
require_once 'docrequirement_dd.php';
class docrequirement_html extends html
{
    function __construct()
    {
        $this->fields        = docrequirement_dd::load_dictionary();
        $this->relations     = docrequirement_dd::load_relationships();
        $this->subclasses    = docrequirement_dd::load_subclass_info();
        $this->table_name    = docrequirement_dd::$table_name;
        $this->readable_name = docrequirement_dd::$readable_name;
    }
}
