<?php
require_once 'student affair head_dd.php';
class student affair head_html extends html
{
    function __construct()
    {
        $this->fields        = student affair head_dd::load_dictionary();
        $this->relations     = student affair head_dd::load_relationships();
        $this->subclasses    = student affair head_dd::load_subclass_info();
        $this->table_name    = student affair head_dd::$table_name;
        $this->readable_name = student affair head_dd::$readable_name;
    }
}
