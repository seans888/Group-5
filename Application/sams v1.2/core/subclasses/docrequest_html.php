<?php
require_once 'docrequest_dd.php';
class docrequest_html extends html
{
    function __construct()
    {
        $this->fields        = docrequest_dd::load_dictionary();
        $this->relations     = docrequest_dd::load_relationships();
        $this->subclasses    = docrequest_dd::load_subclass_info();
        $this->table_name    = docrequest_dd::$table_name;
        $this->readable_name = docrequest_dd::$readable_name;
    }
}
